// import 'dart:typed_data';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:recipeapp/database/database_provider.dart';
// import 'package:recipeapp/models/user_profile.dart';
// import 'package:recipeapp/reusables/reusable_alert.dart';
// import 'package:recipeapp/services/auth_service.dart';

// class UserDetails extends StatefulWidget {
//   final String uid;
//   const UserDetails({Key? key, required this.uid}) : super(key: key);

//   @override
//   State<UserDetails> createState() => _UserDetailsState();
// }

// class _UserDetailsState extends State<UserDetails> {
//   late final DatabaseProvider dbvider;
//   UserProfile? user;
//   String userid = '';
//   bool isLoading = true;
//   final ImagePicker _picker = ImagePicker();
//   List<String> values = ['idea', 'cuisines', 'faves', 'culinaryXp'];

//   @override
//   void initState() {
//     super.initState();
//     dbvider = Provider.of<DatabaseProvider>(context, listen: false);
//     userid = AuthService().currentUser()?.uid ?? '';
//     loadData();
//   }

//   TextEditingController idea = TextEditingController();
//   TextEditingController cuisines = TextEditingController();
//   TextEditingController culinaryXp = TextEditingController();
//   TextEditingController faves = TextEditingController();
//   Future<void> loadData() async {
//     try {
//       final loadedUser = await dbvider.userProfile(widget.uid);
//       setState(() {
//         user = loadedUser;
//         isLoading = false;
//       });
//     } catch (e) {
//       print('Error loading user data: $e');
//       setState(() {
//         isLoading = false;
//       });
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Failed to load user data. Please try again.')),
//       );
//     }
//   }

//   Future<void> _pickImage() async {
//     try {
//       final XFile? pickedFile = await _picker.pickImage(
//         source: ImageSource.gallery,
//         maxWidth: 1024,
//         maxHeight: 1024,
//         imageQuality: 85,
//       );

//       if (pickedFile != null) {
//         final Uint8List imageBytes = await pickedFile.readAsBytes();
//         final String downloadUrl =
//             await dbvider.uploadProfileImage(userid, imageBytes);

//         setState(() {
//           if (user != null) {
//             user!.profileImgUrl = downloadUrl;
//           }
//         });

