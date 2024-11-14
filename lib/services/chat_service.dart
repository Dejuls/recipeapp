import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:recipeapp/models/message.dart';

class ChatService {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  FirebaseAuth auth = FirebaseAuth.instance;
  Stream<List<Map<String, dynamic>>> getTheUsers() {
    return firestore.collection("Users").snapshots().map((snapshot) {
      return snapshot.docs.map((doc) {
        final user = doc.data();
        return user;
      }).toList();
    });
  }

  Future<void> sendMessage(String receiverID, String message) async {
    //get curent user
    final String currentuserID = auth.currentUser!.uid;
    final String currentUserEmail = auth.currentUser!.email!;
    final Timestamp timestamp = Timestamp.now();
    //create new Message,
    Message newMessage = Message(
        senderid: currentuserID,
        senderEmail: currentUserEmail,
        receiverID: receiverID,
        message: message,
        timestamp: timestamp);
    //create room id
    List<String> uIDs = [currentuserID, receiverID];
    uIDs.sort();
    String chatID = uIDs.join('-');
    //save message
    await firestore
        .collection("chat_rooms")
        .doc(chatID)
        .collection("message")
        .add(newMessage.mapNow());
  }
  //get messages

  Stream<QuerySnapshot> getMessages(String sendID, String recieveID) {
    List<String> uIDs = [sendID, recieveID];
    uIDs.sort();
    String chatID = uIDs.join('-');
    return firestore
        .collection("chat_rooms")
        .doc(chatID)
        .collection("message")
        .orderBy("timestamp", descending: false)
        .snapshots();
  }

  Future<void> blockUser(String currentUserId, String targetUserId) async {
    // Check if the user is not already blocked
    final userDoc = await FirebaseFirestore.instance
        .collection('Users')
        .doc(currentUserId)
        .get();
    if (!userDoc['blockedUsers'].contains(targetUserId)) {
      await FirebaseFirestore.instance
          .collection('Users')
          .doc(currentUserId)
          .update({
        'blockedUsers': FieldValue.arrayUnion([targetUserId])
      });
    }
  }

  Future<void> unblockUser(String currentUserId, String targetUserId) async {
    await FirebaseFirestore.instance
        .collection('Users')
        .doc(currentUserId)
        .update({
      'blockedUsers': FieldValue.arrayRemove([targetUserId])
    });
  }

  Future<void> followUser(String currentUserId, String targetUserId) async {
    await FirebaseFirestore.instance
        .collection('Users')
        .doc(currentUserId)
        .update({
      'following': FieldValue.arrayUnion([targetUserId])
    });
    await FirebaseFirestore.instance
        .collection('Users')
        .doc(targetUserId)
        .update({
      'followers': FieldValue.arrayUnion([currentUserId])
    });
  }

  Future<void> unfollowUser(String currentUserId, String targetUserId) async {
    await FirebaseFirestore.instance
        .collection('Users')
        .doc(currentUserId)
        .update({
      'following': FieldValue.arrayRemove([targetUserId])
    });
    await FirebaseFirestore.instance
        .collection('Users')
        .doc(targetUserId)
        .update({
      'followers': FieldValue.arrayRemove([currentUserId])
    });
  }

  Future<void> reportMessage(String messageId, String reporterId) async {
    await FirebaseFirestore.instance.collection('reportedMessages').add({
      'messageId': messageId,
      'reportedBy': reporterId,
      'timestamp': FieldValue.serverTimestamp(),
    });
  }

  Future<void> deleteMessage(String messageId, String userId) async {
    final messageDoc = await FirebaseFirestore.instance
        .collection('messages')
        .doc(messageId)
        .get();
    if (messageDoc['userId'] == userId) {
      // Ensure only the owner can delete
      await FirebaseFirestore.instance
          .collection('messages')
          .doc(messageId)
          .delete();
    } else {
      throw Exception("You cannot delete another user's message.");
    }
  }

  Future<List<Map<String, dynamic>>> getAllUsers(String currentUserId) async {
    final currentUserDoc = await FirebaseFirestore.instance
        .collection('Users')
        .doc(currentUserId)
        .get();
    final blockedUsers = List<String>.from(currentUserDoc['blockedUsers']);

    final usersQuery =
        await FirebaseFirestore.instance.collection('Users').get();
    final users = usersQuery.docs
        .where((doc) => !blockedUsers.contains(doc.id)) // Exclude blocked users
        .map((doc) => doc.data())
        .toList();

    return users;
  }
}
