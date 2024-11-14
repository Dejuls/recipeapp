// import 'package:flutter/material.dart';
// import 'package:iconsax/iconsax.dart';
// import 'package:recipeapp/reusables/my_textfield.dart';
// import 'package:recipeapp/services/auth_service.dart';
// import 'package:recipeapp/services/chat_service.dart';

// class MyChatPage extends StatefulWidget {
//   final String receiverID;
//   final String receiverEmail;
//   const MyChatPage(
//       {super.key, required this.receiverID, required this.receiverEmail});

//   @override
//   State<MyChatPage> createState() => _MyChatPageState();
// }

// class _MyChatPageState extends State<MyChatPage> {
//   final TextEditingController messageController = TextEditingController();
//   final ChatService chat = ChatService();
//   final AuthService auth = AuthService();
//   void sendMessage() async {
//     if (messageController.text.isNotEmpty) {
//       await chat.sendMessage(widget.receiverID, messageController.text);
//       messageController.clear();
//     }
//   }

//   void logOut() {
//     final _auth = AuthService();
//     _auth.logOut();
//   }

//   @override
//   Widget build(BuildContext context) {
//     String sendID = auth.currentUser()!.uid;
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.receiverEmail),
//         elevation: 0,
//       ),
//       backgroundColor: Theme.of(context).colorScheme.surface,
//       body: Column(
//         children: [
//           Expanded(
//             child: StreamBuilder(
//               stream: chat.getMessages(sendID, widget.receiverID),
//               builder: (context, snapshot) {
//                 if (snapshot.hasError) {
//                   return Center(child: Text('Error: ${snapshot.error}'));
//                 }
//                 if (snapshot.connectionState == ConnectionState.waiting) {
//                   return Center(child: CircularProgressIndicator());
//                 }
//                 if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
//                   return Center(child: Text('No messages found.'));
//                 }
//                 return ListView(
//                   children: snapshot.data!.docs.map((doc) {
//                     Map<String, dynamic> data =
//                         doc.data() as Map<String, dynamic>;
//                     bool isCurrentUser =
//                         data['senderid'] == auth.currentUser()!.uid;
//                     return Column(
//                       crossAxisAlignment: isCurrentUser
//                           ? CrossAxisAlignment.end
//                           : CrossAxisAlignment.start,
//                       children: [
//                         Container(
//                           padding: EdgeInsets.all(20),
//                           margin: EdgeInsets.all(15),
//                           decoration: BoxDecoration(
//                               color: isCurrentUser
//                                   ? Theme.of(context).colorScheme.tertiary
//                                   : Theme.of(context).colorScheme.secondary,
//                               borderRadius: BorderRadius.circular(20)),
//                           child: Text(
//                             data["message"],
//                             style: TextStyle(color: Colors.black, fontSize: 19),
//                           ),
//                         ),
//                       ],
//                     );
//                   }).toList(),
//                 );
//               },
//             ),

//           ),
//           Padding(
//             padding: const EdgeInsets.only(bottom: 30),
//             child: Row(
//               children: [
//                 SizedBox(
//                   height: 60,
//                   width: 370,
//                   child: MyTextfield(
//                       hintText: '\t\tEnter message......',
//                       controller: messageController,
//                       obscureText: false,
//                       keyboardType: TextInputType.text),
//                 ),
//                 Container(
//                   margin: EdgeInsets.only(right: 6),
//                   decoration: BoxDecoration(
//                       shape: BoxShape.circle,
//                       color: Theme.of(context).colorScheme.secondary),
//                   child: IconButton(
//                       onPressed: sendMessage,
//                       icon: Icon(Icons.send, size: 30)),
//                 )
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iconsax/iconsax.dart';
import 'package:intl/intl.dart';
import 'package:recipeapp/services/auth_service.dart';
import 'package:recipeapp/services/chat_service.dart';

class ChatPage extends StatefulWidget {
  final String receiverID;
  final String receiverEmail;

  const ChatPage(
      {Key? key, required this.receiverID, required this.receiverEmail})
      : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final TextEditingController messageController = TextEditingController();
  final ChatService chat = ChatService();
  final AuthService auth = AuthService();
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    messageController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  Future<void> sendMessage() async {
    if (messageController.text.isNotEmpty) {
      await chat.sendMessage(widget.receiverID, messageController.text);
      messageController.clear();
      _scrollToBottom();
    }
  }

