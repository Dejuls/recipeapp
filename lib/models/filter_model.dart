import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class MealType {
  final String name;
  final IconData icon;
  MealType({required this.name, required this.icon});
}

List<MealType> meal_material = [
  MealType(name: 'breakfast', icon: Icons.free_breakfast_outlined),
  MealType(name: 'lunch', icon: Icons.restaurant_outlined),
  MealType(name: 'dinner', icon: Icons.restaurant_menu_rounded),
  MealType(name: 'snacks', icon: Icons.fastfood_outlined),
  MealType(name: 'dessert', icon: Icons.icecream_outlined),
  MealType(name: 'drinks', icon: Icons.local_cafe_outlined)
];

class DietRest {
  final String name;
  final IconData icon;
  DietRest({
    required this.name,
    required this.icon,
  });
}

List<DietRest> dr_line = [
  DietRest(name: 'vegan', icon: LineIcons.leaf),
  DietRest(name: 'vegeterian', icon: Icons.nature_outlined),
  DietRest(name: 'glutenFree', icon: Icons.no_food_outlined),
  DietRest(name: 'diaryFree', icon: Icons.no_meals_ouline),
  DietRest(name: 'noNuts', icon: LineIcons.stopCircle)
];

class Level {
  final String name;
  final IconData icon;

  Level({required this.name, required this.icon});
}

List<Level> m_material = [
  Level(name: 'Beginner', icon: CupertinoIcons.star),
  Level(name: 'medium', icon: CupertinoIcons.star_lefthalf_fill),
  Level(name: 'pro', icon: CupertinoIcons.star_fill),
];

class Prep {
  final String name;
  final IconData icon;

  Prep({
    required this.name,
    required this.icon,
  });
}

List<Prep> m_prep = [
  Prep(name: 'easy', icon: Icons.emoji_emotions_outlined),
  Prep(name: 'medium', icon: Icons.sentiment_satisfied_rounded),
  Prep(name: 'hard', icon: Icons.sentiment_dissatisfied_outlined),
  Prep(name: 'time', icon: Icons.timer_10_outlined),
  Prep(name: 'tools', icon: Icons.kitchen_outlined)
];
