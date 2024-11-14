// // import 'package:flutter/material.dart';
// // import 'package:flutter/widgets.dart';
// // import 'package:iconsax/iconsax.dart';
// // import 'package:recipeapp/models/login_register.dart';
// // import 'package:recipeapp/screens/chat.dart';
// // import 'package:recipeapp/services/auth_service.dart';
// // import 'package:recipeapp/services/chat_service.dart';

// // class AllUsers extends StatefulWidget {
// //   const AllUsers({super.key});

// //   @override
// //   State<AllUsers> createState() => _AllUsersState();
// // }

// // class _AllUsersState extends State<AllUsers> {
// //   final ChatService chatservice = ChatService();
// //   final AuthService auth = AuthService();
// //   void logOut() async {
// //     final _auth = AuthService();
// //     await _auth.logOut();
// //     //Navigator.push(
// //     // context, MaterialPageRoute(builder: (_) => LoginOrRegister()));
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       backgroundColor: Theme.of(context).colorScheme.surface,
// //       appBar: AppBar(
// //           backgroundColor:  Theme.of(context).colorScheme.surface,
// //           title: Text('All Users appear Here'),
// //           centerTitle: true,
// //           actions: [
// //             IconButton(onPressed: logOut, icon: Icon(Iconsax.logout4)),
// //           ]

// //           // leading: IconButton(
// //           //     onPressed: () => Navigator.pop(context),
// //           //     icon: Icon(Iconsax.back_square)),
// //           ),
// //       body: StreamBuilder(
// //           stream: chatservice.getTheUsers(),
// //           builder: (context, snapshot) {
// //             if (snapshot.connectionState == ConnectionState.waiting) {
// //               return Center(child: CircularProgressIndicator());
// //             }
// //             if (snapshot.hasError) {
// //               return Text('ela');
// //             }
// //             return ListView(
// //                 children: snapshot.data!.map((userInfo) {
// //               if (userInfo['email'] != auth.currentUser()!.email) {
// //                 return Padding(
// //                   padding: const EdgeInsets.all(8.0),
// //                   child: ListTile(
// //                     tileColor:  Theme.of(context).colorScheme.secondary,
// //                     leading: Icon(
// //                       Icons.person_4_outlined,
// //                       size: 30,
// //                     ),
// //                     title: Text(userInfo['email']),
// //                     onTap: () {
// //                       Navigator.push(context, MaterialPageRoute(
// //                         builder: (context) {
// //                           return ChatPage(
// //                               receiverID: userInfo["uid"],
// //                               receiverEmail: userInfo["email"]);
// //                         },
// //                       ));
// //                     },
// //                   ),
// //                 );
// //               }
// //               return Center(child: Text('Users appear here'));
// //             }).toList());
// //           }),
// //     );
// //   }
// // }
// import 'package:flutter/material.dart';
// import 'package:flutter_animate/flutter_animate.dart';
// import 'package:iconsax/iconsax.dart';
// import 'package:line_icons/line_icons.dart';
// import 'package:recipeapp/screens/chat.dart';
// import 'package:recipeapp/services/auth_service.dart';
// import 'package:recipeapp/services/chat_service.dart';

// class UsersScreen extends StatefulWidget {
//   const UsersScreen({super.key});

//   @override
//   State<UsersScreen> createState() => _UsersScreenState();
// }

// class _UsersScreenState extends State<UsersScreen> {
//   final ChatService _chatService = ChatService();
//   final AuthService _authService = AuthService();
//   final TextEditingController _searchController = TextEditingController();
//   String _searchQuery = '';

//   Future<void> _logOut() async {
//     showDialog(
//       context: context,
//       builder: (context) => AlertDialog(
//         title: const Text('Logout'),
//         content: const Text('Are you sure you want to logout?'),
//         actions: [
//           TextButton(
//             onPressed: () => Navigator.pop(context),
//             child: const Text('Cancel'),
//           ),
//           TextButton(
//             onPressed: () async {
//               await _authService.logOut();
//               if (mounted) Navigator.pop(context);
//             },
//             child: const Text('Logout'),
//           ),
//         ],
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     final theme = Theme.of(context);

