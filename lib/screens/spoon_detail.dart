// import 'package:flutter/material.dart';
// import 'package:flutter_animate/flutter_animate.dart';
// import 'package:iconsax/iconsax.dart';
// import 'package:recipeapp/reusables/future_spoonacular.dart';

// class RecipeDetailScreen extends StatefulWidget {
//   final Recipes recipe;

//    RecipeDetailScreen({Key? key, required this.recipe}) : super(key: key);

//   @override
//   _RecipeDetailScreenState createState() => _RecipeDetailScreenState();
// }

// class _RecipeDetailScreenState extends State<RecipeDetailScreen> with SingleTickerProviderStateMixin {
//   late TabController _tabController;
//   bool _isFavorite = false;

//   @override
//   void initState() {
//     super.initState();
//     _tabController = TabController(length: 2, vsync: this);
//   }

//   @override
//   void dispose() {
//     _tabController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: CustomScrollView(
//         slivers: [
//           _buildSliverAppBar(),
//           SliverToBoxAdapter(
//             child: Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   _buildRecipeInfo(),
//                   const SizedBox(height: 16),
//                   _buildTabBar(),
//                 ],
//               ),
//             ),
//           ),
//           SliverFillRemaining(
//             child: TabBarView(
//               controller: _tabController,
//               children: [
//                 _buildIngredientsTab(),
//                 _buildInstructionsTab(),
//               ],
//             ),
//           ),
//         ],
//       ),
//       floatingActionButton: _buildFloatingActionButton(),
//     );
//   }

//   Widget _buildSliverAppBar() {
//     return SliverAppBar(
//       expandedHeight: 300,
//       pinned: true,
//       flexibleSpace: FlexibleSpaceBar(
//         title: Text(
//           widget.recipe.title,
//           style: const TextStyle(
//             color: Colors.white,
//             fontWeight: FontWeight.bold,
//             shadows: [Shadow(color: Colors.black45, blurRadius: 10)],
//           ),
//         ),
//         background: Hero(
//           tag: 'recipe_image_${widget.recipe.id}',
//           child: Image.network(
//             widget.recipe.image,
//             fit: BoxFit.cover,
//           ),
//         ),
//       ),
//       actions: [
//         IconButton(
//           icon: Icon(_isFavorite ? Icons.favorite : Icons.favorite_border),
//           onPressed: () {
//             setState(() {
//               _isFavorite = !_isFavorite;
//             });
//             ScaffoldMessenger.of(context).showSnackBar(
//               SnackBar(
//                 content: Text(_isFavorite ? 'Added to favorites' : 'Removed from favorites'),
//                 duration: const Duration(seconds: 1),
//               ),
//             );
//           },
//         ),
//       ],
//     ).animate().fadeIn().slideY(begin: 0.1, end: 0, curve: Curves.easeOutQuad, duration: const Duration(milliseconds: 500));
//   }

// Widget _buildRecipeInfo() {
//   return Column(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: [
//       Text(
//         widget.recipe.title,
//         style: Theme.of(context).textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.bold),
//       ).animate().fadeIn().slideX(),
//       const SizedBox(height: 8),
//       Wrap(
//         spacing: 16,
//         runSpacing: 8,
//         children: [
//           _buildInfoChip(Iconsax.timer_1, '${widget.recipe.readyInMinutes} min'),
//           _buildInfoChip(Iconsax.people, '${widget.recipe.servings} servings'),
//           _buildInfoChip(Iconsax.star1, '${widget.recipe.spoonacularScore?.toStringAsFixed(1) ?? 'N/A'}'),
//         ],
//       ).animate().fadeIn().slideY(),
//       const SizedBox(height: 16),
//       Wrap(
//         spacing: 8,
//         runSpacing: 8,
//         children: [
//           ...(widget.recipe.dishTypes ?? []).map((type) => Chip(label: Text(type))),
//           ...(widget.recipe.cuisines ?? []).map((cuisine) => Chip(label: Text(cuisine))),
//           ...(widget.recipe.diets ?? []).map((diet) => Chip(label: Text(diet))),
//         ],
//       ).animate().fadeIn().slideY(delay: const Duration(milliseconds: 200)),
//     ],
//   );
// }