//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(
//             content: Text('Profile image updated successfully!'),
//             behavior: SnackBarBehavior.floating,
//           ),
//         );
//       }
//     } catch (e) {
//       print('Error picking image: $e');
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(
//           content: Text('Failed to update profile image. Please try again.'),
//           backgroundColor: Theme.of(context).colorScheme.error,
//           behavior: SnackBarBehavior.floating,
//         ),
//       );
//     }
//   }

//   Widget _buildProfileHeader() {
//     return Stack(
//       children: [
//         Container(
//           height: 250,
//           decoration: BoxDecoration(
//             gradient: LinearGradient(
//               begin: Alignment.topLeft,
//               end: Alignment.bottomRight,
//               colors: [
//                 Theme.of(context).colorScheme.primary,
//                 Theme.of(context).colorScheme.scrim,
//                 Theme.of(context).colorScheme.secondary,
//                 // Colors.amber, Colors.black
//               ],
//             ),
//           ),
//         ),
//         Positioned(
//           top: 3,
//           bottom: -50,
//           left: 0,
//           right: 0,
//           child: GestureDetector(
//             onTap: _pickImage,
//             child: Center(
//               child: Stack(
//                 children: [
//                   Container(
//                     height: 100,
//                     width: 100,
//                     decoration: BoxDecoration(
//                       shape: BoxShape.circle,
//                       color: Colors.grey[300],
//                       border: Border.all(
//                         color: Theme.of(context).colorScheme.secondary,
//                         width: 4,
//                       ),
//                       image: user?.profileImgUrl != null
//                           ? DecorationImage(
//                               image: NetworkImage(user!.profileImgUrl!),
//                               fit: BoxFit.cover,
//                             )
//                           : null,
//                     ),
//                     child: user?.profileImgUrl == null
//                         ? Icon(Icons.person,
//                             size: 40,
//                             color: Theme.of(context).colorScheme.primary)
//                         : null,
//                   ),
//                   Positioned(
//                     bottom: 0,
//                     top: 60,
//                     right: 0,
//                     child: Container(
//                       padding: EdgeInsets.all(4),
//                       decoration: BoxDecoration(
//                         color: Theme.of(context).colorScheme.secondary,
//                         shape: BoxShape.circle,
//                       ),
//                       child: Icon(
//                         Icons.camera_alt,
//                         size: 26,
//                         color: Colors.grey[600],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }

//   Widget _buildInfoContainer(String title, String? content, IconData icon,
//       int value, TextEditingController controller) {
//     return Container(
//       margin: EdgeInsets.only(bottom: 16),
//       decoration: BoxDecoration(
//         color: Theme.of(context).colorScheme.secondary,
//         borderRadius: BorderRadius.circular(12),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black.withOpacity(0.05),
//             blurRadius: 10,
//             offset: Offset(0, 2),
//           ),
//         ],
//       ),
//       child: Material(
//         color: Colors.transparent,
//         child: InkWell(
//           borderRadius: BorderRadius.circular(12),
//           onTap: () => showDialog(
//             context: context,
//             builder: (context) => ReusableAlert(
//               controller: controller,
//               proceed: () async {
//                 await dbvider.updateField(values[value], controller.text);
//                 await loadData();
//                 Navigator.pop(context);
//                 controller.clear();
//               },
//               actionWord: 'Update',
//               hintText: 'Enter your $title',
//               title: title,
//             ),
//           ),
//           child: Padding(
//             padding: EdgeInsets.all(16),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Row(
//                   children: [
//                     Icon(icon,
//                         size: 20, color: Theme.of(context).colorScheme.primary),
//                     SizedBox(width: 8),
//                     Text(
//                       title,
//                       style: TextStyle(
//                         fontWeight: FontWeight.bold,
//                         color: Theme.of(context).colorScheme.primary,
//                       ),
//                     ),
//                     Spacer(),
//                     Icon(
//                       Icons.edit_outlined,
//                       size: 16,
//                       color: Theme.of(context)
//                           .colorScheme
//                           .primary
//                           .withOpacity(0.5),
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 8),
//                 Text(
//                   content ?? 'No information available',
//                   style: Theme.of(context).textTheme.bodyLarge,
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Theme.of(context).colorScheme.surface,
//       body: isLoading
//           ? Center(child: CircularProgressIndicator())
//           : user == null
//               ? Center(child: Text('User not found'))
//               : CustomScrollView(
//                   slivers: [
//                     SliverAppBar(
//                       expandedHeight: 200,
//                       pinned: true,
//                       flexibleSpace: FlexibleSpaceBar(
//                         background: _buildProfileHeader(),
//                       ),
//                     ),
//                     SliverToBoxAdapter(
//                       child: Padding(
//                         padding: EdgeInsets.fromLTRB(16, 60, 16, 16),
//                         child: Column(
//                           children: [
//                             Text(
//                               '@${user?.name ?? 'Unknown'}',
//                               style: Theme.of(context)
//                                   .textTheme
//                                   .headlineSmall
//                                   ?.copyWith(
//                                     fontWeight: FontWeight.bold,
//                                   ),
//                             ),
//                             SizedBox(height: 4),
//                             Text(
//                               user?.email ?? '',
//                               style: Theme.of(context)
//                                   .textTheme
//                                   .bodyMedium
//                                   ?.copyWith(
//                                     color: Theme.of(context)
//                                         .colorScheme
//                                         .onBackground
//                                         .withOpacity(0.7),
//                                   ),
//                             ),
//                             SizedBox(height: 24),
//                             _buildInfoContainer('Cooking Philosophy',
//                                 user?.idea, Icons.lightbulb_outline, 0, idea),
//                             _buildInfoContainer(
//                                 'Favorite Cuisines',
//                                 user?.cuisines,
//                                 Icons.restaurant_menu,
//                                 1,
//                                 faves),
//                             _buildInfoContainer('Signature Dishes', user?.faves,
//                                 Icons.star_outline, 2, culinaryXp),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//     );
//   }