//     return Scaffold(
//       backgroundColor: theme.colorScheme.background,
//       appBar: AppBar(
//         backgroundColor: theme.colorScheme.background,
//         elevation: 0,
//         title: Text(
//           'Community',
//           style: TextStyle(
//             color: theme.colorScheme.onBackground,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         centerTitle: true,
//         actions: [
//           IconButton(
//             onPressed: _logOut,
//             icon: const Icon(Iconsax.logout),
//             tooltip: 'Logout',
//           ),
//         ],
//       ),
//       body: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: TextField(
//               controller: _searchController,
//               decoration: InputDecoration(
//                 hintText: 'Search users...',
//                 prefixIcon: const Icon(Icons.search),
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(12),
//                   borderSide: BorderSide.none,
//                 ),
//                 filled: true,
//                 fillColor: theme.colorScheme.surface,
//               ),
//               onChanged: (value) => setState(() => _searchQuery = value),
//             ),
//           ).animate().fadeIn().slideY(),
//           Expanded(
//             child: StreamBuilder(
//               stream: _chatService.getTheUsers(),
//               builder: (context, snapshot) {
//                 if (snapshot.connectionState == ConnectionState.waiting) {
//                   return Center(
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         const CircularProgressIndicator(),
//                         const SizedBox(height: 16),
//                         Text(
//                           'Loading users...',
//                           style: theme.textTheme.bodyLarge,
//                         ),
//                       ],
//                     ),
//                   );
//                 }