//   Widget _buildInfoChip(IconData icon, String label) {
//     return Chip(
//       avatar: Icon(icon, size: 16),
//       label: Text(label),
//       backgroundColor: Theme.of(context).colorScheme.surfaceVariant,
//     );
//   }

//   Widget _buildTabBar() {
//     return TabBar(
//       controller: _tabController,
//       tabs: const [
//         Tab(text: 'Ingredients'),
//         Tab(text: 'Instructions'),
//       ],
//     );
//   }

//   Widget _buildIngredientsTab() {
//     return ListView.builder(
//       padding: const EdgeInsets.all(16),
//       itemCount: widget.recipe.extendedIngredients?.length ?? 0,
//       itemBuilder: (context, index) {
//         final ingredient = widget.recipe.extendedIngredients![index];
//         return Card(
//           child: ListTile(
//             leading: const CircleAvatar(child: Icon(Iconsax.box_1)),
//             title: Text(ingredient.name),
//             subtitle: Text(ingredient.original),
//             trailing: Text('${ingredient.amount} ${ingredient.unit}'),
//           ),
//         ).animate().fadeIn().slideX(delay: Duration(milliseconds: 50 * index));
//       },
//     );
//   }

//   Widget _buildInstructionsTab() {
//     return ListView.builder(
//       padding: const EdgeInsets.all(16),
//       itemCount: widget.recipe.analyzedInstructions?.length ?? 0,
//       itemBuilder: (context, index) {
//         final instruction = widget.recipe.analyzedInstructions![index];
//         return Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             if (instruction.name.isNotEmpty) Text(instruction.name, style: Theme.of(context).textTheme.titleLarge),
//             const SizedBox(height: 8),
//             ...instruction.steps.map((step) => _buildStepCard(step)),
//           ],
//         ).animate().fadeIn().slideY(delay: Duration(milliseconds: 100 * index));
//       },
//     );
//   }

