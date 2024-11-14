// import 'package:flutter/material.dart';
// import 'package:flutter_animate/flutter_animate.dart';

// class CookingTipsScreen2 extends StatelessWidget {
//   const CookingTipsScreen2({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: CustomScrollView(
//         slivers: [
//           _buildAppBar(context),
//           SliverToBoxAdapter(
//             child: Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   const Text(
//                     "Master the art of cooking with helpful tips. From prepping to plating, we've got pro advice for you",
//                     style: TextStyle(
//                       fontSize: 18,
//                       color: Colors.blueGrey,
//                       height: 1.5,
//                     ),
//                   ).animate().fadeIn().slideX(),
//                   const SizedBox(height: 24),
//                   _buildTipCategories(),
//                 ],
//               ),
//             ),
//           ),
//           SliverList(
//             delegate: SliverChildListDelegate([
//               _buildTipSection(
//                 'Preparation',
//                 [
//                   TipItem(
//                     icon: Icons.menu_book,
//                     title: 'Read First',
//                     description: 'Always read the recipe fully before starting to cook.',
//                     color: Colors.blue,
//                   ),
//                   TipItem(
//                     icon: Icons.scale,
//                     title: 'Mise en Place',
//                     description: 'Measure and prepare all ingredients before starting.',
//                     color: Colors.green,
//                   ),
//                 ],
//               ),
//               _buildTipSection(
//                 'Cooking Techniques',
//                 [
//                   TipItem(
//                     icon: Icons.whatshot,
//                     title: 'Preheat',
//                     description: 'Preheat your oven before baking to ensure even cooking.',
//                     color: Colors.orange,
//                   ),
//                   TipItem(
//                     icon: Icons.restaurant,
//                     title: 'Don\'t Overcrowd',
//                     description: 'Give food space in the pan for even cooking and browning.',
//                     color: Colors.purple,
//                   ),
//                 ],
//               ),
//               _buildTipSection(
//                 'Ingredients',
//                 [
//                   TipItem(
//                     icon: Icons.eco,
//                     title: 'Fresh Herbs',
//                     description: 'Use fresh herbs for better flavor. Add delicate herbs at the end of cooking.',
//                     color: Colors.teal,
//                   ),
//                   TipItem(
//                     icon: Icons.ac_unit,
//                     title: 'Room Temperature',
//                     description: 'Bring ingredients like eggs and butter to room temperature for better results.',
//                     color: Colors.indigo,
//                   ),
//                 ],
//               ),
//             ]),
//           ),
//           const SliverPadding(padding: EdgeInsets.only(bottom: 32)),
//         ],
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           // Add functionality to add custom tips
//         },
//         backgroundColor: Colors.amber,
//         child: const Icon(Icons.add),
//       ),
//     );
//   }

//   Widget _buildAppBar(BuildContext context) {
//     return SliverAppBar(
//       expandedHeight: 120,
//       pinned: true,
//       flexibleSpace: FlexibleSpaceBar(
//         title: const Text(
//           'Cooking Tips',
//           style: TextStyle(color: Colors.black87),
//         ),
//         background: Container(
//           decoration: BoxDecoration(
//             gradient: LinearGradient(
//               begin: Alignment.topRight,
//               end: Alignment.bottomLeft,
//               colors: [
//                 Colors.amber.shade200,
//                 Colors.amber.shade100,
//               ],
//             ),
//           ),
//         ),
//       ),
//       leading: IconButton(
//         icon: const Icon(Icons.arrow_back, color: Colors.black87),
//         onPressed: () => Navigator.pop(context),
//       ),
//       actions: [
//         IconButton(
//           icon: const Icon(Icons.lightbulb_outline, color: Colors.amber),
//           onPressed: () {
//             // Add functionality for tips of the day
//           },
//         ),
//       ],
//     );
//   }

//   Widget _buildTipCategories() {
//     return SingleChildScrollView(
//       scrollDirection: Axis.horizontal,
//       child: Row(
//         children: [
//           _buildCategoryChip('All Tips', true),
//           _buildCategoryChip('Basics', false),
//           _buildCategoryChip('Advanced', false),
//           _buildCategoryChip('Pro Tips', false),
//         ],
//       ),
//     ).animate().fadeIn().slideX();
//   }

//   Widget _buildCategoryChip(String label, bool isSelected) {
//     return Container(
//       margin: const EdgeInsets.only(right: 8),
//       child: FilterChip(
//         selected: isSelected,
//         label: Text(label),
//         onSelected: (bool selected) {
//           // Add filter functionality
//         },
//         selectedColor: Colors.amber,
//         checkmarkColor: Colors.white,
//       ),
//     );
//   }

//   Widget _buildTipSection(String title, List<TipItem> tips) {
//     return Padding(
//       padding: const EdgeInsets.all(16.0),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             title,
//             style: const TextStyle(
//               fontSize: 20,
//               fontWeight: FontWeight.bold,
//               color: Colors.black87,
//             ),
//           ).animate().fadeIn().slideX(),
//           const SizedBox(height: 16),
//           ...tips.map((tip) => _buildTipCard(tip)).toList(),
//         ],
//       ),
//     );
//   }

//   Widget _buildTipCard(TipItem tip) {
//     return Card(
//       margin: const EdgeInsets.only(bottom: 16),
//       elevation: 2,
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
//       child: InkWell(
//         borderRadius: BorderRadius.circular(16),
//         onTap: () {
//           // Add functionality to show detailed tip
//         },
//         child: Padding(
//           padding: const EdgeInsets.all(16),
//           child: Row(
//             children: [
//               Container(
//                 padding: const EdgeInsets.all(12),
//                 decoration: BoxDecoration(
//                   color: tip.color.withOpacity(0.1),
//                   borderRadius: BorderRadius.circular(12),
//                 ),
//                 child: Icon(tip.icon, color: tip.color),
//               ),
//               const SizedBox(width: 16),
//               Expanded(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       tip.title,
//                       style: const TextStyle(
//                         fontSize: 16,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     const SizedBox(height: 4),
//                     Text(
//                       tip.description,
//                       style: TextStyle(
//                         fontSize: 14,
//                         color: Colors.grey[600],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               Icon(
//                 Icons.chevron_right,
//                 color: Colors.grey[400],
//               ),
//             ],
//           ),
//         ),
//       ),
//     ).animate().fadeIn().slideX();
//   }
// }

// class TipItem {
//   final IconData icon;
//   final String title;
//   final String description;
//   final Color color;

//   TipItem({
//     required this.icon,
//     required this.title,
//     required this.description,
//     required this.color,
//   });
// }