//   @override
//   void dispose() {
//     idea.dispose();
//     cuisines.dispose();
//     culinaryXp.dispose();
//     faves.dispose();
//     super.dispose();
//   }
// }
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:image_picker/image_picker.dart';
import 'package:recipeapp/database/database_provider.dart';
import 'package:recipeapp/models/user_profile.dart';
import 'package:recipeapp/reusables/reusable_alert.dart';
import 'package:recipeapp/services/auth_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UserDetails extends StatefulWidget {
  final String uid;
  const UserDetails({Key? key, required this.uid}) : super(key: key);

  @override
  State<UserDetails> createState() => _UserDetailsState();
}

class _UserDetailsState extends State<UserDetails> {
  late final DatabaseProvider dbvider;
  UserProfile? user;
  String userid = '';
  bool isLoading = true;
  final ImagePicker _picker = ImagePicker();
  List<String> values = ['idea', 'cuisines', 'faves', 'culinaryXp'];
  int followerCount = 0;
  bool isFollowing = false;

  @override
  void initState() {
    super.initState();
    dbvider = Provider.of<DatabaseProvider>(context, listen: false);
    userid = AuthService().currentUser()?.uid ?? '';
    loadData();
    checkFollowStatus();
    getFollowerCount();
  }

  TextEditingController idea = TextEditingController();
  TextEditingController cuisines = TextEditingController();
  TextEditingController culinaryXp = TextEditingController();
  TextEditingController faves = TextEditingController();