//   Widget _buildStepCard(Steps step) {
//     return Card(
//       margin: const EdgeInsets.only(bottom: 16),
//       child: Padding(
//         padding: const EdgeInsets.all(16),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text('Step ${step.number}', style: Theme.of(context).textTheme.titleMedium),
//             const SizedBox(height: 8),
//             Text(step.step),
//             if (step.ingredients.isNotEmpty) ...[
//               const SizedBox(height: 8),
//               Wrap(
//                 spacing: 8,
//                 children: step.ingredients.map((ingredient) => Chip(
//                   label: Text(ingredient.name),
//                   avatar: const CircleAvatar(child: Icon(Iconsax.box_1, size: 16)),
//                 )).toList(),
//               ),
//             ],
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildFloatingActionButton() {
//     return FloatingActionButton.extended(
//       onPressed: () {
//         // TODO: Implement cooking mode
//         ScaffoldMessenger.of(context).showSnackBar(
//           const SnackBar(content: Text('Cooking mode coming soon!')),
//         );
//       },
//       icon: const Icon(Icons.fastfood_sharp),
//       label: const Text('Start Cooking'),
//     ).animate().scale(delay: const Duration(milliseconds: 500));
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:flutter_animate/flutter_animate.dart';
// import 'package:iconsax/iconsax.dart';
// import 'package:recipeapp/reusables/future_spoonacular.dart';

// class RecipeDetailScreen extends StatefulWidget {
//   final Recipes recipe;

//   RecipeDetailScreen({Key? key, required this.recipe}) : super(key: key);

//   @override
//   _RecipeDetailScreenState createState() => _RecipeDetailScreenState();
// }

// class _RecipeDetailScreenState extends State<RecipeDetailScreen>
//     with SingleTickerProviderStateMixin {
//   late TabController _tabController;
//   bool _isFavorite = false;
//   late ScrollController _scrollController;

//   @override
//   void initState() {
//     super.initState();
//     _tabController = TabController(length: 2, vsync: this);
//     _scrollController = ScrollController();
//   }

//   @override
//   void dispose() {
//     _tabController.dispose();
//     _scrollController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: NestedScrollView(
//         controller: _scrollController,
//         headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
//           return <Widget>[
//             _buildSliverAppBar(),
//           ];
//         },
//         body: Column(
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   _buildRecipeInfo(),
//                   const SizedBox(height: 16),
//                   _buildTabBar(),
//                 ],
//               ),
//             ),
//             Expanded(
//               child: TabBarView(
//                 controller: _tabController,
//                 children: [
//                   _buildIngredientsTab(),
//                   _buildInstructionsTab(),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: _buildFloatingActionButton(),
//     );
//   }

//   Widget _buildSliverAppBar() {
//     return SliverAppBar(
//       expandedHeight: 300,
//       pinned: true,
//       flexibleSpace: FlexibleSpaceBar(
//         title: Text(
//           widget.recipe.title,
//           style: const TextStyle(
//             color: Colors.white,
//             fontWeight: FontWeight.bold,
//             shadows: [Shadow(color: Colors.black45, blurRadius: 10)],
//           ),
//         ),
//         background: Hero(
//           tag: 'recipe_image_${widget.recipe.id}',
//           child: Image.network(
//             widget.recipe.image,
//             fit: BoxFit.cover,
//           ),
//         ),
//       ),
//       actions: [
//         IconButton(
//           icon: Icon(_isFavorite ? Icons.favorite : Icons.favorite_border),
//           onPressed: () {
//             setState(() {
//               _isFavorite = !_isFavorite;
//             });
//             ScaffoldMessenger.of(context).showSnackBar(
//               SnackBar(
//                 content: Text(_isFavorite
//                     ? 'Added to favorites'
//                     : 'Removed from favorites'),
//                 duration: const Duration(seconds: 1),
//               ),
//             );
//           },
//         ),
//       ],
//     ).animate().fadeIn().slideY(
//         begin: 0.1,
//         end: 0,
//         curve: Curves.easeOutQuad,
//         duration: const Duration(milliseconds: 500));
//   }

//   Widget _buildRecipeInfo() {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           widget.recipe.title,
//           style: Theme.of(context)
//               .textTheme
//               .headlineMedium
//               ?.copyWith(fontWeight: FontWeight.bold),
//         ).animate().fadeIn().slideX(),
//         const SizedBox(height: 8),
//         Wrap(
//           spacing: 16,
//           runSpacing: 8,
//           children: [
//             _buildInfoChip(
//                 Iconsax.timer_1, '${widget.recipe.readyInMinutes} min'),
//             _buildInfoChip(
//                 Iconsax.people, '${widget.recipe.servings} servings'),
//             _buildInfoChip(Iconsax.star1,
//                 '${widget.recipe.spoonacularScore?.toStringAsFixed(1) ?? 'N/A'}'),
//           ],
//         ).animate().fadeIn().slideY(),
//         const SizedBox(height: 16),
//         Wrap(
//           spacing: 8,
//           runSpacing: 8,
//           children: [
//             ...(widget.recipe.dishTypes ?? [])
//                 .map((type) => Chip(label: Text(type))),
//             ...(widget.recipe.cuisines ?? [])
//                 .map((cuisine) => Chip(label: Text(cuisine))),
//             ...(widget.recipe.diets ?? [])
//                 .map((diet) => Chip(label: Text(diet))),
//           ],
//         ).animate().fadeIn().slideY(delay: const Duration(milliseconds: 200)),
//       ],
//     );
//   }

// Widget _buildInfoChip(IconData icon, String label) {
//   return Chip(
//     avatar: Icon(icon, size: 16),
//     label: Text(label),
//     backgroundColor: Theme.of(context).colorScheme.surfaceVariant,
//   );
// }

//   Widget _buildTabBar() {
//     return TabBar(
//       controller: _tabController,
//       tabs: const [
//         Tab(text: 'Ingredients'),
//         Tab(text: 'Instructions'),
//       ],
//     );
//   }

// Widget _buildIngredientsTab() {
//   return ListView.builder(
//     padding: const EdgeInsets.all(16),
//     itemCount: widget.recipe.extendedIngredients?.length ?? 0,
//     itemBuilder: (context, index) {
//       final ingredient = widget.recipe.extendedIngredients![index];
//       return Card(
//         child: ListTile(
//           leading: const CircleAvatar(child: Icon(Iconsax.box_1)),
//           title: Text(ingredient.name),
//           subtitle: Text(ingredient.original),
//           trailing: Text('${ingredient.amount} ${ingredient.unit}'),
//         ),
//       ).animate().fadeIn().slideX(delay: Duration(milliseconds: 50 * index));
//     },
//   );
// }

// Widget _buildInstructionsTab() {
//   return ListView.builder(
//     padding: const EdgeInsets.all(16),
//     itemCount: widget.recipe.analyzedInstructions?.length ?? 0,
//     itemBuilder: (context, index) {
//       final instruction = widget.recipe.analyzedInstructions![index];
//       return Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           if (instruction.name.isNotEmpty)
//             Text(instruction.name,
//                 style: Theme.of(context).textTheme.titleLarge),
//           const SizedBox(height: 8),
//           ...instruction.steps.map((step) => _buildStepCard(step)),
//         ],
//       ).animate().fadeIn().slideY(delay: Duration(milliseconds: 100 * index));
//     },
//   );
// }

// Widget _buildStepCard(Steps step) {
//   return Card(
//     margin: const EdgeInsets.only(bottom: 16),
//     child: Padding(
//       padding: const EdgeInsets.all(16),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text('Step ${step.number}',
//               style: Theme.of(context).textTheme.titleMedium),
//           const SizedBox(height: 8),
//           Text(step.step),
//           if (step.ingredients.isNotEmpty) ...[
//             const SizedBox(height: 8),
//             Wrap(
//               spacing: 8,
//               children: step.ingredients
//                   .map((ingredient) => Chip(
//                         label: Text(ingredient.name),
//                         avatar: const CircleAvatar(
//                             child: Icon(Iconsax.box_1, size: 16)),
//                       ))
//                   .toList(),
//             ),
//           ],
//         ],
//       ),
//     ),
//   );
// }

// Widget _buildFloatingActionButton() {
//   return FloatingActionButton.extended(
//     onPressed: () {
//       // TODO: Implement cooking mode
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(content: Text('Cooking mode coming soon!')),
//       );
//     },
//     icon: const Icon(Icons.fastfood_sharp),
//     label: const Text('Start Cooking'),
//   ).animate().scale(delay: const Duration(milliseconds: 500));
// }
// }
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:iconsax/iconsax.dart';
import 'package:recipeapp/reusables/future_spoonacular.dart';

class RecipeDetailScreen extends StatefulWidget {
  final Recipes recipe;

  RecipeDetailScreen({Key? key, required this.recipe}) : super(key: key);

  @override
  _RecipeDetailScreenState createState() => _RecipeDetailScreenState();
}

class _RecipeDetailScreenState extends State<RecipeDetailScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  bool _isFavorite = false;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            _buildAppBar(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildRecipeInfo(),
                          const SizedBox(height: 16),
                          TabBar(
                            controller: _tabController,
                            tabs: const [
                              Tab(text: 'Ingredients'),
                              Tab(text: 'Instructions'),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.6,
                      child: TabBarView(
                        controller: _tabController,
                        children: [
                          _buildIngredientsTab(),
                          _buildInstructionsTab(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: _buildFloatingActionButton(),
    );
  }

  Widget _buildInfoChip(IconData icon, String label) {
    return Chip(
      avatar: Icon(icon, size: 16),
      label: Text(label),
      backgroundColor: Theme.of(context).colorScheme.surfaceVariant,
    );
  }

  Widget _buildStepCard(Steps step) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Step ${step.number}',
                style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 8),
            Text(step.step),
            if (step.ingredients.isNotEmpty) ...[
              const SizedBox(height: 8),
              Wrap(
                spacing: 8,
                children: step.ingredients
                    .map((ingredient) => Chip(
                          label: Text(ingredient.name),
                          avatar: const CircleAvatar(
                              child: Icon(Iconsax.box_1, size: 16)),
                        ))
                    .toList(),
              ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildInstructionsTab() {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: widget.recipe.analyzedInstructions?.length ?? 0,
      itemBuilder: (context, index) {
        final instruction = widget.recipe.analyzedInstructions![index];
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (instruction.name.isNotEmpty)
              Text(instruction.name,
                  style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 8),
            ...instruction.steps.map((step) => _buildStepCard(step)),
          ],
        ).animate().fadeIn().slideY(delay: Duration(milliseconds: 100 * index));
      },
    );
  }

  Widget _buildAppBar() {
    return Container(
      height: 300,
      child: Stack(
        children: [
          Hero(
            tag: 'recipe_image_${widget.recipe.id}',
            child: Image.network(
              widget.recipe.image,
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).padding.top,
            left: 0,
            right: 0,
            child: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              title: Text(
                widget.recipe.title,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  shadows: [Shadow(color: Colors.black45, blurRadius: 10)],
                ),
              ),
              actions: [
                IconButton(
                  icon: Icon(
                    _isFavorite ? Icons.favorite : Icons.favorite_border,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    setState(() {
                      _isFavorite = !_isFavorite;
                    });
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(_isFavorite
                            ? 'Added to favorites'
                            : 'Removed from favorites'),
                        duration: const Duration(seconds: 1),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    ).animate().fadeIn().slideY(
        begin: 0.1,
        end: 0,
        curve: Curves.easeOutQuad,
        duration: const Duration(milliseconds: 500));
  }

  Widget _buildFloatingActionButton() {
    return FloatingActionButton.extended(
      onPressed: () {
        // TODO: Implement cooking mode
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Cooking mode coming soon!')),
        );
      },
      icon: const Icon(Icons.fastfood_sharp),
      label: const Text('Start Cooking'),
    ).animate().scale(delay: const Duration(milliseconds: 500));
  }

  Widget _buildIngredientsTab() {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: widget.recipe.extendedIngredients?.length ?? 0,
      itemBuilder: (context, index) {
        final ingredient = widget.recipe.extendedIngredients![index];
        return Card(
          child: ListTile(
            leading: const CircleAvatar(child: Icon(Iconsax.box_1)),
            title: Text(ingredient.name),
            subtitle: Text(ingredient.original),
            trailing: Text('${ingredient.amount} ${ingredient.unit}'),
          ),
        ).animate().fadeIn().slideX(delay: Duration(milliseconds: 50 * index));
      },
    );
  }

  Widget _buildRecipeInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.recipe.title,
          style: Theme.of(context)
              .textTheme
              .headlineMedium
              ?.copyWith(fontWeight: FontWeight.bold),
        ).animate().fadeIn().slideX(),
        const SizedBox(height: 8),
        Wrap(
          spacing: 16,
          runSpacing: 8,
          children: [
            _buildInfoChip(
                Iconsax.timer_1, '${widget.recipe.readyInMinutes} min'),
            _buildInfoChip(
                Iconsax.people, '${widget.recipe.servings} servings'),
            _buildInfoChip(Iconsax.star1,
                '${widget.recipe.spoonacularScore?.toStringAsFixed(1) ?? 'N/A'}'),
          ],
        ).animate().fadeIn().slideY(),
        const SizedBox(height: 16),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: [
            ...(widget.recipe.dishTypes ?? [])
                .map((type) => Chip(label: Text(type))),
            ...(widget.recipe.cuisines ?? [])
                .map((cuisine) => Chip(label: Text(cuisine))),
            ...(widget.recipe.diets ?? [])
                .map((diet) => Chip(label: Text(diet))),
          ],
        ).animate().fadeIn().slideY(delay: const Duration(milliseconds: 200)),
      ],
    );
  }

  // Rest of the widget methods remain the same
  // _buildRecipeInfo(), _buildInfoChip(), _buildIngredientsTab(),
  // _buildInstructionsTab(), _buildStepCard(), and _buildFloatingActionButton()
  // Keep their implementations exactly as they were in the previous code
}
