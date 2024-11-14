import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'package:recipeapp/models/nutri_info.dart';
import 'package:recipeapp/themes/theme_provider.dart';

class CookingTipsScreen extends StatefulWidget {
  const CookingTipsScreen({Key? key}) : super(key: key);

  @override
  _CookingTipsScreenState createState() => _CookingTipsScreenState();
}

class _CookingTipsScreenState extends State<CookingTipsScreen> {
  String _selectedCategory = 'All Tips';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: CustomScrollView(
        slivers: [
          _buildAppBar(context),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Master the art of cooking with helpful tips. From prepping to plating, we've got pro advice for you",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.blueGrey,
                      height: 1.5,
                    ),
                  ).animate().fadeIn().slideX(),
                  const SizedBox(height: 24),
                  _buildTipCategories(),
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              _buildTipSection('Basic Tips', cookingTips.sublist(0, 10)),
              _buildTipSection('Advanced Tips', cookingTips.sublist(10, 20)),
              _buildTipSection('Pro Tips', cookingTips.sublist(20)),
            ]),
          ),
          const SliverPadding(padding: EdgeInsets.only(bottom: 32)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add functionality to add custom tips
        },
        backgroundColor: Theme.of(context).colorScheme.tertiary,
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _buildAppBar(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 120,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        title: const Text(
          'Cooking Tips',
          style: TextStyle(color: Colors.black87),
        ),
        background: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.amber.shade200,
                Colors.amber.shade100,
              ],
            ),
          ),
        ),
      ),
      leading: IconButton(
        icon: const Icon(Icons.arrow_back, color: Colors.black87),
        onPressed: () => Navigator.pop(context),
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.lightbulb_outline,
              color: Theme.of(context).colorScheme.tertiary),
          onPressed: () {
            // Add functionality for tips of the day
          },
        ),
        IconButton(
            icon: Provider.of<ThemeProvider>(context, listen: false).isDark
                ? Icon(Icons.light_mode_rounded)
                : Icon(Icons.dark_mode_rounded),
            onPressed: () {
              Provider.of<ThemeProvider>(context, listen: false).switchThemes();
            },
            color: Theme.of(context).colorScheme.tertiary),
      ],
    );
  }

  Widget _buildTipCategories() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          _buildCategoryChip('All Tips'),
          _buildCategoryChip('Basic Tips'),
          _buildCategoryChip('Advanced Tips'),
          _buildCategoryChip('Pro Tips'),
        ],
      ),
    ).animate().fadeIn().slideX();
  }

  Widget _buildCategoryChip(String label) {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      child: FilterChip(
        selected: _selectedCategory == label,
        label: Text(label),
        onSelected: (bool selected) {
          setState(() {
            _selectedCategory = label;
          });
        },
        selectedColor: Theme.of(context).colorScheme.tertiary,
        checkmarkColor: Theme.of(context).colorScheme.secondary,
      ),
    );
  }

  Widget _buildTipSection(String title, List<CookingTip> tips) {
    if (_selectedCategory != 'All Tips' && _selectedCategory != title) {
      return const SizedBox.shrink();
    }
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ).animate().fadeIn().slideX(),
          const SizedBox(height: 16),
          ...tips.map((tip) => _buildTipCard(tip)).toList(),
        ],
      ),
    );
  }

  Widget _buildTipCard(CookingTip tip) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      elevation: 0,
      color: Theme.of(context).colorScheme.secondary,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: () {
          // Add functionality to show detailed tip
        },
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color:
                      Theme.of(context).colorScheme.tertiary.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(Icons.lightbulb_outline,
                    color: Theme.of(context).colorScheme.tertiary),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      tip.title,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[700],
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      tip.description,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
              ),
              Icon(
                Icons.chevron_right,
                color: Colors.grey[400],
              ),
            ],
          ),
        ),
      ),
    ).animate().fadeIn().slideX();
  }
}