  void _scrollToBottom() {
    if (_scrollController.hasClients) {
      _scrollController.animateTo(
        _scrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
    }
  }

  String _formatTimestamp(DateTime timestamp) {
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final messageDate =
        DateTime(timestamp.year, timestamp.month, timestamp.day);

    if (messageDate == today) {
      return DateFormat.jm().format(timestamp);
    } else if (messageDate == today.subtract(const Duration(days: 1))) {
      return 'Yesterday';
    } else {
      return DateFormat.MMMd().format(timestamp);
    }
  }

  @override
  Widget build(BuildContext context) {
    final sendID = auth.currentUser()!.uid;
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        leading: IconButton(
          icon: const Icon(Iconsax.arrow_left),
          onPressed: () => Navigator.pop(context),
        ),
        title: Row(
        
          children: [
            CircleAvatar(
              backgroundColor: theme.colorScheme.primary,
              child: Text(
                widget.receiverEmail[0].toUpperCase(),
                style: const TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.receiverEmail,
                    style: theme.textTheme.titleMedium,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    'Online',
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: theme.colorScheme.surface,
          image: DecorationImage(
            image: AssetImage('assets/chat_bg.png'),
            opacity: 0.1,
            repeat: ImageRepeat.repeat,
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: StreamBuilder(
                stream: chat.getMessages(sendID, widget.receiverID),
                builder: (context, snapshot) {
                  if (snapshot.hasError) {
                    return Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Iconsax.warning_2,
                            size: 48,
                            color: theme.colorScheme.error,
                          ),
                          const SizedBox(height: 16),
                          Text(
                            'Error loading messages',
                            style: theme.textTheme.titleMedium,
                          ),
                          TextButton(
                            onPressed: () => setState(() {}),
                            child: const Text('Retry'),
                          ),
                        ],
                      ),
                    );
                  }

                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(child: CircularProgressIndicator());
                  }

                  if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
                    return Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Iconsax.message,
                            size: 48,
                            color: theme.colorScheme.primary.withOpacity(0.5),
                          ),
                          const SizedBox(height: 16),
                          Text(
                            'No messages yet',
                            style: theme.textTheme.titleMedium,
                          ),
                          Text(
                            'Start the conversation!',
                            style: theme.textTheme.bodyMedium?.copyWith(
                              color:
                                  theme.colorScheme.onSurface.withOpacity(0.6),
                            ),
                          ),
                        ],
                      ),
                    );
                  }

                  return ListView.builder(
                    controller: _scrollController,
                    padding: const EdgeInsets.all(16),
                    itemCount: snapshot.data!.docs.length,
                    itemBuilder: (context, index) {
                      final data = snapshot.data!.docs[index].data()
                          as Map<String, dynamic>;
                      final isCurrentUser =
                          data['senderid'] == auth.currentUser()!.uid;
                      final timestamp = (data['timestamp'] as dynamic).toDate();

                      return Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: Row(
                          mainAxisAlignment: isCurrentUser
                              ? MainAxisAlignment.end
                              : MainAxisAlignment.start,
                          children: [
                            if (!isCurrentUser) ...[
                              CircleAvatar(
                                radius: 16,
                                backgroundColor: theme.colorScheme.primary,
                                child: Text(
                                  widget.receiverEmail[0].toUpperCase(),
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 8),
                            ],
                            Flexible(
                              child: Container(
                                constraints: BoxConstraints(
                                  maxWidth: size.width * 0.75,
                                ),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                  vertical: 10,
                                ),
                                decoration: BoxDecoration(
                                  color: isCurrentUser
                                      ? theme.colorScheme.primary
                                      : theme.colorScheme.surface,
                                  borderRadius:
                                      BorderRadius.circular(20).copyWith(
                                    bottomLeft:
                                        isCurrentUser ? null : Radius.zero,
                                    bottomRight:
                                        isCurrentUser ? Radius.zero : null,
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.05),
                                      blurRadius: 10,
                                      offset: const Offset(0, 5),
                                    ),
                                  ],
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      data['message'],
                                      style:
                                          theme.textTheme.bodyLarge?.copyWith(
                                        color: isCurrentUser
                                            ? Colors.white
                                            : theme.colorScheme.onSurface,
                                      ),
                                    ),
                                    const SizedBox(height: 4),
                                    Text(
                                      _formatTimestamp(timestamp),
                                      style:
                                          theme.textTheme.bodySmall?.copyWith(
                                        color: isCurrentUser
                                            ? Colors.white.withOpacity(0.7)
                                            : theme.colorScheme.onSurface
                                                .withOpacity(0.6),
                                        fontSize: 10,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            if (isCurrentUser) ...[
                              const SizedBox(width: 4),
                              Icon(
                                Iconsax.tick_circle,
                                size: 16,
                                color: theme.colorScheme.primary,
                              ),
                            ],
                          ],
                        ),
                      );
                    },
                  );
                },
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(
                16,
                8,
                16,
                8 + MediaQuery.of(context).padding.bottom,
              ),
              decoration: BoxDecoration(
                color: theme.colorScheme.surface,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 10,
                    offset: const Offset(0, -5),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: theme.colorScheme.surface,
                        borderRadius: BorderRadius.circular(24),
                        border: Border.all(
                          color: theme.colorScheme.outline.withOpacity(0.2),
                        ),
                      ),
                      child: Row(
                        children: [
                          IconButton(
                            icon: const Icon(Iconsax.emoji_happy),
                            onPressed: () {},
                            color: theme.colorScheme.onSurface.withOpacity(0.6),
                          ),
                          Expanded(
                            child: TextField(
                              controller: messageController,
                              inputFormatters: [
                                FilteringTextInputFormatter.allow(RegExp(
                                    r'[\u0000-\uFFFF]')), // Allows all Unicode characters, including emojis
                              ],
                              decoration: InputDecoration(
                                hintText: 'Type a message...',
                                border: InputBorder.none,
                                hintStyle: TextStyle(
                                  color: theme.colorScheme.onSurface
                                      .withOpacity(0.6),
                                ),
                              ),
                              maxLines: null,
                            ),
                          ),
                          IconButton(
                            icon: const Icon(Iconsax.camera),
                            onPressed: () {},
                            color: theme.colorScheme.onSurface.withOpacity(0.6),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Container(
                    decoration: BoxDecoration(
                      color: theme.colorScheme.primary,
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      onPressed: sendMessage,
                      icon: const Icon(Iconsax.send_1),
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
