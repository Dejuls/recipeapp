import 'package:cloud_firestore/cloud_firestore.dart';

class Message {
  final String senderid;
  final String senderEmail;
  final String receiverID;
  final String message;
  final Timestamp timestamp;
  Message(
      {required this.senderid,
      required this.senderEmail,
      required this.receiverID,
      required this.message,
      required this.timestamp});
  Map<String, dynamic> mapNow() {
    return {
      'senderid': senderid,
      'senderEmail': senderEmail,
      'receiverID': receiverID,
      'message': message,
      'timestamp': timestamp
    };
  }
}
