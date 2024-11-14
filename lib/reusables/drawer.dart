import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:recipeapp/models/nutri_info.dart';
import 'package:recipeapp/screens/cooking_tips.dart';
import 'package:recipeapp/screens/grocery_list.dart';
import 'package:recipeapp/screens/info.dart';
import 'package:recipeapp/screens/meal_plan.dart';
import 'package:recipeapp/screens/spices_terms.dart';
import 'package:recipeapp/themes/theme_provider.dart';

class AppDrawer extends StatelessWidget {
  AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          _buildHeader(context),
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                _buildDarkModeSwitch(context),
                const Divider(),
                _buildMainSection(context),
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Learn more about nutrition!',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.tertiary,
                    ),
                  ),
                ),
                _buildNutritionSection(context),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return UserAccountsDrawerHeader(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Theme.of(context).colorScheme.primary,
            Theme.of(context).colorScheme.secondary,
          ],
        ),
      ),
      currentAccountPicture: CircleAvatar(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        child: Icon(
          Icons.person_outline,
          size: 40,
          color: Theme.of(context).colorScheme.primary,
        ),
      ),
      accountName: const Text(
        'Logged in as:',
        style: TextStyle(
          fontSize: 14,
          color: Colors.grey,
        ),
      ),
      accountEmail: Text(
        FirebaseAuth.instance.currentUser!.email ?? 'failed to load user',
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildDarkModeSwitch(BuildContext context) {
    return ListTile(
      leading: Icon(
        Provider.of<ThemeProvider>(context, listen: false).isDark
            ? Icons.dark_mode
            : Icons.light_mode,
        color: Theme.of(context).colorScheme.primary,
      ),
      title: const Text(
        'Dark Mode',
        style: TextStyle(fontWeight: FontWeight.w500),
      ),
      subtitle: const Text('Switch theme'),
      trailing: Switch.adaptive(
        value: Provider.of<ThemeProvider>(context, listen: false).isDark,
        onChanged: (value) =>
            Provider.of<ThemeProvider>(context, listen: false).switchThemes(),
        activeColor: Theme.of(context).colorScheme.primary,
      ),
    );
  }

  Widget _buildMainSection(BuildContext context) {
    return Column(
      children: [
        _buildListTile(
          icon: Icons.shopping_cart_outlined,
          title: 'Grocery Lists',
          subtitle: 'Tap to view',
          onTap: () {
            // Navigate to grocery lists
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => GroceryList()));
            // Navigator.pop(context);
          },
        ),
        _buildListTile(
          icon: Icons.calendar_today_outlined,
          title: 'Meal Plans',
          subtitle: 'Tap to view',
          onTap: () {
            // Navigate to meal plans
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => MealPlanScreen()));
            // Navigator.pop(context);
          },
        ),
      ],
    );
  }

  Widget _buildNutritionSection(BuildContext context) {
    return Column(
      children: [
        _buildListTile(
          icon: Icons.lightbulb_outline,
          title: 'Cooking Tips',
          subtitle: 'Tap to view',
          onTap: () {
            // Navigate to cooking tips
            Navigator.push(context,
                MaterialPageRoute(builder: (_) => CookingTipsScreen()));
            // Navigator.pop(context);
          },
        ),
        _buildListTile(
          icon: Icons.medical_information_outlined,
          title: 'Dietary Disorders',
          subtitle: 'Def, Recommendations & Restrictions',
          onTap: () {
            // Navigate to dietary disorders
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => InfoPage()));
            //Navigator.pop(context);
          },
        ),
        _buildListTile(
          icon: Icons.menu_book_outlined,
          title: 'Culinary Vocabulary',
          subtitle: 'What, How, When....',
          onTap: () {
            // Navigate to culinary vocabulary
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => SpicesTerms()));
            // Navigator.pop(context);
          },
        ),
      ],
    );
  }

  Widget _buildListTile({
    required IconData icon,
    required String title,
    required String subtitle,
    required VoidCallback onTap,
  }) {
    return Builder(
      builder: (context) {
        return ListTile(
          leading: Icon(
            icon,
            color: Theme.of(context).colorScheme.primary,
          ),
          title: Text(
            title,
            style:
                TextStyle(color: Colors.grey[700], fontWeight: FontWeight.w500),
          ),
          subtitle: Text(
            subtitle,
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
          onTap: onTap,
          trailing: Icon(
            Icons.arrow_forward_ios,
            size: 16,
            color: Colors.grey[600],
          ),
        );
      },
    );
  }
}