//                 if (snapshot.hasError) {
//                   return Center(
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Icon(
//                           Icons.error_outline,
//                           size: 48,
//                           color: theme.colorScheme.error,
//                         ),
//                         const SizedBox(height: 16),
//                         Text(
//                           'Error loading users',
//                           style: theme.textTheme.titleLarge,
//                         ),
//                         TextButton(
//                           onPressed: () => setState(() {}),
//                           child: const Text('Retry'),
//                         ),
//                       ],
//                     ),
//                   );
//                 }

//                 final users = snapshot.data!
//                     .where((user) =>
//                         user['email'] != _authService.currentUser()?.email)
//                     .where((user) => user['email']
//                         .toString()
//                         .toLowerCase()
//                         .contains(_searchQuery.toLowerCase()))
//                     .toList();

//                 if (users.isEmpty) {
//                   return Center(
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Icon(
//                           LineIcons.userFriends,
//                           size: 48,
//                           color: theme.colorScheme.primary,
//                         ),
//                         const SizedBox(height: 16),
//                         Text(
//                           _searchQuery.isEmpty
//                               ? 'No users found'
//                               : 'No users match your search',
//                           style: theme.textTheme.titleLarge,
//                         ),
//                       ],
//                     ),
//                   );
//                 }

//                 return ListView.builder(
//                   padding: const EdgeInsets.all(8),
//                   itemCount: users.length,
//                   itemBuilder: (context, index) {
//                     final user = users[index];
//                     return Card(
//                       margin: const EdgeInsets.only(bottom: 8),
//                       child: ListTile(
// onTap: () {
//   Navigator.push(
//     context,
//     MaterialPageRoute(
//       builder: (context) => ChatPage(
//         receiverID: user['uid'],
//         receiverEmail: user['email'],
//       ),
//     ),
//   );
// },
//                         leading: CircleAvatar(
//                           backgroundColor:
//                               theme.colorScheme.primary.withOpacity(0.1),
//                           child: Text(
//                             user['email'].toString()[0].toUpperCase(),
//                             style: TextStyle(
//                               color: theme.colorScheme.primary,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ),
//                         title: Text(
//                           user['email'],
//                           style: const TextStyle(fontWeight: FontWeight.bold),
//                         ),
//                         subtitle: const Text('Tap to start chatting'),
//                         trailing: GestureDetector(
//                           onTap: () => showModalBottomSheet(
//                               context: context,
//                               builder: (context) {
//                                 return Text('');
//                               }),
//                           child: Icon(
//                             Icons.more_vert_outlined,
//                             color: theme.colorScheme.primary,
//                           ),
//                         ),
//                       ),
//                     ).animate().fadeIn().slideX();
//                   },
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   @override
//   void dispose() {
//     _searchController.dispose();
//     super.dispose();
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:recipeapp/services/auth_service.dart';

// class UserManagementScreen extends StatefulWidget {
//   const UserManagementScreen({Key? key}) : super(key: key);

//   @override
//   _UserManagementScreenState createState() => _UserManagementScreenState();
// }

// class _UserManagementScreenState extends State<UserManagementScreen> {
//   final TextEditingController _searchController = TextEditingController();
//   String _currentTab = 'all';
//   List<Map<String, dynamic>> _users = [];
//   bool _isLoading = true;
//   final AuthService _authService = AuthService();

//   @override
//   void initState() {
//     super.initState();
//     _loadUsers();
//   }

//   Future<void> _loadUsers() async {
//     setState(() => _isLoading = true);
//     try {
//       final currentUser = FirebaseAuth.instance.currentUser;
//       if (currentUser == null) return;

//       final querySnapshot = await FirebaseFirestore.instance.collection('Users').get();
//       setState(() {
//         _users = querySnapshot.docs
//             .where((doc) => doc.id != currentUser.uid)
//             .map((doc) => {'id': doc.id, ...doc.data() as Map<String, dynamic>})
//             .toList();
//         _isLoading = false;
//       });
//     } catch (e) {
//       print('Error loading users: $e');
//       setState(() => _isLoading = false);
//     }
//   }

//   List<Map<String, dynamic>> get _filteredUsers {
//     return _users.where((user) {
//       final email = user['email'].toString().toLowerCase();
//       final query = _searchController.text.toLowerCase();
//       final currentUserId = FirebaseAuth.instance.currentUser?.uid;

//       if (!email.contains(query)) return false;

//       switch (_currentTab) {
//         case 'following':
//           return user['followers']?.contains(currentUserId) ?? false;
//         case 'followers':
//           return user['following']?.contains(currentUserId) ?? false;
//         case 'blocked':
//           return user['blockedBy']?.contains(currentUserId) ?? false;
//         default:
//           return !(user['blockedBy']?.contains(currentUserId) ?? false);
//       }
//     }).toList();
//   }

//   Future<void> _handleBlock(String targetUserId) async {
//     final currentUserId = FirebaseAuth.instance.currentUser?.uid;
//     if (currentUserId == null) return;

//     try {
//       await FirebaseFirestore.instance.collection('Users').doc(currentUserId).update({
//         'blockedUsers': FieldValue.arrayUnion([targetUserId])
//       });
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(content: Text('User blocked successfully')),
//       );
//       _loadUsers();
//     } catch (e) {
//       print('Error blocking user: $e');
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(content: Text('Failed to block user')),
//       );
//     }
//   }

//   Future<void> _handleUnblock(String targetUserId) async {
//     final currentUserId = FirebaseAuth.instance.currentUser?.uid;
//     if (currentUserId == null) return;

//     try {
//       await FirebaseFirestore.instance.collection('Users').doc(currentUserId).update({
//         'blockedUsers': FieldValue.arrayRemove([targetUserId])
//       });
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(content: Text('User unblocked successfully')),
//       );
//       _loadUsers();
//     } catch (e) {
//       print('Error unblocking user: $e');
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(content: Text('Failed to unblock user')),
//       );
//     }
//   }

//   Future<void> _handleFollow(String targetUserId) async {
//     final currentUserId = FirebaseAuth.instance.currentUser?.uid;
//     if (currentUserId == null) return;

//     try {
//       await FirebaseFirestore.instance.collection('Users').doc(currentUserId).update({
//         'following': FieldValue.arrayUnion([targetUserId])
//       });
//       await FirebaseFirestore.instance.collection('Users').doc(targetUserId).update({
//         'followers': FieldValue.arrayUnion([currentUserId])
//       });
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(content: Text('User followed successfully')),
//       );
//       _loadUsers();
//     } catch (e) {
//       print('Error following user: $e');
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(content: Text('Failed to follow user')),
//       );
//     }
//   }

//   Future<void> _handleUnfollow(String targetUserId) async {
//     final currentUserId = FirebaseAuth.instance.currentUser?.uid;
//     if (currentUserId == null) return;

//     try {
//       await FirebaseFirestore.instance.collection('Users').doc(currentUserId).update({
//         'following': FieldValue.arrayRemove([targetUserId])
//       });
//       await FirebaseFirestore.instance.collection('Users').doc(targetUserId).update({
//         'followers': FieldValue.arrayRemove([currentUserId])
//       });
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(content: Text('User unfollowed successfully')),
//       );
//       _loadUsers();
//     } catch (e) {
//       print('Error unfollowing user: $e');
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(content: Text('Failed to unfollow user')),
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('User Management'),
//         actions: [
//           IconButton(
//             icon: const Icon(Icons.logout),
//             onPressed: () async {
//               await _authService.logOut();
//               Navigator.of(context).pushReplacementNamed('/login');
//             },
//           ),
//         ],
//       ),
//       body: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: TextField(
//               controller: _searchController,
//               decoration: const InputDecoration(
//                 hintText: 'Search users...',
//                 prefixIcon: Icon(Icons.search),
//               ),
//               onChanged: (value) => setState(() {}),
//             ),
//           ),
//           _buildTabs(),
//           Expanded(
//             child: _isLoading
//                 ? const Center(child: CircularProgressIndicator())
//                 : _filteredUsers.isEmpty
//                     ? const Center(child: Text('No users found'))
//                     : ListView.builder(
//                         itemCount: _filteredUsers.length,
//                         itemBuilder: (context, index) => _buildUserItem(_filteredUsers[index]),
//                       ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildTabs() {
//     return Row(
//       children: ['all', 'following', 'followers', 'blocked'].map((tab) {
//         return Expanded(
//           child: InkWell(
//             onTap: () => setState(() => _currentTab = tab),
//             child: Container(
//               padding: const EdgeInsets.symmetric(vertical: 8),
//               decoration: BoxDecoration(
//                 border: Border(
//                   bottom: BorderSide(
//                     color: _currentTab == tab ? Theme.of(context).primaryColor : Colors.transparent,
//                     width: 2,
//                   ),
//                 ),
//               ),
//               child: Text(
//                 tab.capitalize(),
//                 textAlign: TextAlign.center,
//                 style: TextStyle(
//                   fontWeight: _currentTab == tab ? FontWeight.bold : FontWeight.normal,
//                 ),
//               ),
//             ),
//           ),
//         );
//       }).toList(),
//     );
//   }

//   Widget _buildUserItem(Map<String, dynamic> user) {
//     final currentUserId = FirebaseAuth.instance.currentUser?.uid;
//     final isFollowing = user['followers']?.contains(currentUserId) ?? false;

//     return ListTile(
//       title: Text(user['email'] ?? 'No email'),
//       trailing: Row(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           if (_currentTab != 'blocked')
//             IconButton(
//               icon: const Icon(Icons.block),
//               onPressed: () => _handleBlock(user['id']),
//             ),
//           if (_currentTab == 'blocked')
//             IconButton(
//               icon: const Icon(Icons.check_circle_outline),
//               onPressed: () => _handleUnblock(user['id']),
//             ),
//           if (_currentTab != 'blocked')
//             IconButton(
//               icon: Icon(isFollowing ? Icons.person_remove : Icons.person_add),
//               onPressed: () => isFollowing ? _handleUnfollow(user['id']) : _handleFollow(user['id']),
//             ),
//         ],
//       ),
//     );
//   }

//   @override
//   void dispose() {
//     _searchController.dispose();
//     super.dispose();
//   }
// }

// extension StringExtension on String {
//   String capitalize() {
//     return "${this[0].toUpperCase()}${this.substring(1)}";
//   }
// }
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:recipeapp/screens/chat.dart';
import 'package:recipeapp/services/auth_service.dart';

class UserManagementScreen extends StatefulWidget {
  const UserManagementScreen({Key? key}) : super(key: key);

  @override
  _UserManagementScreenState createState() => _UserManagementScreenState();
}

class _UserManagementScreenState extends State<UserManagementScreen> {
  final TextEditingController _searchController = TextEditingController();
  String _currentTab = 'all';
  List<Map<String, dynamic>> _users = [];
  bool _isLoading = true;
  final AuthService _authService = AuthService();
  int _followingCount = 0;
  int _followerCount = 0;

  @override
  void initState() {
    super.initState();
    _loadUsers();
    _loadCounts();
  }

  Future<void> _loadUsers() async {
    setState(() => _isLoading = true);
    try {
      final currentUser = FirebaseAuth.instance.currentUser;
      if (currentUser == null) return;

      final querySnapshot =
          await FirebaseFirestore.instance.collection('Users').get();
      setState(() {
        _users = querySnapshot.docs
            .where((doc) => doc.id != currentUser.uid)
            .map((doc) => {'id': doc.id, ...doc.data() as Map<String, dynamic>})
            .toList();
        _isLoading = false;
      });
    } catch (e) {
      print('Error loading users: $e');
      setState(() => _isLoading = false);
    }
  }

  Future<void> _loadCounts() async {
    final currentUserId = FirebaseAuth.instance.currentUser?.uid;
    if (currentUserId == null) return;

    _followingCount = await getFollowingCount(currentUserId);
    _followerCount = await getFollowerCount(currentUserId);
    setState(() {});
  }

  Future<int> getFollowingCount(String userId) async {
    final userDoc =
        await FirebaseFirestore.instance.collection('Users').doc(userId).get();
    final List following = userDoc['following'] ?? [];
    return following.length;
  }

  Future<int> getFollowerCount(String userId) async {
    final userDoc =
        await FirebaseFirestore.instance.collection('Users').doc(userId).get();
    final List followers = userDoc['followers'] ?? [];
    return followers.length;
  }

  List<Map<String, dynamic>> get _filteredUsers {
    return _users.where((user) {
      final email = user['email'].toString().toLowerCase();
      final query = _searchController.text.toLowerCase();
      final currentUserId = FirebaseAuth.instance.currentUser?.uid;

      if (!email.contains(query)) return false;

      switch (_currentTab) {
        case 'following':
          return user['followers']?.contains(currentUserId) ?? false;
        case 'followers':
          return user['following']?.contains(currentUserId) ?? false;
        case 'blocked':
          return user['blockedBy']?.contains(currentUserId) ?? false;
        default:
          return !(user['blockedBy']?.contains(currentUserId) ?? false);
      }
    }).toList();
  }

  Future<void> _handleBlock(String targetUserId) async {
    final currentUserId = FirebaseAuth.instance.currentUser?.uid;
    if (currentUserId == null) return;

    try {
      await FirebaseFirestore.instance
          .collection('Users')
          .doc(currentUserId)
          .update({
        'blockedUsers': FieldValue.arrayUnion([targetUserId])
      });
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('User blocked successfully')),
      );
      _loadUsers();
    } catch (e) {
      print('Error blocking user: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Failed to block user')),
      );
    }
  }

  Future<void> _handleUnblock(String targetUserId) async {
    final currentUserId = FirebaseAuth.instance.currentUser?.uid;
    if (currentUserId == null) return;

    try {
      await FirebaseFirestore.instance
          .collection('Users')
          .doc(currentUserId)
          .update({
        'blockedUsers': FieldValue.arrayRemove([targetUserId])
      });
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('User unblocked successfully')),
      );
      _loadUsers();
    } catch (e) {
      print('Error unblocking user: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Failed to unblock user')),
      );
    }
  }

  Future<void> _handleFollow(String targetUserId) async {
    final currentUserId = FirebaseAuth.instance.currentUser?.uid;
    if (currentUserId == null) return;

    try {
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
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('User followed successfully')),
      );
      _loadUsers();
      _loadCounts();
    } catch (e) {
      print('Error following user: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Failed to follow user')),
      );
    }
  }

  Future<void> _handleUnfollow(String targetUserId) async {
    final currentUserId = FirebaseAuth.instance.currentUser?.uid;
    if (currentUserId == null) return;

    try {
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
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('User unfollowed successfully')),
      );
      _loadUsers();
      _loadCounts();
    } catch (e) {
      print('Error unfollowing user: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Failed to unfollow user')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Management'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () async {
              await _authService.logOut();
              Navigator.of(context).pushReplacementNamed('/login');
            },
          ),
        ],
      ),
      body: Column(
        children: [
          _buildUserCounts(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _searchController,
              decoration: const InputDecoration(
                hintText: 'Search users...',
                prefixIcon: Icon(Icons.search),
              ),
              onChanged: (value) => setState(() {}),
            ),
          ),
          _buildTabs(),
          Expanded(
            child: _isLoading
                ? const Center(child: CircularProgressIndicator())
                : _filteredUsers.isEmpty
                    ? const Center(child: Text('No users found'))
                    : ListView.builder(
                        itemCount: _filteredUsers.length,
                        itemBuilder: (context, index) =>
                            _buildUserItem(_filteredUsers[index]),
                      ),
          ),
        ],
      ),
    );
  }

  Widget _buildUserCounts() {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildCountItem('Following', _followingCount),
          _buildCountItem('Followers', _followerCount),
        ],
      ),
    );
  }

  Widget _buildCountItem(String label, int count) {
    return Column(
      children: [
        Text(
          count.toString(),
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        Text(label, style: const TextStyle(fontSize: 16)),
      ],
    );
  }

  Widget _buildTabs() {
    return Row(
      children: ['all', 'following', 'followers', 'blocked'].map((tab) {
        return Expanded(
          child: InkWell(
            onTap: () => setState(() => _currentTab = tab),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 8),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: _currentTab == tab
                        ? Theme.of(context).primaryColor
                        : Colors.transparent,
                    width: 2,
                  ),
                ),
              ),
              child: Text(
                tab.capitalize(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight:
                      _currentTab == tab ? FontWeight.bold : FontWeight.normal,
                ),
              ),
            ),
          ),
        );
      }).toList(),
    );
  }

  Widget _buildUserItem(Map<String, dynamic> user) {
    final currentUserId = FirebaseAuth.instance.currentUser?.uid;
    final isFollowing = user['followers']?.contains(currentUserId) ?? false;

    return ListTile(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ChatPage(
              receiverID: user['uid'],
              receiverEmail: user['email'],
            ),
          ),
        );
      },
      title: Text(user['email'] ?? 'No email'),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (_currentTab != 'blocked')
            IconButton(
              icon: const Icon(Icons.block),
              onPressed: () => _handleBlock(user['id']),
            ),
          if (_currentTab == 'blocked')
            IconButton(
              icon: const Icon(Icons.check_circle_outline),
              onPressed: () => _handleUnblock(user['id']),
            ),
          if (_currentTab != 'blocked')
            IconButton(
              icon: Icon(isFollowing ? Icons.person_remove : Icons.person_add),
              onPressed: () => isFollowing
                  ? _handleUnfollow(user['id'])
                  : _handleFollow(user['id']),
            ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }
}

extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${this.substring(1)}";
  }
}