  Future<void> loadData() async {
    try {
      final loadedUser = await dbvider.userProfile(widget.uid);
      setState(() {
        user = loadedUser;
        isLoading = false;
      });
    } catch (e) {
      print('Error loading user data: $e');
      setState(() {
        isLoading = false;
      });
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to load user data. Please try again.')),
      );
    }
  }

  Future<void> _pickImage() async {
    try {
      final XFile? pickedFile = await _picker.pickImage(
        source: ImageSource.gallery,
        maxWidth: 1024,
        maxHeight: 1024,
        imageQuality: 85,
      );

      if (pickedFile != null) {
        final Uint8List imageBytes = await pickedFile.readAsBytes();
        final String downloadUrl =
            await dbvider.uploadProfileImage(userid, imageBytes);

        setState(() {
          if (user != null) {
            user!.profileImgUrl = downloadUrl;
          }
        });

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Profile image updated successfully!'),
            behavior: SnackBarBehavior.floating,
          ),
        );
      }
    } catch (e) {
      print('Error picking image: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Failed to update profile image. Please try again.'),
          backgroundColor: Theme.of(context).colorScheme.error,
          behavior: SnackBarBehavior.floating,
        ),
      );
    }
  }

  Future<void> checkFollowStatus() async {
    final currentUser = AuthService().currentUser();
    if (currentUser != null) {
      final userDoc = await FirebaseFirestore.instance
          .collection('Users')
          .doc(currentUser.uid)
          .get();
      final following = userDoc['following'] as List<dynamic>? ?? [];
      setState(() {
        isFollowing = following.contains(widget.uid);
      });
    }
  }

  Future<void> getFollowerCount() async {
    final userDoc = await FirebaseFirestore.instance
        .collection('Users')
        .doc(widget.uid)
        .get();
    final followers = userDoc['followers'] as List<dynamic>? ?? [];
    setState(() {
      followerCount = followers.length;
    });
  }

  Future<void> followUser() async {
    final currentUser = AuthService().currentUser();
    if (currentUser != null) {
      await FirebaseFirestore.instance
          .collection('Users')
          .doc(currentUser.uid)
          .update({
        'following': FieldValue.arrayUnion([widget.uid])
      });
      await FirebaseFirestore.instance
          .collection('Users')
          .doc(widget.uid)
          .update({
        'followers': FieldValue.arrayUnion([currentUser.uid])
      });
      setState(() {
        isFollowing = true;
        followerCount++;
      });
    }
  }

  Future<void> unfollowUser() async {
    final currentUser = AuthService().currentUser();
    if (currentUser != null) {
      await FirebaseFirestore.instance
          .collection('Users')
          .doc(currentUser.uid)
          .update({
        'following': FieldValue.arrayRemove([widget.uid])
      });
      await FirebaseFirestore.instance
          .collection('Users')
          .doc(widget.uid)
          .update({
        'followers': FieldValue.arrayRemove([currentUser.uid])
      });
      setState(() {
        isFollowing = false;
        followerCount--;
      });
    }
  }

  Widget _buildProfileHeader() {
    return Stack(
      children: [
        Container(
          height: 250,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Theme.of(context).colorScheme.primary,
                Theme.of(context).colorScheme.scrim,
                Theme.of(context).colorScheme.secondary,
              ],
            ),
          ),
        ),
        Positioned(
          top: 3,
          bottom: -50,
          left: 0,
          right: 0,
          child: GestureDetector(
            onTap: _pickImage,
            child: Center(
              child: Stack(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey[300],
                      border: Border.all(
                        color: Theme.of(context).colorScheme.secondary,
                        width: 4,
                      ),
                      image: user?.profileImgUrl != null
                          ? DecorationImage(
                              image: NetworkImage(user!.profileImgUrl!),
                              fit: BoxFit.cover,
                            )
                          : null,
                    ),
                    child: user?.profileImgUrl == null
                        ? Icon(Icons.person,
                            size: 40,
                            color: Theme.of(context).colorScheme.primary)
                        : null,
                  ),
                  Positioned(
                    bottom: 0,
                    top: 60,
                    right: 0,
                    child: Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.secondary,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.camera_alt,
                        size: 26,
                        color: Colors.grey[600],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildFollowSection() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '$followerCount Followers',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(width: 16),
          ElevatedButton(
            onPressed: isFollowing ? unfollowUser : followUser,
            child: Text(isFollowing ? 'Unfollow' : 'Follow'),
            style: ElevatedButton.styleFrom(
              backgroundColor: isFollowing
                  ? Colors.grey
                  : Theme.of(context).colorScheme.primary,
              //onPrimary: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoContainer(String title, String? content, IconData icon,
      int value, TextEditingController controller) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(12),
          onTap: () => showDialog(
            context: context,
            builder: (context) => ReusableAlert(
              controller: controller,
              proceed: () async {
                await dbvider.updateField(values[value], controller.text);
                await loadData();
                Navigator.pop(context);
                controller.clear();
              },
              actionWord: 'Update',
              hintText: 'Enter your $title',
              title: title,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(icon,
                        size: 20, color: Theme.of(context).colorScheme.primary),
                    SizedBox(width: 8),
                    Text(
                      title,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.edit_outlined,
                      size: 16,
                      color: Theme.of(context)
                          .colorScheme
                          .primary
                          .withOpacity(0.5),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Text(
                  content ?? 'No information available',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: isLoading
          ? Center(child: CircularProgressIndicator())
          : user == null
              ? Center(child: Text('User not found'))
              : CustomScrollView(
                  slivers: [
                    SliverAppBar(
                      expandedHeight: 200,
                      pinned: true,
                      flexibleSpace: FlexibleSpaceBar(
                        background: _buildProfileHeader(),
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(16, 60, 16, 16),
                        child: Column(
                          children: [
                            Text(
                              '@${user?.name ?? 'Unknown'}',
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineSmall
                                  ?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              user?.email ?? '',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onBackground
                                        .withOpacity(0.7),
                                  ),
                            ),
                            SizedBox(height: 16),
                            _buildFollowSection(),
                            SizedBox(height: 24),
                            _buildInfoContainer('Cooking Philosophy',
                                user?.idea, Icons.lightbulb_outline, 0, idea),
                            _buildInfoContainer(
                                'Favorite Cuisines',
                                user?.cuisines,
                                Icons.restaurant_menu,
                                1,
                                faves),
                            _buildInfoContainer('Signature Dishes', user?.faves,
                                Icons.star_outline, 2, culinaryXp),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
    );
  }

  @override
  void dispose() {
    idea.dispose();
    cuisines.dispose();
    culinaryXp.dispose();
    faves.dispose();
    super.dispose();
  }
}
