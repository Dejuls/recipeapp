
class MoreRecipes {
  final String name;
  final String origin;
  final String category;
  final String imgUrl;
  final List<String> ingredients;
  final List<String> measure;
  final String instructions;
  String? cuisine;
  double cumulativeRating;
  int ratingCount;

  MoreRecipes({
    required this.name,
    required this.origin,
    required this.category,
    required this.imgUrl,
    required this.ingredients,
    required this.measure,
    required this.instructions,
    this.cumulativeRating = 0.0,
    this.cuisine,
    this.ratingCount = 0,
  });

  double get averageRating =>
      ratingCount > 0 ? cumulativeRating / ratingCount : 0.0;
      List<MoreRecipes> searchAllLists(List<List<MoreRecipes>> allLists, String query) {
  query = query.toLowerCase();
  return allLists.expand((list) => list).where((item) =>
    item.name.toLowerCase().contains(query) ||
    item.category.toLowerCase().contains(query)
  ).toList();
}

}

List<MoreRecipes> international = [
  MoreRecipes(
      name: ' Spaghetti Carbonara',
      imgUrl: 'assets/images/Carbonara.jpg',
      origin: 'Italy',
      category: 'Pasta',
      ingredients: [
        '200g spaghetti',
        '100g pancetta',
        '50g Parmesan cheese, grated',
        '2 large eggs',
        'Freshly ground black pepper',
        'Salt',
      ],
      measure: [
        'Spaghetti: 200g',
        'Pancetta: 100g',
        'Parmesan cheese: 50g',
        'Eggs: 2 large'
      ],
      instructions:
          '1. Cook the spaghetti in salted boiling water until al dente.\n2. In a frying pan, cook the pancetta until crispy.\n3. In a bowl, whisk together eggs, Parmesan cheese, and black pepper.\n4. Drain the spaghetti and combine with pancetta.\n5. Toss everything together, adding the egg mixture to the pasta.\n6. Serve with more Parmesan and pepper.',
      cuisine: 'Traditional Italian recipe'),
  MoreRecipes(
      name: 'Chicken Tikka Masala',
      imgUrl: 'assets/images/Chickentikka.jpeg',
      origin: 'India',
      category: 'Curry',
      ingredients: [
        '500g chicken breast, cubed',
        '200ml plain yogurt',
        '1 onion, finely chopped',
        '2 cloves garlic, minced',
        '2 tsp garam masala',
        '1 tsp turmeric',
        '1 tsp cumin',
        '400ml canned tomatoes',
        '100ml cream',
        'Fresh coriander, for garnish'
      ],
      measure: [
        'Chicken breast: 500g',
        'Yogurt: 200ml',
        'Canned tomatoes: 400ml',
        'Cream: 100ml',
      ],
      instructions:
          '1. Marinate the chicken in yogurt, garlic, and spices for 30 minutes.\n2. Cook the chicken in a pan until browned and set aside.\n3. Sauté onions and garlic in the same pan, add spices and tomatoes, and simmer for 10 minutes.\n4. Add the chicken back to the pan, stir in cream, and cook for 10 more minutes.\n5. Garnish with fresh coriander and serve with rice or naan.',
      cuisine: ' UK'),
  MoreRecipes(
      name: ' Veggie Stir-Fry ',
      imgUrl: 'assets/images/Veggie stir fry1.jpg',
      origin: 'China ',
      category: 'Stir-Fry ',
      ingredients: [
        '1 cup broccoli florets ',
        '1 red bell pepper, sliced ',
        '1 carrot, sliced ',
        '2 tbsp soy sauce ',
        '1 tbsp sesame oil ',
        '1 tsp ginger, grated ',
        '1 clove garlic, minced ',
        '1 tbsp rice vinegar ',
      ],
      measure: [
        'Broccoli: 1 cup ',
        'Red bell pepper: 1 ',
        'Carrot: 1 ',
        'Soy sauce: 2 tbsp ',
        'Sesame oil: 1 tbsp '
      ],
      instructions:
          '1.	Heat sesame oil in a wok and sauté garlic and ginger.\n2. Add vegetables and stir-fry for 5-7 minutes until tender-crisp.\n3. Add soy sauce and rice vinegar, and toss the veggies to coat.\n4. Serve hot with rice or noodles. ',
      cuisine: 'Traditional Chinese stir-fry recipe '),
  MoreRecipes(
      name: 'Classic French Onion Soup ',
      imgUrl: 'assets/images/French onion soup.jpeg',
      origin: 'France ',
      category: 'Soup ',
      ingredients: [
        '3 large onions, thinly sliced ',
        '1 tbsp olive oil ',
        '1 clove garlic, minced',
        '500ml beef broth ',
        '1 tbsp flour ',
        '2 slices French bread ',
        '100g Gruyère cheese, grated '
      ],
      measure: [
        'Onions: 3 large ',
        'Beef broth: 500ml ',
        'Gruyère cheese: 100g ',
      ],
      instructions:
          '1. Caramelize the onions in olive oil over low heat for 30 minutes.\n2. Add garlic and flour, stirring for 2 minutes.\n3. Gradually add the beef broth and simmer for 10 minutes.\n4. Toast the French bread slices, and place on top of the soup.\n5. Sprinkle Gruyère cheese over the bread and broil until melted and bubbly. ',
      cuisine: 'Traditional French recipe '),
  MoreRecipes(
      name: 'Beef Wellington ',
      imgUrl: 'assets/images/Beef Wellington.jpeg',
      origin: 'United Kingdom ',
      category: 'Main Course ',
      ingredients: [
        '1kg beef tenderloin ',
        '200g mushrooms, finely chopped ',
        '100g pâté ',
        '1 sheet puff pastry ',
        '1 egg, beaten ',
        '1 tbsp olive oil '
      ],
      measure: ['Beef tenderloin: 1kg ', 'Mushrooms: 200g ', 'Pâté: 100g '],
      instructions:
          '1. Sear the beef in hot oil for 2-3 minutes on each side and let it cool.\n2. Sauté mushrooms in olive oil until dry, then spread pâté on the beef.\n3. Wrap the beef in mushroom mixture, and roll it in puff pastry.\n4. Brush with beaten egg and bake at 200°C for 25-30 minutes. ',
      cuisine: ' Classic British dish '),
  MoreRecipes(
      name: ' Margherita Pizza ',
      imgUrl: 'assets/images/Margherita2.jpeg',
      origin: 'Italy ',
      category: 'Pizza ',
      ingredients: [
        '250g pizza dough ',
        '200g mozzarella cheese, sliced ',
        '100g tomato sauce ',
        'Fresh basil leaves ',
        '1 tbsp olive oil ',
        'Salt and pepper '
      ],
      measure: [
        'Pizza dough: 250g ',
        'Mozzarella cheese: 200g ',
        'Tomato sauce: 100g '
      ],
      instructions:
          '1. Preheat the oven to 220°C.\n2. Roll out the pizza dough and spread tomato sauce over it.\n3. Top with mozzarella cheese and season with salt and pepper.\n4. Bake in the oven for 10-12 minutes until the crust is golden.\n5. Remove from the oven, top with fresh basil leaves, and drizzle with olive oil.\n',
      cuisine: 'Traditional Italian recipe '),
  MoreRecipes(
      name: ' Tacos al Pastor',
      imgUrl: 'assets/images/Tacos2.jpeg',
      origin: 'Mexico',
      category: 'Mexican',
      ingredients: [
        '500g pork shoulder, thinly sliced',
        '2 tbsp adobo sauce',
        '1 tsp cumin',
        '1 tsp paprika',
        '1/2 pineapple, sliced',
        'Corn tortillas',
        'Fresh cilantro, chopped',
        'Lime wedges'
      ],
      measure: [
        'Pork shoulder: 500g',
        'Pineapple: 1/2',
      ],
      instructions:
          '1. Marinate the pork in adobo sauce, cumin, paprika, and lime juice for 1 hour.\n2. Cook the pork on a grill or in a pan until browned and cooked through.\n3. Grill the pineapple slices until caramelized, then chop into pieces.\n4. Serve the pork on warm corn tortillas, topped with grilled pineapple, cilantro, and lime wedges.',
      cuisine: 'Traditional Mexican recipe'),
  MoreRecipes(
      name: 'Greek Salad',
      imgUrl: 'assets/images/Greek1.jpeg',
      origin: 'Greece',
      category: 'Salad',
      ingredients: [
        '1 cucumber, diced',
        '2 tomatoes, chopped',
        '1 red onion, thinly sliced',
        '100g feta cheese, crumbled',
        '1 tbsp olive oil',
        '1 tsp dried oregano',
        'Kalamata olives'
      ],
      measure: ['Cucumber: 1', 'Tomatoes: 2', 'Feta cheese: 100g'],
      instructions:
          '1. Combine cucumbers, tomatoes, onions, and olives in a bowl.\n2. Drizzle with olive oil and sprinkle with dried oregano.\n3. Toss to combine, then top with crumbled feta cheese.\n4. Serve immediately, chilled or at room temperature.',
      cuisine: 'Traditional Greek name'),
  MoreRecipes(
      name: 'Sushi Rolls (Maki)',
      imgUrl: 'assets/images/Maki sushi1.jpeg',
      origin: 'Japan',
      category: 'Japanese',
      ingredients: [
        '200g sushi rice',
        '2 sheets nori (seaweed)',
        '100g cucumber, julienned',
        '100g avocado, sliced',
        '100g smoked salmon or tuna',
        'Soy sauce for dipping'
      ],
      measure: ['Sushi rice: 200g', 'Nori: 2 sheets'],
      instructions:
          '1. Cook the sushi rice according to package instructions and let it cool.\n2. Lay a sheet of nori on a bamboo sushi mat.\n3. Spread a thin layer of rice on the nori, leaving a small border at the top.\n4. Add cucumber, avocado, and smoked salmon in a line.\n5. Roll the sushi tightly, seal the edge with water.\n6. Slice into pieces and serve with soy sauce.',
      cuisine: 'Traditional Japanese sushi name'),
  MoreRecipes(
      name: 'Chocolate Lava Cake',
      imgUrl: 'assets/images/Chocolate2.jpeg',
      origin: 'France',
      category: 'Dessert',
      ingredients: [
        '200g dark chocolate',
        '100g butter',
        '2 eggs',
        '50g sugar',
        '1 tbsp flour',
        'Powdered sugar for dusting'
      ],
      measure: ['Dark chocolate: 200g', 'Butter: 100g', 'Sugar: 50g'],
      instructions:
          '1. Preheat the oven to 200°C and grease the ramekins.\n2. Melt the chocolate and butter together in a heatproof bowl.\n3. Whisk eggs and sugar in another bowl until frothy, then fold in the flour.\n4. Combine the chocolate mixture with the egg mixture.\n5. Pour into the ramekins and bake for 10-12 minutes until the outside is set but the inside is molten.\n6. Let it cool for a minute, then dust with powdered sugar before serving.',
      cuisine: 'Traditional French dessert'),
  MoreRecipes(
      name: 'Pad Thai',
      imgUrl: 'assets/images/Pad2.jpeg',
      origin: 'Thailand',
      category: 'Stir-Fry',
      ingredients: [
        '200g rice noodles',
        '100g shrimp or tofu, cubed',
        '2 eggs, beaten',
        '3 tbsp fish sauce',
        '1 tbsp soy sauce',
        '1 tsp sugar',
        '2 cloves garlic, minced',
        '1/2 cup bean sprouts',
        '1/4 cup peanuts, crushed',
        '1 lime, cut into wedges'
      ],
      measure: ['Rice noodles: 200g', 'Shrimp: 100g'],
      instructions:
          '1. Cook the rice noodles according to package instructions.\n2. In a pan, sauté garlic and shrimp (or tofu) until cooked through.\n3. Push the shrimp aside, add beaten eggs and scramble.\n4. Add cooked noodles, fish sauce, soy sauce, and sugar.\n5. Toss in bean sprouts and peanuts, and serve with lime wedges.',
      cuisine: 'Traditional Thai recipe'),
  MoreRecipes(
      name: 'Lasagna',
      imgUrl: 'assets/images/Lasagna2.jpeg',
      origin: 'Italy',
      category: 'Pasta',
      ingredients: [
        '500g ground beef',
        '1 onion, chopped',
        '2 cloves garlic, minced',
        '400g tomato sauce',
        '1 tsp oregano',
        '1 tsp basil',
        '250g lasagna noodles',
        '300g ricotta cheese',
        '200g mozzarella cheese, shredded',
        '100g Parmesan cheese, grated'
      ],
      measure: ['Ground beef: 500g', 'Lasagna noodles: 250g'],
      instructions:
          '1. Brown the beef with onions and garlic. Add tomato sauce, oregano, and basil, and simmer for 10 minutes.\n2. Cook lasagna noodles according to package instructions.\n3. Layer noodles, ricotta cheese, meat sauce, and mozzarella in a baking dish.\n4. Repeat layers and top with Parmesan.\n5. Bake at 180°C for 30 minutes until bubbly and golden.',
      cuisine: 'Traditional Italian name'),
  MoreRecipes(
      name: 'Chicken Caesar Salad',
      imgUrl: 'assets/images/Chicken ceasar.jpeg',
      origin: 'USA',
      category: 'Salad',
      ingredients: [
        '1 chicken breast, grilled and sliced',
        '2 cups romaine lettuce, chopped',
        '1/2 cup Caesar dressing',
        '1/4 cup Parmesan cheese, grated',
        'Croutons'
      ],
      measure: ['Chicken breast: 1', 'Romaine lettuce: 2 cups'],
      instructions:
          '1. Grill the chicken breast and slice into strips.\n2. Toss the lettuce with Caesar dressing, croutons, and Parmesan.\n3. Add sliced chicken on top and serve.',
      cuisine: 'Traditional American name'),
  MoreRecipes(
      name: 'Falafel',
      imgUrl: 'assets/images/Fafel2.jpeg',
      origin: 'Middle East',
      category: 'Vegetarian',
      ingredients: [
        '200g chickpeas, soaked overnight',
        '1 onion, chopped',
        '2 cloves garlic, minced',
        '1 tsp cumin',
        '1 tsp coriander',
        'Fresh parsley, chopped',
        'Salt and pepper',
        'Vegetable oil for frying'
      ],
      measure: ['Chickpeas: 200g'],
      instructions:
          '1. Blend chickpeas, onion, garlic, spices, and parsley in a food processor until smooth.\n2. Form the mixture into small balls or patties.3. Fry in hot oil until golden brown.\n4. Serve in pita with tahini sauce and salad.',
      cuisine: 'Traditional Middle Eastern Recipe'),
  MoreRecipes(
      name: 'Creamy Mushroom Risotto',
      imgUrl: 'assets/images/Mushroom risotto.jpeg',
      origin: 'Italy',
      category: 'Main Course',
      ingredients: [
        '200g Arborio rice',
        '1 onion, finely chopped',
        '200g mushrooms, sliced',
        '1 liter vegetable stock',
        '100ml white wine',
        '50g Parmesan cheese, grated',
        '2 tbsp butter'
      ],
      measure: ['Arborio rice: 200g', 'Mushrooms: 200g'],
      instructions:
          '1. Sauté the onion in butter until soft, then add mushrooms and cook for 5 minutes.\n2. Add the rice and cook, stirring constantly, for 2 minutes.\n3. Gradually add the wine and stock, stirring until the rice is creamy and cooked through.\n4. Stir in Parmesan cheese and more butter before serving.',
      cuisine: 'Traditional Italian Recipe'),
  MoreRecipes(
      name: 'Beef and Broccoli Stir-Fry',
      imgUrl: 'assets/images/Beef broccoli.jpeg',
      origin: 'China',
      category: 'Stir-Fry',
      ingredients: [
        '300g beef strips',
        '1 cup broccoli florets',
        '2 cloves garlic, minced',
        '2 tbsp soy sauce',
        '1 tbsp oyster sauce',
        '1 tsp cornstarch',
        '1 tbsp vegetable oil'
      ],
      measure: ['Beef strips: 300g', 'Broccoli: 1 cup'],
      instructions:
          '1. Marinate the beef in soy sauce, cornstarch, and a little water for 15 minutes.\n2. Stir-fry the garlic in oil, then add the beef and cook until browned.3. Add the broccoli and oyster sauce, and stir-fry until tender.\n4. Serve with steamed rice.',
      cuisine: 'Traditional Chinese Recipe'),
];
List<MoreRecipes> simple = [
  MoreRecipes(
      name: 'Scrambled Eggs',
      imgUrl: 'assets/images/Scrambled1.jpeg',
      origin: 'Global',
      category: 'Breakfast',
      ingredients: ['2 eggs', '1 tbsp butter', 'Salt and pepper'],
      measure: ['Eggs: 2'],
      instructions:
          '1. Crack eggs into a bowl and whisk with salt and pepper.\n2. Melt butter in a pan over medium heat.\n3. Pour in eggs and stir gently until cooked through.',
      cuisine: 'Simple Recipe'),
  MoreRecipes(
      name: 'Grilled Cheese Sandwich',
      imgUrl: 'assets/images/Grilledcheese1.jpeg',
      origin: 'USA',
      category: 'Snack',
      ingredients: ['2 slices bread', '2 slices cheese', '1tbsp butter'],
      measure: [
        'Bread: 2 slices',
        'Cheese: 2 slices',
      ],
      instructions:
          '1. Butter one side of each slice of bread.\n2. Place cheese between the slices with the buttered side out.\n3. Grill in a pan over medium heat until golden brown and the cheese melts.',
      cuisine: 'Classic American name'),
  MoreRecipes(
      name: 'Spaghetti Aglio e Olio',
      imgUrl: 'assets/images/Aglio e olio1.jpeg',
      origin: 'Italy',
      category: 'Pasta',
      ingredients: [
        '200g spaghetti',
        '3 cloves garlic, minced',
        '1 tbsp olive oil',
        'Red pepper flakes (optional)',
        'Salt',
      ],
      measure: [
        'Spaghetti: 200g',
        'Garlic: 3 cloves',
      ],
      instructions:
          '1. Cook spaghetti according to package instructions.\n2. Sauté garlic in olive oil until golden.\n3. Toss the cooked spaghetti in garlic oil, season with salt and red pepper flakes.',
      cuisine: 'Italian classic'),
  MoreRecipes(
      name: 'Peanut Butter Banana Toast',
      imgUrl: 'assets/images/Peanut banana.jpeg',
      origin: 'Global',
      category: 'Snack',
      ingredients: [
        '1 slice bread',
        '2 tbsp peanut butter',
        '1 banana, sliced'
      ],
      measure: ['Bread: 1 slice', 'Peanut butter: 2 tbsp', 'Banana: 1'],
      instructions:
          '1. Toast the bread.\n2. Spread peanut butter on the toast.\n3. Top with banana slices.',
      cuisine: 'Quick snack'),
  MoreRecipes(
      name: 'Simple Salad',
      imgUrl: 'assets/images/Simple salad2.jpeg',
      origin: 'Global',
      category: 'Salad',
      ingredients: [
        '2 cups lettuce',
        '1 tomato, sliced',
        '1 cucumber, sliced',
        '2 tbsp olive oil',
        'Salt and pepper'
      ],
      measure: ['Lettuce: 2 cups', 'Tomato: 1'],
      instructions:
          '1. Toss lettuce, tomato, and cucumber in a bowl.\n2. Drizzle with olive oil and season with salt and pepper.',
      cuisine: 'Simple Recipe'),
  MoreRecipes(
      name: 'Veggie Stir-Fry',
      imgUrl: 'assets/images/Veggie stir fry2.jpeg',
      origin: 'Global',
      category: ' Stir-Fry',
      ingredients: [
        '1 cup mixed vegetables (carrots, peas, etc.)',
        '1 tbsp soy sauce',
        '1 tbsp olive oil',
        '1 clove garlic, minced'
      ],
      measure: ['Mixed vegetables: 1 cup'],
      instructions:
          '1. Heat olive oil in a pan.\n2. Add garlic and sauté for 1 minute.\n3. Add the vegetables and stir-fry for 5-7 minutes.\n4. Add soy sauce and cook for 2 more minutes.',
      cuisine: 'Simple stir-fry'),
  MoreRecipes(
      name: 'Microwave Mug Cake',
      imgUrl: 'assets/images/Mug cake1.jpeg',
      origin: 'Global',
      category: ' Dessert',
      ingredients: [
        '4 tbsp flour',
        '3 tbsp sugar',
        '2 tbsp cocoa powder',
        '1 egg',
        '3 tbsp milk',
        '2 tbsp vegetable oil'
      ],
      measure: ['Flour: 4 tbsp', 'Sugar: 3 tbsp'],
      instructions:
          '1. Mix all ingredients in a microwave-safe mug.\n2. Microwave for 1-2 minutes until cooked.\n3. Let it cool slightly before eating.',
      cuisine: 'Quick dessert'),
  MoreRecipes(
      name: 'Avocado Toast',
      imgUrl: 'assets/images/Avocado1.jpeg',
      origin: 'Global',
      category: 'Breakfast',
      ingredients: ['1 slice bread', '1 avocado, mashed', 'Salt and pepper'],
      measure: ['Bread: 1 slice', 'Avocado: 1'],
      instructions:
          '1. Toast the bread.\n2. Mash avocado with salt and pepper.\n3. Spread on the toast and serve.',
      cuisine: 'Healthy breakfast'),
  MoreRecipes(
      name: 'Fried Eggs and Toast',
      imgUrl: 'assets/images/Fried eggs2.jpeg',
      origin: 'Global',
      category: 'Breakfast',
      ingredients: [
        '2 eggs',
        '2 slices bread',
        '1 tbsp butter',
        'Salt and pepper'
      ],
      measure: ['Eggs: 2', 'Bread: 2 slices'],
      instructions:
          '1. Fry the eggs in butter and season with salt and pepper.\n2. Toast the bread.\n3. Serve the eggs on toast.',
      cuisine: 'Basic breakfast'),
  MoreRecipes(
      name: 'Oatmeal with Honey',
      imgUrl: 'assets/images/Oatmeal.jpeg',
      origin: 'Global',
      category: 'Breakfast',
      ingredients: ['1/2 cup oats', '1 cup water or milk', '1 tbsp honey'],
      measure: ['Oats: 1/2 cup'],
      instructions:
          '1. Cook oats with water or milk according to package instructions.\n2. Drizzle with honey before serving.',
      cuisine: 'Simple breakfast'),
  MoreRecipes(
      name: 'Tuna Salad',
      imgUrl: 'assets/images/Tuna3.jpeg',
      origin: 'Global',
      category: 'Salad',
      ingredients: [
        '1 can tuna',
        '1 tbsp mayo',
        '1 tbsp lemon juice',
        'Salt and pepper'
      ],
      measure: ['Tuna: 1 can'],
      instructions:
          '1. Drain the tuna and mix with mayo, lemon juice, salt, and pepper.\n2. Serve on a bed of lettuce or in a sandwich.',
      cuisine: 'Easy lunch'),
  MoreRecipes(
      name: 'Baked Potatoes',
      imgUrl: 'assets/images/Baked3.jpeg',
      origin: 'Global',
      category: 'Side Dish',
      ingredients: ['2 potatoes', '1 tbsp olive oil', 'Salt and pepper'],
      measure: ['Potatoes: 2'],
      instructions:
          '1. Preheat the oven to 200°C.\n2. Rub potatoes with olive oil, salt, and pepper.\n3. Bake for 45 minutes or until tender.',
      cuisine: 'Simple side dish'),
  MoreRecipes(
      name: 'Tomato Soup',
      imgUrl: 'assets/images/Tomato soup1.jpeg',
      origin: 'Global',
      category: 'Soup',
      ingredients: [
        '1 can tomato soup',
        '1 cup water or milk',
        'Salt and pepper'
      ],
      measure: ['Tomato soup: 1 can'],
      instructions:
          '1. Heat the tomato soup with water or milk in a pot.\n2. Season with salt and pepper.\n3. Serve with toast or crackers.',
      cuisine: 'Quick meal'),
  MoreRecipes(
      name: 'Cucumber Sandwiches',
      imgUrl: 'assets/images/Cucumber3.jpeg',
      origin: 'UK',
      category: 'Snack',
      ingredients: [
        '2 slices bread',
        '1/2 cucumber, thinly sliced',
        '2 tbsp cream cheese',
        'Salt and pepper'
      ],
      measure: ['Bread: 2 slices', 'Cucumber: 1/2'],
      instructions:
          '1. Spread cream cheese on one side of each slice of bread.\n2. Layer the cucumber slices on one slice of bread.\n3. Season with salt and pepper, then top with the second slice of bread.\n4. Cut into halves or quarters and serve.',
      cuisine: 'Simple snack'),
  MoreRecipes(
      name: 'Microwave Popcorn',
      imgUrl: 'assets/images/Popcorn1.jpeg',
      origin: 'Global',
      category: 'Snack',
      ingredients: [
        '1/4 cup popcorn kernels',
        '1 tbsp butter (optional)',
        'Salt to taste'
      ],
      measure: ['Popcorn kernels: 1/4 cup'],
      instructions:
          '1. Place the popcorn kernels in a microwave-safe bowl.\n2. Cover with a microwave-safe lid or plate.\n3. Microwave on high for 2-3 minutes until popping slows.\n4. Melt butter and toss with the popcorn, then season with salt.',
      cuisine: 'Easy snack')
];

List<MoreRecipes> local = [
  MoreRecipes(
      name: 'Posho (Akawunga)',
      imgUrl: 'assets/images/Posho3.jpeg',
      origin: 'Uganda',
      category: 'Staple Food',
      ingredients: [
        '2 cups maize flour (cornmeal)',
        '4 cups water',
        'Salt to taste'
      ],
      measure: ['Maize flour: 2 cups'],
      instructions:
          '1. Boil the water in a pot, then add a pinch of salt.\n2. Slowly stir in the maize flour while continuously stirring to avoid lumps.\n3. Cook on low heat for about 10-15 minutes, stirring regularly.\n4. Once thickened, serve with your choice of sauce or vegetables.',
      cuisine: 'Traditional Ugandan dish'),
  MoreRecipes(
      name: 'Matoke (Banana Stew)',
      imgUrl: 'assets/images/Banana stew.jpeg',
      origin: 'Uganda',
      category: 'Main Dish',
      ingredients: [
        '4 ripe bananas (plantains)',
        '1 onion, chopped',
        '2 tomatoes, chopped',
        '1 clove garlic, minced',
        '1 tbsp vegetable oil',
        'Salt and pepper'
      ],
      measure: ['Bananas: 4'],
      instructions:
          '1. Peel the bananas and cut them into slices.\n2. Heat oil in a pan, add onions and garlic, and sauté until soft.\n3. Add tomatoes, season with salt and pepper, and cook until they break down.\n4. Add the banana slices, cover, and simmer for 10-15 minutes.\n5. Serve with rice or posho.',
      cuisine: 'Traditional Ugandan dish'),
  MoreRecipes(
      name: 'Luwombo (Steamed Meat or Chicken)',
      imgUrl: 'assets/images/Luwombo2.jpeg',
      origin: 'Uganda',
      category: 'Main Dish',
      ingredients: [
        '500g chicken or beef (cut into pieces)',
        '1 onion, chopped',
        '2 tomatoes, chopped',
        '2 tbsp peanut butter',
        '1 tbsp vegetable oil',
        'Salt and pepper',
        'Banana leaves or foil for wrapping'
      ],
      measure: ['Chicken or beef: 500g'],
      instructions:
          '1. Heat oil in a pan, fry onions, and tomatoes until soft.\n2. Add meat, season with salt and pepper, and cook until browned.\n3. Stir in the peanut butter and cook for 10 minutes.\n4. Wrap the meat mixture in banana leaves or foil and steam for about 30 minutes.\n5. Serve with posho or rice.',
      cuisine: 'Traditional Ugandan name'),
  MoreRecipes(
      name: 'Rolex (Ugandan Chapati and Eggs)',
      imgUrl: 'assets/images/Rolex2.jpeg',
      origin: 'Uganda',
      category: 'Street Food',
      ingredients: [
        '2 eggs',
        '1 chapati',
        '1 tomato, sliced',
        '1 onion, chopped',
        '1/2 cucumber, sliced',
        '1 tbsp vegetable oil'
      ],
      measure: ['Eggs: 2', 'Chapati: 1'],
      instructions:
          '1. Beat the eggs and season with salt and pepper.\n2. Heat oil in a pan, add onions and tomatoes, and cook for 2-3 minutes.\n3. Pour in the eggs and cook until scrambled.\n4. Lay the chapati flat, add the scrambled eggs, cucumber, and other vegetables.\n5. Roll it up and enjoy!',
      cuisine: 'Ugandan street food'),
  MoreRecipes(
      name: 'Gomesa (Vegetable Stew)',
      imgUrl: 'assets/images/Vegetable stew.jpeg',
      origin: 'Uganda',
      category: 'Side Dish',
      ingredients: [
        '1 cup groundnut paste (peanut butter)',
        '2 cups vegetables (pumpkin leaves, spinach, or cabbage)',
        '1 onion, chopped',
        '1 clove garlic, minced',
        '1 tbsp vegetable oil',
        'Salt to taste'
      ],
      measure: ['Groundnut paste: 1 cup'],
      instructions:
          '1. Heat oil in a pan, fry onions and garlic until soft.\n2. Add groundnut paste and cook for 5 minutes, stirring regularly.\n3. Add the vegetables and cook for another 10 minutes until tender.\n4. Season with salt and serve with posho or rice.',
      cuisine: 'Ugandan traditional dish'),
  MoreRecipes(
      name: 'Kamatore (Sweet Potatoes)',
      imgUrl: 'assets/images/Kamatore.jpeg',
      origin: 'Uganda',
      category: 'Side Dish',
      ingredients: ['4 medium sweet potatoes', 'Salt to taste'],
      measure: ['Sweet potatoes: 4'],
      instructions:
          '1. Peel and cut sweet potatoes into even pieces.\n2. Boil in salted water until tender, about 20-30 minutes.\n3. Drain, then serve warm.',
      cuisine: 'Traditional Ugandan dish'),
  MoreRecipes(
      name: 'Ekitangaala (Pumpkin Stew)',
      imgUrl: 'assets/images/Pumpkin stew3.jpeg',
      origin: 'Uganda',
      category: 'Main Dish',
      ingredients: [
        '500g pumpkin, diced',
        '1 onion, chopped',
        '2 tomatoes, chopped',
        '1 tbsp vegetable oil',
        'Salt and pepper'
      ],
      measure: ['Pumpkin: 500g'],
      instructions:
          '1. Heat oil in a pan and sauté onions until golden.\n2. Add tomatoes and cook until soft.\n3. Stir in diced pumpkin, season, and cook for 20-30 minutes until tender.\n4. Serve hot with posho or rice.',
      cuisine: 'Popular Ugandan dish'),
  MoreRecipes(
      name: 'Nkwan',
      imgUrl: 'assets/images/cabeg.jpeg',
      origin: 'Uganda',
      category: 'Side Dish',
      ingredients: [
        '1 small cabbage, shredded',
        '2 carrots, grated',
        '1 onion, chopped',
        '1 tbsp vegetable oil',
        'Salt to taste'
      ],
      measure: ['Cabbage: 1 small', 'Carrots: 2'],
      instructions:
          '1. Heat oil in a pan, sauté onions until soft.\n2. Add carrots and cook for 5 minutes.\n3. Stir in cabbage and season with salt.\n4. Cook for an additional 10 minutes until tender.',
      cuisine: 'Simple Ugandan dish'),
  MoreRecipes(
      name: 'Sumbusa',
      imgUrl: 'assets/images/sumbusa.jpeg',
      origin: 'Uganda',
      category: 'Snack',
      ingredients: [
        '2 cups flour',
        '1/2 cup water',
        '1 cup minced meat or vegetables',
        '1 onion, chopped',
        'Spices (cumin, coriander)',
        'Oil for frying'
      ],
      measure: ['Flour: 2 cups', 'Minced meat or vegetables: 1 cup'],
      instructions:
          '1. Mix flour and water to make dough.\n2. Cook minced meat or vegetables with onions and spices.\n3. Roll out dough, cut into circles, and fill with the mixture.\n4. Fold and seal, then deep-fry until golden brown.',
      cuisine: 'Popular snack'),
  MoreRecipes(
      name: 'Kamatore',
      imgUrl: 'assets/images/gonja.jpeg',
      origin: 'Uganda',
      category: 'Dessert',
      ingredients: [
        '4 ripe bananas',
        '2 tbsp sugar',
        '1/2 tsp cinnamon (optional)'
      ],
      measure: ['Bananas: 4'],
      instructions:
          '1. Preheat the oven to 180°C (350°F).\n2. Peel and slice bananas lengthwise.\n3. Sprinkle with sugar and cinnamon, then place on a baking sheet.\n4. Bake for 15-20 minutes until golden.',
      cuisine: 'Simple dessert'),
  MoreRecipes(
      name: 'Matoke and Groundnut Sauce',
      imgUrl: 'assets/images/pasted1.jpeg',
      origin: 'Uganda',
      category: 'Main Dish',
      ingredients: [
        '4 ripe plantains',
        '1 cup groundnut paste (peanut butter)',
        '1 onion, chopped',
        '2 cups water',
        'Salt to taste'
      ],
      measure: ['Plantains: 4'],
      instructions:
          '1. Peel and steam the plantains until soft.\n2. In a pot, sauté onions until soft, then add groundnut paste and water.\n3. Stir and cook until well combined.\n4. Serve the plantains with groundnut sauce on top.',
      cuisine: 'Traditional Ugandan dish'),
  MoreRecipes(
      name: ' Biryani',
      imgUrl: 'assets/images/biryani.jpeg',
      origin: 'Uganda',
      category: 'Main Dish',
      ingredients: [
        '2 cups basmati rice',
        '500g chicken, cut into pieces',
        '1 onion, chopped',
        '2 tomatoes, chopped',
        '1 tbsp biryani spices',
        '4 cups water'
      ],
      measure: ['Rice: 2 cups', 'Chicken: 500g'],
      instructions:
          '1. Heat oil in a pan and sauté onions until golden.\n2. Add chicken and cook until browned, then add tomatoes and spices.\n3. Stir in rice and water, bring to a boil, then simmer until the rice is cooked.',
      cuisine: 'Ugandan variation'),
  MoreRecipes(
      name: 'Malewa (Smoked Bamboo Shoots)',
      imgUrl: 'assets/images/lewa.jpeg',
      origin: 'Uganda',
      category: 'Side Dish',
      ingredients: [
        '2 cups smoked bamboo shoots',
        '1 onion, chopped',
        '2 tomatoes, chopped',
        '1 tbsp vegetable oil',
        'Salt to taste'
      ],
      measure: ['Bamboo shoots: 2 cups'],
      instructions:
          '1. Heat oil in a pan and sauté onions until soft.\n2. Add tomatoes and cook until soft.\n3. Stir in the bamboo shoots and season with salt.\n4. Cook for an additional 10-15 minutes.',
      cuisine: 'Traditional Ugandan dish'),
  MoreRecipes(
      name: 'Buwalasi',
      imgUrl: 'assets/images/lentil.jpeg',
      origin: 'Uganda',
      category: 'Main Dish',
      ingredients: [
        '1 cup lentils',
        '1 onion, chopped',
        '2 tomatoes, chopped',
        '2 cups water',
        'Salt and pepper',
      ],
      measure: ['Lentils: 1 cup'],
      instructions:
          '1. Boil lentils in water until tender, about 20-30 minutes.\n2. In another pot, sauté onions and tomatoes until soft.\n3. Add the cooked lentils to the pot, season, and simmer for 10 minutes.',
      cuisine: 'Simple Ugandan dish'),
  MoreRecipes(
      name: 'Cabbage and Meat Rolls',
      imgUrl: 'assets/images/cabeg.jpg',
      origin: 'Uganda',
      category: 'Main Dish',
      ingredients: [
        '1 head cabbage',
        '500g minced meat',
        '1 onion, chopped',
        '2 tomatoes, chopped',
        'Salt and pepper'
      ],
      measure: [
        'Cabbage: 1 head',
        'Minced meat: 500g',
      ],
      instructions:
          '1. Boil cabbage leaves until soft, then remove and cool.\n2. Mix minced meat with onions, tomatoes, salt, and pepper.\n3. Place meat mixture in cabbage leaves and roll tightly.\n4. Steam or bake until the meat is cooked through.\n',
      cuisine: 'Traditional Ugandan dish'),
];

List<MoreRecipes> breakfast = [
  MoreRecipes(
      name: 'Scrambled Eggs',
      imgUrl: 'assets/images/Scrambled1.jpeg',
      category: 'Breakfast',
      origin: 'American',
      ingredients: [
        '2 eggs',
        '1 tablespoon butter',
        'Salt to taste',
        'Pepper to taste',
      ],
      measure: ['2 eggs', '1 tablespoon', 'To taste', 'To taste'],
      instructions:
          '1. Whisk the eggs in a bowl with a pinch of salt and pepper.\n2. Melt butter in a skillet over medium heat.\n3. Pour in the eggs and gently scramble until cooked.\n4. Serve warm.',
      cuisine: 'American'),
  MoreRecipes(
      name: 'Scrambled Eggs',
      imgUrl: 'assets/images/Scrambled2.jpeg',
      category: 'Breakfast',
      origin: 'American',
      ingredients: [
        '2 eggs',
        '1 tablespoon butter',
        'Salt to taste',
        'Pepper to taste'
      ],
      measure: ['2 eggs', '1 tablespoon', 'To taste', 'To taste'],
      instructions:
          '1. Whisk the eggs in a bowl with a pinch of salt and pepper.\n2. Melt butter in a skillet over medium heat.\n3. Pour in the eggs and gently scramble until cooked.\n4. Serve warm.',
      cuisine: 'American'),
// MoreRecipes(overnight),
  MoreRecipes(
      name: 'Breakfast Burrito',
      imgUrl: 'assets/images/Buritto2.jpeg',
      category: 'Breakfast',
      origin: 'USA',
      ingredients: [
        "2 large eggs",
        "1 tortilla",
        "1/2 cup black beans",
        "1/4 avocado",
        "1/4 cup cheese"
      ],
      measure: ["2 large", "1", "1/2 cup", "1/4", "1/4 cup"],
      instructions:
          'Scramble eggs, layer on tortilla with beans, avocado, and cheese. Roll up and serve.',
      cuisine: 'American'),
  MoreRecipes(
      name: 'Muffins',
      imgUrl: 'assets/images/Muffins.jpeg',
      category: 'Breakfast',
      origin: 'USA',
      ingredients: [
        "2 cups flour",
        "1 cup sugar",
        "1 tablespoon baking powder",
        "1 cup milk",
        "1/2 cup vegetable oil"
      ],
      measure: ["2 cups", "1 cup", "1 tablespoon", "1 cup", "1/2 cup"],
      instructions:
          'Mix dry and wet ingredients separately, combine, and bake at 350°F (175°C) for 20 minutes.',
      cuisine: 'American'),
  MoreRecipes(
      name: 'Breakfast Tacos',
      imgUrl: 'assets/images/Tacos2.jpeg',
      category: 'Breakfast',
      origin: 'Mexico',
      ingredients: [
        "2 small corn tortillas",
        "2 scrambled eggs",
        "1/4 cup salsa",
        "1/4 avocado",
        "1/4 cup cheese"
      ],
      measure: ["2 small", "2", "1/4 cup", "1/4", "1/4 cup"],
      instructions: 'Fill tortillas with eggs, salsa, avocado, and cheese.',
      cuisine: 'Mexico'),
  MoreRecipes(
      name: 'Granola Bars',
      imgUrl: 'assets/images/granola.jpeg',
      category: 'Breakfast',
      origin: 'unknown',
      ingredients: [
        "2 cups oats",
        "1/2 cup honey",
        "1/2 cup peanut butter",
        "1/2 cup chocolate chips"
      ],
      measure: ["2 cups", "1/2 cup", "1/2 cup", "1/2 cup"],
      instructions:
          'Mix all ingredients, press into a pan, refrigerate until set, and cut into bars.',
      cuisine: 'Unknown'),
  MoreRecipes(
      name: 'Eggs Benedict*',
      imgUrl: 'assets/images/Benedict.jpeg',
      category: 'Breakfast',
      origin: 'American',
      ingredients: [
        '4 eggs, poached',
        '4 English muffins, toasted',
        '4 Canadian bacon slices, cooked',
        '1 cup hollandaise sauce',
        'Salt and pepper to taste'
      ],
      measure: [
        '4 eggs',
        '4 English muffins',
        '4 Canadian bacon slices',
        '1 cup hollandaise sauce'
      ],
      instructions:
          'Toast English muffins.,\nTop with Canadian bacon, poached egg, and hollandaise sauce.',
      cuisine: 'American'),
// MoreRecipes(avocado toast),
  MoreRecipes(
      name: 'Waffle',
      imgUrl: 'assets/images/Waffles2.jpeg',
      category: 'Snack',
      origin: 'Belgian',
      ingredients: [
        '2 cups all-purpose flour',
        '4 teaspoons baking powder',
        '1 teaspoon salt',
        '1/4 cup sugar',
        '2 large eggs',
        '1 cup milk',
        '4 tablespoons butter, melted'
      ],
      measure: [
        '2 cups flour',
        '4 teaspoons baking powder',
        '1 teaspoon salt',
        '1/4 cup sugar',
        '2 eggs',
        '1 cup milk',
        '4 tablespoons butter'
      ],
      instructions:
          "Preheat waffle iron. Whisk together flour, baking powder, salt, and sugar. In a separate bowl, whisk together eggs, milk, and melted butter. Combine wet and dry ingredients. Cook in waffle iron.",
      cuisine: 'Belgian'),
  MoreRecipes(
      name: 'French Toast',
      imgUrl: 'assets/images/French2.jpeg',
      category: 'Breakfast',
      origin: 'French',
      ingredients: [
        '4 slices bread',
        '2 large eggs',
        '1 cup milk',
        '1/4 cup sugar',
        '2 tablespoons butter, melted',
        'Cinnamon to taste'
      ],
      measure: [
        '4 slices bread',
        '2 eggs',
        '1 cup milk',
        '1/4 cup sugar',
        '2 tablespoons butter'
      ],
      instructions:
          "Whisk together eggs, milk, sugar, and melted butter. Dip bread slices in mixture. Cook in skillet until golden brown.",
      cuisine: 'French'),
  MoreRecipes(
      name: 'Breakfast Burrito',
      imgUrl: 'assets/images/Buritto1.jpeg',
      category: 'Breakfast, Mexican',
      origin: 'Mexican',
      ingredients: [
        '4 eggs',
        '1 cup cooked sausage',
        '1 cup cooked black beans',
        '1 cup shredded cheese',
        '4 tortillas',
        'Salsa and sour cream to taste'
      ],
      measure: [
        '4 eggs',
        '1 cup sausage',
        '1 cup black beans',
        '1 cup cheese',
        '4 tortillas'
      ],
      instructions:
          "Scramble eggs. Cook sausage and black beans. Warm tortillas. Assemble burrito with eggs, sausage, black beans, and cheese.",
      cuisine: 'Mexican'),
  MoreRecipes(
      name: 'Cinnamon Rolls',
      imgUrl: 'assets/images/Cinnamon3.jpeg',
      category: 'Breakfast, Dessert',
      origin: 'Swedish',
      ingredients: [
        '2 cups flour',
        '2 teaspoons baking powder',
        '1 teaspoon salt',
        '1/4 cup sugar',
        '1/2 cup butter, softened',
        '1/2 cup cinnamon sugar'
      ],
      measure: [
        '2 cups flour',
        '2 teaspoons baking powder',
        '1 teaspoon salt',
        '1/4 cup sugar',
        '1/2 cup butter',
        '1/2 cup cinnamon sugar'
      ],
      instructions:
          "Roll out dough. Spread butter and cinnamon sugar. Roll up and slice. Bake until golden brown.",
      cuisine: 'Swedish'),
  MoreRecipes(
      name: 'Muffins',
      imgUrl: 'assets/images/Muffins.jpeg',
      category: 'Breakfast',
      origin: 'American',
      ingredients: [
        '2 cups flour',
        '1 cup sugar',
        '2 teaspoons baking powder',
        '1/2 cup milk',
        '1 large egg',
        '2 tablespoons butter, melted'
      ],
      measure: [
        '2 cups flour',
        '1 cup sugar',
        '2 teaspoons baking powder',
        '1/2 cup milk',
        '1 egg',
        '2 tablespoons butter'
      ],
      instructions:
          "Whisk together flour, sugar, baking powder. In a separate bowl, whisk together milk, egg, and melted butter. Combine wet and dry ingredients. Pour into muffin tin."),
  MoreRecipes(
      name: 'Yogurt Parfait',
      imgUrl: 'assets/images/Yogurt parfait2.jpeg',
      category: 'Breakfast',
      origin: 'American',
      ingredients: [
        '1 cup yogurt',
        '1/2 cup granola',
        '1 cup mixed berries',
        '1 tablespoon honey'
      ],
      measure: [
        '1 cup yogurt',
        '1/2 cup granola',
        '1 cup berries',
        '1 tablespoon honey'
      ],
      instructions:
          "Layer yogurt, granola, and berries in bowl. Drizzle with honey.",
      cuisine: 'American'),
  MoreRecipes(
      name: 'Granola Bars',
      imgUrl: 'assets/images/Granola1.jpeg',
      category: 'Breakfast, Snack',
      origin: 'American',
      ingredients: [
        '2 cups rolled oats',
        '1 cup chopped nuts',
        '1/2 cup honey',
        '1/4 cup brown sugar',
        '1/4 cup vegetable oil'
      ],
      measure: [
        '2 cups oats',
        '1 cup nuts',
        '1/2 cup honey',
        '1/4 cup brown sugar',
        '1/4 cup oil'
      ],
      instructions:
          "Mix oats, nuts, honey, brown sugar, and oil. Press into pan. Bake until golden.",
      cuisine: 'American'),
  MoreRecipes(
      name: 'Breakfast Sandwich',
      imgUrl: 'assets/images/Breakfast sandwich2.jpeg',
      category: 'Breakfast',
      origin: 'American',
      ingredients: [
        '2 eggs',
        '2 slices bread',
        '2 slices cheese',
        '2 slices bacon'
      ],
      measure: [
        '2 eggs',
        '2 slices bread',
        '2 slices cheese',
        '2 slices bacon'
      ],
      instructions:
          "Cook bacon. Fry eggs. Assemble sandwich with eggs, cheese, bacon on toasted bread.",
      cuisine: 'American'),
  MoreRecipes(
      name: 'Biscotti',
      imgUrl: 'assets/images/Biscotti.jpeg',
      category: 'Breakfast, Dessert',
      origin: 'Italian',
      ingredients: [
        '2 cups flour',
        '1 cup sugar',
        '2 teaspoons baking powder',
        '1/2 cup almonds',
        '1/2 cup chocolate chips'
      ],
      measure: [
        '2 cups flour',
        '1 cup sugar',
        '2 teaspoons baking powder',
        '1/2 cup almonds',
        '1/2 cup chocolate chips'
      ],
      instructions:
          "Mix flour, sugar, baking powder, almonds, and chocolate chips. Shape into log. Bake. Slice.",
      cuisine: 'Italian'),
  MoreRecipes(
      name: 'Crema Catalana',
      imgUrl: 'assets/images/Crema catalana.jpeg',
      category: 'Breakfast, Dessert',
      origin: 'Spanish',
      ingredients: [
        '3 cups milk',
        '1 cup sugar',
        '3 large egg yolks',
        '1/2 teaspoon vanilla'
      ],
      measure: [
        '3 cups milk',
        '1 cup sugar',
        '3 egg yolks',
        '1/2 teaspoon vanilla'
      ],
      instructions:
          "Whisk milk, sugar, egg yolks, and vanilla. Pour into ramekins. Bake until set.",
      cuisine: 'Spanish')
];
List<MoreRecipes> lunch = [
  MoreRecipes(
      name: 'Caesar Salad',
      imgUrl: 'assets/images/Chicken ceasar.jpeg',
      category: 'Lunch',
      origin: 'Italian',
      ingredients: [
        '2 cups romaine lettuce',
        '1/2 cup croutons',
        '1/4 cup parmesan cheese',
        '2 tablespoons Caesar dressing'
      ],
      measure: ['2 cups', '1/2 cup', '1/4 cup', '2 tablespoons'],
      instructions:
          '1. Toss the lettuce in Caesar dressing.\n2. Add croutons and sprinkle with parmesan cheese.\n3. Serve immediately.',
      cuisine: 'Italian'),
  MoreRecipes(
      name: 'Grilled Cheese Sandwich',
      imgUrl: 'assets/images/Grilledcheese1.jpeg',
      category: 'Lunch',
      origin: 'American',
      ingredients: [
        '2 slices of bread',
        '2 slices of cheese',
        '2 tablespoons butter'
      ],
      measure: ['2 slices', '2 slices', '2 tablespoons'],
      instructions:
          '1. Butter one side of each slice of bread.\n2. Place a slice of cheese between the bread slices, buttered sides out.\n3. Grill on a skillet over medium heat until golden brown on both sides.\n4. Serve warm.',
      cuisine: 'American'),
  MoreRecipes(
      name: 'Chicken Alfredo',
      imgUrl: 'assets/images/alfredo.jpg',
      category: 'Dinner',
      origin: 'Italy',
      ingredients: [
        '2 chicken breasts, cooked and sliced',
        '200g fettuccine pasta',
        '1 cup heavy cream',
        '1/2 cup parmesan cheese',
        '1/4 cup butter',
        '2 garlic cloves, minced',
        'Salt and pepper to taste'
      ],
      measure: [
        '2 breasts',
        '200g',
        '1 cup',
        '1/2 cup',
        '1/4 cup',
        '2 cloves',
        'To taste',
        'To taste'
      ],
      instructions:
          '1. Cook the pasta according to package instructions.\n2. In a pan, melt the butter and sauté the garlic until fragrant.\n3. Add the heavy cream and parmesan cheese, then stir until smooth.\n4. Season with salt and pepper, and toss the pasta with the sauce.\n5. Add the chicken slices and serve warm.',
      cuisine: 'Italian'),
  MoreRecipes(
      name: 'Salad Bowl',
      imgUrl: 'assets/images/Bowl1.jpeg',
      category: ' Lunch',
      origin: 'Unknown',
      ingredients: [
        "2 cups mixed greens",
        "1/2 cucumber",
        "1/2 bell pepper",
        "1/4 cup olives",
        "1/4 cup feta cheese"
      ],
      measure: ["2 cups", "1/2", "1/2", "1/4 cup", "1/4 cup"],
      instructions: 'Toss all ingredients together with dressing of choice.',
      cuisine: 'Unknown'),
  MoreRecipes(
      name: 'Soup and Sandwich',
      imgUrl: 'assets/images/Soup n which2.jpeg',
      category: 'Lunch',
      origin: 'Unknown',
      ingredients: ["1 cup tomato soup", "2 slices bread", "1/4 cup cheese"],
      measure: ["1 cup", "2 slices", "1/4 cup"],
      instructions:
          'Heat soup and make grilled cheese sandwich with bread and cheese.',
      cuisine: "Unknown"),
  MoreRecipes(
      name: 'Turkey Club Sandwich',
      imgUrl: 'assets/images/Turkey club2.jpeg',
      category: 'Lunch',
      origin: 'American',
      ingredients: [
        '4 slices bread',
        '4 ounces turkey breast',
        '2 lettuce leaves',
        '2 tomato slices',
        '2 slices bacon'
      ],
      measure: [
        '4 slices bread',
        '4 ounces turkey',
        '2 lettuce leaves',
        '2 tomato slices',
        '2 slices bacon'
      ],
      instructions:
          "Assemble sandwich with turkey, lettuce, tomato, bacon on toasted bread.",
      cuisine: 'American'),
  MoreRecipes(
      name: 'Veggie Burger',
      imgUrl: 'assets/images/Veggie burger1.jpeg',
      category: 'Lunch',
      origin: 'American',
      ingredients: [
        '4 veggie patties',
        '4 slices bread',
        '2 lettuce leaves',
        '2 tomato slices',
        '2 slices cheese'
      ],
      measure: [
        '4 veggie patties',
        '4 slices bread',
        '2 lettuce leaves',
        '2 tomato slices',
        '2 slices cheese'
      ],
      instructions:
          "Grill veggie patties. Assemble burger with lettuce, tomato, cheese on toasted bread.",
      cuisine: 'American'),
  MoreRecipes(
      name: 'Reuben Sandwich',
      imgUrl: 'assets/images/Reuben.jpeg',
      category: 'Lunch',
      origin: 'American',
      ingredients: [
        '4 slices rye bread',
        '4 ounces corned beef',
        '2 slices Swiss cheese',
        '2 tablespoons sauerkraut'
      ],
      measure: [
        '4 slices rye bread',
        '4 ounces corned beef',
        '2 slices Swiss cheese',
        '2 tablespoons sauerkraut'
      ],
      instructions:
          "Assemble sandwich with corned beef, Swiss cheese, sauerkraut on toasted rye bread.",
      cuisine: 'American'),
  MoreRecipes(
      name: 'Chicken Quesadilla',
      imgUrl: 'assets/images/Quesadilla2.jpeg',
      category: 'Lunch',
      origin: 'Mexican',
      ingredients: [
        '4 tortillas',
        '1 pound shredded chicken',
        '2 cups shredded cheese',
        '1/4 cup salsa'
      ],
      measure: [
        '4 tortillas',
        '1 pound chicken',
        '2 cups cheese',
        '1/4 cup salsa'
      ],
      instructions:
          "Layer chicken, cheese, salsa inside tortilla. Cook until crispy and melted.",
      cuisine: 'Mexican'),
  MoreRecipes(
      name: 'Fish and Chips',
      imgUrl: 'assets/images/Fish and chips1.jpeg',
      category: 'Lunch',
      origin: 'British',
      ingredients: [
        '4 fish fillets',
        '1 cup batter mix',
        '1 cup vegetable oil'
      ],
      measure: ['4 fish fillets', '1 cup batter mix', '1 cup vegetable oil'],
      instructions: "Batter fish fillets. Fry until crispy. Serve with chips.",
      cuisine: 'British'),
  MoreRecipes(
      name: 'Chicken Tenders',
      imgUrl: 'assets/images/Tenders1.jpeg',
      category: 'Lunch',
      origin: 'American',
      ingredients: [
        '1 pound chicken strips',
        '1 cup breading mix',
        '1 cup vegetable oil'
      ],
      measure: ['1 pound chicken', '1 cup breading mix', '1 cup vegetable oil'],
      instructions: "Bread chicken strips. Fry until crispy.",
      cuisine: 'American'),
  MoreRecipes(
      name: 'Meatball Sub',
      imgUrl: 'assets/images/Meatball1.jpeg',
      category: 'Lunch',
      origin: 'Italian-American',
      ingredients: [
        '4 sub rolls',
        '8 meatballs',
        '1 cup marinara sauce',
        '1 cup melted mozzarella'
      ],
      measure: [
        '4 sub rolls',
        '8 meatballs',
        '1 cup marinara sauce',
        '1 cup mozzarella'
      ],
      instructions:
          "Assemble sub with meatballs, marinara sauce, melted mozzarella.",
      cuisine: 'Italian-American'),
  MoreRecipes(
      name: 'Chicken Fajitas',
      imgUrl: 'assets/images/Fajitas2.jpeg',
      category: 'Lunch',
      origin: 'Mexican',
      ingredients: [
        '1 pound chicken breast',
        '1 cup sliced bell peppers',
        '1 cup sliced onions',
        '4 tortillas'
      ],
      measure: [
        '1 pound chicken',
        '1 cup bell peppers',
        '1 cup onions',
        '4 tortillas'
      ],
      instructions: "Cook chicken, bell peppers, onions. Serve with tortillas.",
      cuisine: 'Mexican'),
  MoreRecipes(
      name: 'Pork Chops',
      imgUrl: 'assets/images/Chops2.jpeg',
      category: 'Lunch',
      origin: 'American',
      ingredients: ['4 pork chops', '1 cup barbecue sauce'],
      measure: ['4 pork chops', '1 cup barbecue sauce'],
      instructions: "Grill pork chops. Brush with barbecue sauce.",
      cuisine: 'American'),
  MoreRecipes(
      name: 'Gyro',
      imgUrl: 'assets/images/gyro.jpg',
      category: 'Lunch',
      origin: 'Greek',
      ingredients: [
        '4 pita bread',
        '4 ounces lamb',
        '1 cup tomato slices',
        '1 cup cucumber slices'
      ],
      measure: [
        '4 pita bread',
        '4 ounces lamb',
        '1 cup tomato slices',
        '1 cup cucumber slices'
      ],
      instructions: "Assemble gyro with lamb, tomato, cucumber on pita bread.",
      cuisine: 'Greek'),
//MoreRecipes(grilled chicken),
//MoreRecipes(salad bowl),
  MoreRecipes(
      name: 'Soup and Sandwich',
      imgUrl: 'assets/images/Soup n which2.jpeg',
      category: 'Lunch',
      origin: 'American',
      ingredients: [
        '2 cups soup',
        '4 slices bread',
        '2 tablespoons butter',
        '2 slices cheese'
      ],
      measure: [
        '2 cups soup',
        '4 slices bread',
        '2 tablespoons butter',
        '2 slices cheese'
      ],
      instructions: "Serve soup with buttered bread and melted cheese.",
      cuisine: 'American'),
  MoreRecipes(
      name: 'Wraps',
      imgUrl: 'assets/images/Wrap1.jpeg',
      category: 'Lunch',
      origin: 'Middle Eastern',
      ingredients: [
        '4 large tortillas',
        '4 ounces hummus',
        '1 cup shredded lettuce',
        '1 cup sliced cucumber',
        '1/2 cup sliced tomatoes'
      ],
      measure: [
        '4 tortillas',
        '4 ounces hummus',
        '1 cup lettuce',
        '1 cup cucumber',
        '1/2 cup tomatoes'
      ],
      instructions:
          "Spread hummus on tortilla. Add lettuce, cucumber, tomatoes. Roll up.",
      cuisine: 'Middle Eastern'),
  MoreRecipes(
      name: 'Paninis',
      imgUrl: 'assets/images/Panini1.jpeg',
      category: 'Lunch',
      origin: 'Italian',
      ingredients: [
        '4 slices bread',
        '4 slices cheese',
        '4 slices ham',
        '1/4 cup pesto',
        '1/4 cup sliced onions',
        '1/4 cup sliced bell peppers'
      ],
      measure: [
        '4 slices bread',
        '4 slices cheese',
        '4 slices ham',
        '1/4 cup pesto',
        '1/4 cup onions',
        '1/4 cup bell peppers'
      ],
      instructions:
          "Layer cheese, ham, pesto, onions, bell peppers between bread slices. Grill until crispy.",
      cuisine: 'Italian'),
  MoreRecipes(
      name: 'Burgers',
      imgUrl: 'assets/images/burgers.jpg',
      category: 'Lunch',
      origin: 'American',
      ingredients: [
        '4 beef patties',
        '4 slices bread',
        '2 lettuce leaves',
        '2 tomato slices',
        '2 slices cheese',
        '1/4 cup mayonnaise',
        '1/4 cup ketchup'
      ],
      measure: [
        '4 beef patties',
        '4 slices bread',
        '2 lettuce leaves',
        '2 tomato slices',
        '2 slices cheese',
        '1/4 cup mayonnaise',
        '1/4 cup ketchup'
      ],
      instructions:
          "Grill beef patties. Assemble burger with lettuce, tomato, cheese, mayonnaise, ketchup on toasted bread.",
      cuisine: 'American'),
  MoreRecipes(
      name: 'Tacos',
      imgUrl: 'assets/images/Tacos1.jpeg',
      category: 'Lunch, Mexican',
      origin: 'Mexican',
      ingredients: [
        '4 corn tortillas',
        '1 pound ground beef',
        '1/2 cup shredded cheese',
        '1/2 cup diced tomatoes',
        '1/4 cup salsa',
        '1/4 cup sour cream',
        '1/4 cup diced onions'
      ],
      measure: [
        '4 tortillas',
        '1 pound ground beef',
        '1/2 cup cheese',
        '1/2 cup tomatoes',
        '1/4 cup salsa',
        '1/4 cup sour cream',
        '1/4 cup onions'
      ],
      instructions:
          "Cook ground beef. Assemble tacos with beef, cheese, tomatoes, salsa, sour cream, onions.",
      cuisine: 'Mexican'),
  MoreRecipes(
      name: 'Quesadillas',
      imgUrl: 'assets/images/Quesadilla2.jpeg',
      category: 'Lunch',
      origin: 'Mexican',
      ingredients: [
        '4 tortillas',
        '2 cups shredded cheese',
        '1/2 cup diced chicken',
        '1/4 cup salsa',
        '1/4 cup sour cream'
      ],
      measure: [
        '4 tortillas',
        '2 cups cheese',
        '1/2 cup chicken',
        '1/4 cup salsa',
        '1/4 cup sour cream'
      ],
      instructions:
          "Layer cheese, chicken, salsa inside tortilla. Cook until crispy and melted.",
      cuisine: 'Mexican'),
//MoreRecipes(falalel),MoreRecipes(chicken ceasar)
];
List<MoreRecipes> dinner = [
  MoreRecipes(
      name: 'Spaghetti Bolognese',
      imgUrl: 'assets/images/bolognese.jpeg',
      category: 'Dinner',
      origin: 'Italian',
      ingredients: [
        '200g spaghetti',
        '100g ground beef',
        '1 onion, chopped',
        '2 garlic cloves, minced',
        '1 cup tomato sauce',
        'Salt and pepper to taste',
        'Parmesan cheese (optional)'
      ],
      measure: [
        '200g',
        '100g',
        '1 onion',
        '2 cloves',
        '1 cup',
        'To taste',
        'Optional'
      ],
      instructions:
          '1. Cook spaghetti according to package instructions.\n2. In a pan, sauté onions and garlic until fragrant.\n3. Add ground beef and cook until browned.\n4. Add tomato sauce and let it simmer for 20 minutes.\n5. Season with salt and pepper, and serve over spaghetti.',
      cuisine: 'Italian'),
  MoreRecipes(
      name: 'Chicken Parmesan',
      imgUrl: 'assets/images/Pollo parmesan2.jpeg',
      category: 'Dinner',
      origin: 'Unknown',
      ingredients: [
        "1 chicken breast",
        "1/2 cup marinara sauce",
        "1/2 cup mozzarella cheese",
        "1/4 cup parmesan cheese",
        "1/2 cup breadcrumbs"
      ],
      measure: ["1", "1/2 cup", "1/2 cup", "1/4 cup", "1/2 cup"],
      instructions:
          'Bread chicken, fry until golden, top with sauce and cheese, and bake until melted.',
      cuisine: 'Unknown'),
//MoreRecipes(tikka),
  MoreRecipes(
      name: 'Grilled Steak with Roasted Vegetables',
      imgUrl: 'assets/images/Veg steak2.jpeg',
      category: 'Dinner',
      origin: 'American',
      ingredients: [
        '4 steaks',
        '2 cups mixed vegetables',
        '2 tablespoons olive oil',
        'Salt and pepper'
      ],
      measure: ['4 steaks', '2 cups vegetables', '2 tablespoons olive oil'],
      instructions:
          "Grill steak. Roast vegetables with olive oil, salt, pepper.",
      cuisine: 'American'),
  MoreRecipes(
      name: 'Chicken Parmesan',
      imgUrl: 'assets/images/Pollo parmesan2.jpeg',
      category: 'Dinner',
      origin: 'Italian-American',
      ingredients: [
        '4 chicken breasts',
        '1 cup breadcrumbs',
        '1 cup marinara sauce',
        '1 cup melted mozzarella'
      ],
      measure: [
        '4 chicken breasts',
        '1 cup breadcrumbs',
        '1 cup marinara sauce',
        '1 cup mozzarella'
      ],
      instructions:
          "Bread chicken. Fry until crispy. Top with marinara sauce, melted mozzarella.",
      cuisine: 'Italian-American'),
  MoreRecipes(
      name: 'Baked Salmon with Quinoa and Broccoli',
      imgUrl: 'assets/images/Broccoli quinoa2.jpeg',
      category: 'Dinner',
      origin: 'International',
      ingredients: [
        '4 salmon fillets',
        '1 cup quinoa',
        '2 cups broccoli',
        '2 tablespoons olive oil'
      ],
      measure: [
        '4 salmon fillets',
        '1 cup quinoa',
        '2 cups broccoli',
        '2 tablespoons olive oil'
      ],
      instructions: "Bake salmon. Cook quinoa. Steam broccoli with olive oil.",
      cuisine: 'International'),
  MoreRecipes(
      name: 'Beef Tacos',
      imgUrl: 'assets/images/Beef tacos2.jpeg',
      category: 'Dinner, Mexican',
      origin: 'Mexican',
      ingredients: [
        '1 pound ground beef',
        '4 tortillas',
        '1 cup shredded cheese',
        '1 cup diced tomatoes',
        '1/4 cup salsa'
      ],
      measure: [
        '1 pound ground beef',
        '4 tortillas',
        '1 cup cheese',
        '1 cup tomatoes',
        '1/4 cup salsa'
      ],
      instructions:
          "Cook ground beef. Assemble tacos with beef, cheese, tomatoes, salsa.",
      cuisine: 'Mexican'),
//MoreRecipes(fajitas),
  MoreRecipes(
      name: 'Pork Chops with Apple Cider Glaze',
      imgUrl: 'assets/images/Chops cider.jpeg',
      category: 'Dinner',
      origin: 'American',
      ingredients: ['4 pork chops', '1 cup apple cider', '2 tablespoons honey'],
      measure: ['4 pork chops', '1 cup apple cider', '2 tablespoons honey'],
      instructions: "Grill pork chops. Brush with apple cider glaze.",
      cuisine: 'American'),
//MoreRecipes(veggie),
  MoreRecipes(
      name: ' Chicken and Mushroom Risotto',
      imgUrl: 'assets/images/Chicken risotto.jpeg',
      category: 'Dinner',
      origin: 'Italian',
      ingredients: [
        '1 cup Arborio rice',
        '4 cups chicken broth',
        '2 cups mixed mushrooms',
        '2 tablespoons olive oil'
      ],
      measure: [
        '1 cup rice',
        '4 cups broth',
        '2 cups mushrooms',
        '2 tablespoons olive oil'
      ],
      instructions: "Cook rice with chicken broth, mushrooms, olive oil.",
      cuisine: 'Italian'),
  MoreRecipes(
      name: 'Grilled Chicken with Pineapple Salsa',
      imgUrl: 'assets/images/Pine salsa pollo2.jpeg',
      category: 'Dinner',
      origin: "Hawaiian'",
      ingredients: [
        '4 chicken breasts',
        '1 cup pineapple',
        '1/2 cup red onion',
        '1 jalapeño pepper'
      ],
      measure: [
        '4 chicken breasts',
        '1 cup pineapple',
        '1/2 cup onion',
        '1 jalapeño'
      ],
      instructions: "Grill chicken. Mix pineapple, onion, jalapeño for salsa.",
      cuisine: 'Hawaiian'),
  MoreRecipes(
      name: 'Beef and Vegetable Kabobs',
      imgUrl: 'assets/images/Kabob1.jpeg',
      category: 'Dinner',
      origin: 'Middle Eastern',
      ingredients: [
        '1 pound beef',
        '2 cups mixed vegetables',
        '2 tablespoons olive oil'
      ],
      measure: ['1 pound beef', '2 cups vegetables', '2 tablespoons olive oil'],
      instructions:
          "Alternate beef, vegetables on skewers. Grill with olive oil.",
      cuisine: 'Middle Eastern'),
  MoreRecipes(
      name: 'Shrimp Scampi Pasta',
      imgUrl: 'assets/images/Shrimp pasta.jpeg',
      category: 'Dinner',
      origin: 'Italian',
      ingredients: [
        '1 pound shrimp',
        '8 ounces pasta',
        '2 tablespoons butter',
        '2 cloves garlic',
        '1/4 cup white wine'
      ],
      measure: [
        '1 pound shrimp',
        '8 ounces pasta',
        '2 tablespoons butter',
        '2 cloves garlic',
        '1/4 cup white wine'
      ],
      instructions: "Cook pasta. Saute shrimp, butter, garlic, white wine.",
      cuisine: 'Italian'),
//MoreRecipes(tikka),
  MoreRecipes(
      name: 'Beef and Mushroom Stroganoff',
      imgUrl: 'assets/images/strogan.jpg',
      category: 'Dinner',
      origin: 'Russian',
      ingredients: [
        '1 pound beef',
        '2 cups mushrooms',
        '1 cup beef broth',
        '1 tablespoon Dijon mustard'
      ],
      measure: [
        '1 pound beef',
        '2 cups mushrooms',
        '1 cup beef broth',
        '1 tablespoon Dijon mustard'
      ],
      instructions:
          "Saute beef, mushrooms. Add beef broth, mustard. Serve over noodles.",
      cuisine: 'Russian'),
  MoreRecipes(
      name: 'Roasted Chicken with Potatoes and Carrots',
      imgUrl: 'assets/images/caro.jpg',
      category: 'Dinner',
      origin: 'American',
      ingredients: [
        '1 whole chicken',
        '2 potatoes',
        '4 carrots',
        '2 tablespoons olive oil'
      ],
      measure: [
        '1 whole chicken',
        '2 potatoes',
        '4 carrots',
        '2 tablespoons olive oil'
      ],
      instructions: "Roast chicken, potatoes, carrots with olive oil.",
      cuisine: 'American'),
  MoreRecipes(
      name: 'Pan-Seared Salmon with Lemon and Herbs',
      imgUrl: 'assets/images/Salmon herbs.jpeg',
      category: 'Dinner',
      origin: 'Mediterranean',
      ingredients: [
        '4 salmon fillets',
        '2 lemons',
        '1/4 cup olive oil',
        '2 tablespoons chopped herbs'
      ],
      measure: [
        '4 salmon fillets',
        '2 lemons',
        '1/4 cup olive oil',
        '2 tablespoons herbs'
      ],
      instructions: "Pan-sear salmon. Top with lemon juice, olive oil, herbs.",
      cuisine: 'Mediterranean'),
  MoreRecipes(
      name: 'Vegetable Curry',
      imgUrl: 'assets/images/Veg curry.jpeg',
      category: 'Dinner',
      origin: 'Indian',
      ingredients: [
        '2 cups mixed vegetables',
        '2 tablespoons curry powder',
        '1 can coconut milk'
      ],
      measure: [
        '2 cups vegetables',
        '2 tablespoons curry powder',
        '1 can coconut milk'
      ],
      instructions: "Saute vegetables, curry powder. Add coconut milk.",
      cuisine: 'Indian'),
  MoreRecipes(
      name: 'Grilled Pork Chops with Peach Salsa',
      imgUrl: 'assets/images/Peach chops.jpeg',
      category: 'Dinner',
      origin: 'Southern',
      ingredients: [
        '4 pork chops',
        '2 peaches',
        '1/4 cup red onion',
        '1 jalapeño pepper'
      ],
      measure: ['4 pork chops', '2 peaches', '1/4 cup onion', '1 jalapeño'],
      instructions: "Grill pork chops. Mix peaches, onion, jalapeño for salsa.",
      cuisine: 'Southern'),
  MoreRecipes(
      name: 'Chicken Quesadilla Casserole',
      imgUrl: 'assets/images/Casserole pollo2.jpeg',
      category: 'Dinner',
      origin: 'Mexican',
      ingredients: [
        '1 pound chicken',
        '4 tortillas',
        '2 cups shredded cheese',
        '1 can enchilada sauce'
      ],
      measure: [
        '1 pound chicken',
        '4 tortillas',
        '2 cups cheese',
        '1 can enchilada sauce'
      ],
      instructions: "Layer chicken, tortillas, cheese, enchilada sauce.",
      cuisine: 'Mexican'),
  MoreRecipes(
      name: 'Baked Cod with Garlic Butter',
      imgUrl: 'assets/images/cod.jpg',
      category: 'Dinner',
      origin: 'American',
      ingredients: ['4 cod fillets', '2 tablespoons butter', '2 cloves garlic'],
      measure: ['4 cod fillets', '2 tablespoons butter', '2 cloves garlic'],
      instructions: "Bake cod. Top with garlic butter.",
      cuisine: 'American'),
  MoreRecipes(
      name: 'Turkey Meatball Subs',
      imgUrl: 'assets/images/Meatball1.jpeg',
      category: 'Dinner',
      origin: 'Italian-American',
      ingredients: [
        '1 pound turkey',
        '1 cup breadcrumbs',
        '1 cup marinara sauce',
        '4 sub rolls'
      ],
      measure: [
        '1 pound turkey',
        '1 cup breadcrumbs',
        '1 cup marinara sauce',
        '4 sub rolls'
      ],
      instructions:
          "Mix turkey, breadcrumbs. Form meatballs. Bake. Serve on sub rolls.",
      cuisine: 'Unknown'),
];
List<MoreRecipes> dessert = [
  MoreRecipes(
      name: 'Chocolate Cake',
      imgUrl: 'assets/images/coco cake.jpeg',
      category: 'Desserts',
      origin: 'American',
      ingredients: [
        '1 cup all-purpose flour',
        '1/2 cup cocoa powder',
        '1 teaspoon baking soda',
        '1/2 teaspoon salt',
        '1 cup sugar',
        '2 eggs',
        '1/2 cup buttermilk',
        '1/2 cup vegetable oil',
        '1 teaspoon vanilla extract'
      ],
      measure: [
        '1 cup',
        '1/2 cup',
        '1 teaspoon',
        '1/2 teaspoon',
        '1 cup',
        '2 eggs',
        '1/2 cup',
        '1/2 cup',
        '1 teaspoon'
      ],
      instructions:
          '1. Preheat the oven to 350°F (175°C).\n2. Mix the dry ingredients in one bowl and the wet ingredients in another.\n3. Combine both and pour into a greased cake pan.\n4. Bake for 30-35 minutes, or until a toothpick comes out clean.\n5. Let it cool before serving.',
      cuisine: 'American'),
  MoreRecipes(
      name: 'Vanilla Cupcakes',
      imgUrl: 'assets/images/cup van.jpeg',
      category: 'Desserts',
      origin: 'American',
      ingredients: [
        '1 cup all-purpose flour',
        '1/2 cup sugar',
        '1/4 cup butter, softened',
        '2 eggs',
        '1/2 cup milk',
        '1 teaspoon vanilla extract',
        '1 teaspoon baking powder'
      ],
      measure: [
        '1 cup',
        '1/2 cup',
        '1/4 cup',
        '2 eggs',
        '1/2 cup',
        '1 teaspoon',
        '1 teaspoon'
      ],
      instructions:
          '1. Preheat the oven to 350°F (175°C).\n2. Mix all the dry ingredients in one bowl.\n3. In another bowl, whisk the eggs, milk, butter, and vanilla extract.\n4. Combine the wet and dry ingredients and divide the batter into cupcake tins.\n5. Bake for 18-20 minutes or until a toothpick comes out clean.\n6. Cool before frosting.',
      cuisine: 'American'),
  MoreRecipes(
    name: 'Chocolate Chip Cookies',
    imgUrl: 'assets/images/coco chip.gif',
    measure: ['Included among ingredients'],
    cuisine: 'Unknown',
    origin: 'Unknown',
    category: 'Dessert',
    ingredients: [
      '- 2 cups flour',
      '- 1 cup butter',
      '- 3/4 cup sugar',
      '- 1 cup chocolate chips'
    ],
    instructions:
        '1. Preheat oven to 375°F.\n2. Mix flour, butter, sugar.\n3. Add chocolate chips.\n4. Bake for 10 minutes.',
  ),
  MoreRecipes(
    name: 'Tiramisu',
    imgUrl: 'assets/images/tira.jpg',
    measure: ['Included among ingredients'],
    cuisine: 'Unknown',
    origin: 'Unknown',
    category: 'Dessert',
    ingredients: [
      '- 12 ladyfingers',
      '- 1 cup mascarpone cheese',
      '- 1/2 cup espresso',
    ],
    instructions:
        '1. Dip ladyfingers in espresso.\n2. Layer with mascarpone cheese.',
  ),
  MoreRecipes(
    name: 'Baklava',
    category: 'Dessert',
    imgUrl: 'assets/images/bak.jpg',
    measure: ['Included among ingredients'],
    cuisine: 'Unknown',
    origin: 'Unknown',
    ingredients: [
      '- 1 package phyllo dough',
      '- 1 cup chopped nuts',
      '- 1/2 cup honey',
    ],
    instructions: '1. Layer phyllo dough, nuts.\n2. Drizzle with honey.',
  ),
  MoreRecipes(
    name: 'Cheesecake with Strawberry Sauce',
    category: 'Dessert',
    imgUrl: 'assets/images/straw.jpg',
    measure: ['Included among ingredients'],
    cuisine: 'Unknown',
    origin: 'Unknown',
    ingredients: [
      '- 1 cup graham cracker crumbs',
      '- 2 cups cream cheese',
      '- 1 cup strawberries'
    ],
    instructions:
        '1. Mix graham cracker crumbs.\n2. Blend cream cheese.\n3. Top with strawberry sauce.',
  ),
  MoreRecipes(
    name: 'Mango Sticky Rice',
    category: 'Desssert',
    imgUrl: 'assets/images/mango.jpg',
    measure: ['Included among ingredients'],
    cuisine: 'Unknown',
    origin: 'Unknown',
    ingredients: [
      '- 1 cup glutinous rice',
      '- 1 cup mango',
      '- 1 cup coconut milk',
    ],
    instructions:
        '1. Cook glutinous rice.\n2. Mix mango, coconut milk.\n3. Serve together.',
  ),
  MoreRecipes(
    name: 'Chocolate Avocado Mousse',
    category: 'Dessert',
    imgUrl: 'assets/images/avocado mousse1.jpeg',
    measure: ['Included among ingredients'],
    cuisine: 'Unknown',
    origin: 'Unknown',
    ingredients: ['avocados', 'cocoa powder', 'sugar', ' heavy cream'],
    instructions: 'Blend ingredients, chill until set.',
  ),
  MoreRecipes(
    name: 'Lemon Lavender Bars',
    ingredients: ['lemon zest', 'lavender', 'sugar', 'flour', 'butter'],
    category: 'dessert',
    imgUrl: 'assets/images/lavender bars.jpeg',
    measure: ['Included among ingredients'],
    cuisine: 'Unknown',
    origin: 'Unknown',
    instructions: 'Mix ingredients,\n bake until golden.',
  ),
  MoreRecipes(
    name: 'Raspberry Sorbet',
    category: 'Dessert',
    imgUrl: 'assets/images/sor.jpg',
    measure: ['Included among ingredients'],
    cuisine: 'Unknown',
    origin: 'Unknown',
    ingredients: ['raspberries', 'sugar', 'water'],
    instructions: 'Blend ingredients\n freeze until set.',
  ),
];
List<MoreRecipes> refreshments = [
  MoreRecipes(
      name: 'Lemonade',
      imgUrl: 'assets/images/nade.jpg',
      category: 'Drinks',
      origin: 'American',
      ingredients: [
        '2 lemons, juiced',
        '1 tablespoon sugar',
        '1 cup water',
        'Ice cubes'
      ],
      measure: ['2 lemons', '1 tablespoon', '1 cup', 'To taste'],
      instructions:
          '1. Squeeze the juice from the lemons.\n2. Mix with sugar and water.\n3. Stir well and add ice cubes.\n4. Serve chilled.',
      cuisine: 'American'),
  MoreRecipes(
      name: 'Strawberry Smoothie',
      imgUrl: 'assets/images/berry.webp',
      category: 'Drinks',
      origin: 'American',
      ingredients: [
        '1 cup frozen strawberries',
        '1/2 cup yogurt',
        '1/2 cup milk',
        '1 tablespoon honey'
      ],
      measure: ['1 cup', '1/2 cup', '1/2 cup', '1 tablespoon'],
      instructions: '1. Blend all ingredients until smooth.\n2. Serve chilled.',
      cuisine: 'American'),
  MoreRecipes(
    name: 'Piña Colada',
    imgUrl: 'assets/images/pina.jpg',
    measure: ['Included among ingredients'],
    cuisine: 'Unknown',
    origin: 'Unknown',
    category: 'Drinks',
    ingredients: [
      '- 2 cups pineapple juice',
      '- 1 cup coconut cream',
      '- 1/2 cup rum'
    ],
    instructions: '1. Blend pineapple juice, coconut cream.\n2. Add rum.',
  ),
  MoreRecipes(
    name: 'Margarita',
    category: 'Drinks',
    imgUrl: 'assets/images/margarita.jpeg',
    measure: ['Included among ingredients'],
    cuisine: 'Unknown',
    origin: 'Unknown',
    ingredients: [
      '- 2 cups tequila',
      '- 1 cup lime juice',
      '- 1/2 cup triple sec'
    ],
    instructions: '1. Mix tequila, lime juice.\n2. Add triple sec.',
  ),
  MoreRecipes(
    name: 'Iced Coffee with Vanilla Ice Cream',
    category: 'Drinks',
    imgUrl: 'assets/images/vanilla.jpg',
    measure: ['Included among ingredients'],
    cuisine: 'Unknown',
    origin: 'Unknown',
    ingredients: [
      '- 2 cups coffee',
      '- 1 cup vanilla ice cream',
    ],
    instructions: '1. Brew coffee.\n2. Top with vanilla ice cream.',
  ),
  MoreRecipes(
    name: 'Chai Latte',
    category: 'Drinks',
    imgUrl: 'assets/images/chai latte.jpeg',
    measure: ['Included among ingredients'],
    cuisine: 'Unknown',
    origin: 'Unknown',
    ingredients: ['- 2 cups black tea', '- 1 cup milk', '- 1 tablespoon honey'],
    instructions: '1. Brew black tea.\n2. Mix milk, honey.\n3. Serve together.',
  ),
  MoreRecipes(
    name: 'Lemonade with Mint',
    category: 'Drinks',
    imgUrl: 'assets/images/mocha2.jpeg',
    measure: ['Included among ingredients'],
    cuisine: 'Unknown',
    origin: 'Unknown',
    ingredients: ['- 2 cups lemon juice', '- 1 cup sugar', '- 1/4 cup mint'],
    instructions: '1. Mix lemon juice, sugar.\n2. Add mint.\n3. Serve chilled.',
  ),
  MoreRecipes(
    name: 'Cucumber Lime Refresher',
    category: 'Drinks',
    imgUrl: 'assets/images/cucum.webp',
    measure: ['Included among ingredients'],
    cuisine: 'Unknown',
    origin: 'Unknown',
    ingredients: ['cucumber', 'lime juice', 'mint', 'water'],
    instructions: 'Mix ingredients\n serve chilled.',
  ),
  MoreRecipes(
    name: 'Iced Mocha Latte',
    category: 'Drinks',
    imgUrl: 'assets/images/iced.jpg',
    measure: ['Included among ingredients'],
    cuisine: 'Unknown',
    origin: 'Unknown',
    ingredients: ['coffee', 'chocolate' 'syrup', 'milk', 'ice'],
    instructions: 'Mix ingredients\n serve chilled.',
  ),
  MoreRecipes(
    name: 'Pineapple Ginger Fizz',
    category: 'Drinks',
    imgUrl: 'assets/images/fizz.jpeg',
    measure: ['Included among ingredients'],
    cuisine: 'Unknown',
    origin: 'Unknown',
    ingredients: ['pineapple' 'juice', 'ginger ale', 'lime juice'],
    instructions: 'Mix ingredients\n serve chilled.',
  )
];
List<MoreRecipes> snacks = [
  MoreRecipes(
      name: 'Guacamole',
      imgUrl: 'assets/images/guacamole.jpg',
      category: 'Snacks',
      origin: 'Mexican',
      ingredients: [
        '2 ripe avocados, mashed',
        '1/2 onion, finely chopped',
        '1 tomato, diced',
        '1 tablespoon lime juice',
        'Salt and pepper to taste',
        '1 small jalapeño, finely chopped (optional)'
      ],
      measure: [
        '2 avocados',
        '1/2 onion',
        '1 tomato',
        '1 tablespoon',
        'To taste',
        'To taste'
      ],
      instructions:
          '1. Mash the avocados in a bowl.\n2. Stir in the onion, tomato, lime juice, and jalapeño (if using).\n3. Season with salt and pepper.\n4. Serve with tortilla chips.',
      cuisine: 'Mexican'),
  MoreRecipes(
      name: 'Chips and Dip',
      imgUrl: 'assets/images/chip.jpg',
      category: 'Snacks',
      origin: 'Unknown',
      ingredients: ["1 bag tortilla chips", "1 cup salsa"],
      measure: ["1 bag", "1 cup"],
      instructions: 'Serve chips with salsa for dipping.',
      cuisine: 'Unknown'),
  MoreRecipes(
    name: 'Spicy Roasted Chickpeas',
    category: 'Snacks',
    imgUrl: 'assets/images/spicy.png',
    measure: ['Included among ingredients'],
    cuisine: 'Unknown',
    origin: 'Unknown',
    ingredients: [
      '- 1 can chickpeas',
      '- 2 tablespoons olive oil',
      '- 1 teaspoon cumin',
      '- 1/2 teaspoon cayenne pepper'
    ],
    instructions:
        '1. Preheat oven to 400°F.\n2. Rinse chickpeas.\n3. Mix olive oil, cumin, cayenne pepper.\n4. Roast chickpeas for 30 minutes.',
  ),
  MoreRecipes(
    name: 'Guacamole with Tortilla Chips',
    category: 'Snacks',
    imgUrl: 'assets/images/guaca.PNG',
    measure: ['Included among ingredients'],
    cuisine: 'Unknown',
    origin: 'Unknown',
    ingredients: ['- 3 avocados', '- 1 lime', '- 1/2 cup tortilla chips'],
    instructions:
        '1. Mash avocados.\n2. Mix lime juice.\n3. Serve with tortilla chips.',
  ),
  MoreRecipes(
    name: 'Hummus with Pita Bread',
    category: 'Snacks',
    imgUrl: 'assets/images/pita.jpg',
    measure: ['Included among ingredients'],
    cuisine: 'Unknown',
    origin: 'Unknown',
    ingredients: [
      '- 1 cup chickpeas',
      '- 1/4 cup tahini',
      '- 2 tablespoons lemon juice',
      '- 4 pita bread'
    ],
    instructions:
        '1. Blend chickpeas, tahini, lemon juice.\n2. Serve with pita bread.',
  ),
  MoreRecipes(
    name: 'Edamame',
    category: 'Snacks',
    imgUrl: 'assets/images/edamame.PNG',
    measure: ['Included among ingredients'],
    cuisine: 'Unknown',
    origin: 'Unknown',
    ingredients: [
      '- 1 cup edamame',
      '- 2 tablespoons water'
          '- Salt'
    ],
    instructions: '1. Boil water.\n2. Cook edamame.\n3. Season with salt.',
  ),
  MoreRecipes(
    name: 'Popcorn with Herbs and Cheese',
    category: 'Snacks',
    imgUrl: 'assets/images/herbs chese.jpg',
    measure: ['Included among ingredients'],
    cuisine: 'Unknown',
    origin: 'Unknown',
    ingredients: [
      '- 1 cup popcorn kernels',
      '- 1 tablespoon butter',
      '- 1/2 cup grated cheese',
      '- 1 tablespoon chopped herbs'
    ],
    instructions:
        '1. Pop popcorn.\n2. Mix butter, cheese, herbs.\n3. Toss popcorn.',
  ),
  MoreRecipes(
      name: 'Spinach and Artichoke Dip',
      category: 'Snacks',
      imgUrl: 'assets/images/spinach dip.jpeg',
      measure: ['Included among ingredients'],
      cuisine: 'Unknown',
      origin: 'Unknown',
      ingredients: [
        'spinach',
        'artichoke hearts',
        'cream cheese',
        'mayonnaise',
        'Parmesan cheese'
      ],
      instructions: 'Mix ingredients\n Bake until golden.'),
  MoreRecipes(
      name: 'Grilled Pineapple Skewers',
      category: 'Snacks',
      imgUrl: 'assets/images/pine skewer2.jpeg',
      measure: ['Included among ingredients'],
      cuisine: 'Unknown',
      origin: 'Unknown',
      ingredients: ['pineapple', 'brown sugar', 'cinnamon'],
      instructions:
          'Grill pineapple\n sprinkle with brown sugar and cinnamon.'),
  MoreRecipes(
      name: 'Roasted Chickpeas',
      category: 'Sacks',
      imgUrl: 'assets/images/roasted chickpeas.jpeg',
      measure: ['Included among ingredients'],
      cuisine: 'Unknown',
      origin: 'Unknown',
      ingredients: ['chickpeas', 'olive oil', 'salt'],
      instructions: 'Roast chickpeas in oven until crispy.')
];

List<MoreRecipes> vegan = [
  MoreRecipes(
      name: 'Vegan Tacos',
      imgUrl: 'assets/images/vegan tacos.jpg',
      category: 'Vegan',
      origin: 'Mexican',
      ingredients: [
        '2 soft corn tortillas',
        '1/2 cup cooked black beans',
        '1/2 avocado, sliced',
        '1/4 cup salsa',
        '1 tablespoon lime juice',
        'Cilantro leaves'
      ],
      measure: [
        '2 tortillas',
        '1/2 cup',
        '1/2 avocado',
        '1/4 cup',
        '1 tablespoon',
        'To taste'
      ],
      instructions:
          '1. Heat the tortillas in a skillet for 1 minute on each side.\n2. Fill each tortilla with black beans, avocado, salsa, and a squeeze of lime juice.\n3. Garnish with cilantro and serve immediately.',
      cuisine: 'Mexican'),
  MoreRecipes(
      name: 'Vegan Lasagna',
      imgUrl: 'assets/images/vegan lasagna.jpg',
      category: 'Vegan',
      origin: 'Unknown',
      ingredients: [
        "9 lasagna noodles",
        "2 cups spinach",
        "1 cup ricotta tofu",
        "2 cups marinara sauce",
        "1 cup nutritional yeast"
      ],
      measure: ["9", "2 cups", "1 cup", "2 cups", "1 cup"],
      instructions:
          'Layer ingredients and bake at 375°F (190°C) for 45 minutes.'),
  MoreRecipes(
      name: 'Vegan Burgers',
      imgUrl: 'assets/images/Veggie burger1.jpeg',
      category: 'Vegan',
      origin: 'Unknown',
      ingredients: [
        "1 can black beans",
        "1/2 cup breadcrumbs",
        "1/4 onion",
        "1 tablespoon chili powder",
        "1 tablespoon olive oil"
      ],
      measure: ["1 can", "1/2 cup", "1/4", "1 tablespoon", "1 tablespoon"],
      instructions:
          'Mash beans\n Mix with other ingredients and form patties\nCook until golden.'),
  MoreRecipes(
      name: 'Black Bean Tacos',
      category: 'Vegan',
      imgUrl: 'assets/images/black.jpeg',
      measure: ['Included among ingredients'],
      cuisine: 'Unknown',
      origin: 'Unknown',
      ingredients: ['black beans', 'taco shells', 'avocado', 'salsa'],
      instructions: 'Mix ingredients, serve.'),
  MoreRecipes(
      name: 'Grilled Chicken Salad',
      ingredients: [
        'grilled chicken',
        'mixed greens',
        'cherry tomatoes',
        'balsamic vinaigrette'
      ],
      category: 'Vegan',
      imgUrl: 'assets/images/Grilled1.jpeg',
      measure: ['Included among ingredients'],
      cuisine: 'Unknown',
      origin: 'Unknown',
      instructions: 'Mix ingredients, serve.'),
  MoreRecipes(
      name: 'Sweet Potato Fries',
      category: 'Vegan',
      imgUrl: 'assets/images/sweet fries',
      measure: ['Included among ingredients'],
      cuisine: 'Unknown',
      origin: 'Unknown',
      ingredients: ['sweet potatoes', 'olive oil', 'salt'],
      instructions: 'Bake sweet potatoes until crispy.'),
  MoreRecipes(
      name: 'Flourless Chocolate Cake',
      category: 'Vegan',
      imgUrl: 'assets/images/flourless.jpeg',
      measure: ['Included among ingredients'],
      cuisine: 'Unknown',
      origin: 'Unknown',
      ingredients: ['chocolate', 'sugar', 'eggs'],
      instructions: 'Mix ingredients, bake until set.'),
  MoreRecipes(
      name: 'Lentil Soup',
      category: 'Vegan',
      imgUrl: 'assets/images/lentil.jpeg',
      measure: ['Included among ingredients'],
      cuisine: 'Unknown',
      origin: 'Unknown',
      ingredients: ['lentils', 'vegetables', 'broth'],
      instructions: 'Simmer ingredients.'),
  MoreRecipes(
      name: 'Vegan Pizza',
      category: 'Vegan',
      imgUrl: 'assets/images/vegpizza.jpg',
      measure: ['Included among ingredients'],
      cuisine: 'Unknown',
      origin: 'Unknown',
      ingredients: ['crust', 'tomato sauce', 'vegan cheese'],
      instructions: 'Bake pizza.'),
  MoreRecipes(
      name: 'Chickpea Salad',
      category: 'Vegan',
      imgUrl: 'assets/images/chickpea salad.jpeg',
      measure: ['Included among ingredients'],
      cuisine: 'Unknown',
      origin: 'Unknown',
      ingredients: ['chickpeas', 'vegetables', 'lemon juice'],
      instructions: 'Mix ingredients.'),
];
List<MoreRecipes> vegeterian = [
  MoreRecipes(
      name: 'Vegetarian Stir-fry',
      imgUrl: 'assets/images/veggie stir fry2.jpeg',
      category: 'Vegetarian',
      origin: 'Chinese',
      ingredients: [
        '1 cup broccoli florets',
        '1 bell pepper, sliced',
        '1 carrot, sliced',
        '1 zucchini, sliced',
        '1/4 cup soy sauce',
        '2 tablespoons sesame oil',
        '2 garlic cloves, minced',
        '1 tablespoon ginger, minced'
      ],
      measure: [
        '1 cup',
        '1 bell pepper',
        '1 carrot',
        '1 zucchini',
        '1/4 cup',
        '2 tablespoons',
        '2 cloves',
        '1 tablespoon'
      ],
      instructions:
          '1. Heat sesame oil in a wok over medium heat.\n2. Add garlic and ginger, sauté until fragrant.\n3. Add vegetables and stir-fry for 5-7 minutes.\n4. Pour in soy sauce and toss until vegetables are coated and tender.\n5. Serve with steamed rice.',
      cuisine: 'Chinese'),
  MoreRecipes(
      name: 'Veggie Burgers',
      imgUrl: 'assets/images/Veggie burger1.jpeg',
      category: 'Vegetarian',
      origin: 'Unknown',
      ingredients: [
        "1 can chickpeas",
        "1/2 cup breadcrumbs",
        "1/4 onion",
        "1 tablespoon cumin",
        "1 tablespoon olive oil"
      ],
      measure: ["1 can", "1/2 cup", "1/4", "1 tablespoon", "1 tablespoon"],
      instructions:
          'Mash chickpeas\nCombine with breadcrumbs and spices, form patties, and cook.'),
];
List<MoreRecipes> glutenFree = [
  MoreRecipes(
      name: 'Gluten-Free Pizza',
      imgUrl: 'assets/images/gluten free pizza.jpg',
      category: 'Gluten-Free',
      origin: 'Italian',
      ingredients: [
        '1 gluten-free pizza crust',
        '1/2 cup tomato sauce',
        '1 cup mozzarella cheese, shredded',
        '1/4 cup fresh basil leaves',
        '1 tablespoon olive oil',
        'Salt and pepper to taste'
      ],
      measure: [
        '1 crust',
        '1/2 cup',
        '1 cup',
        '1/4 cup',
        '1 tablespoon',
        'To taste'
      ],
      instructions:
          '1. Preheat the oven to 400°F (200°C).\n2. Spread tomato sauce on the pizza crust.\n3. Sprinkle with mozzarella cheese and top with basil leaves.\n4. Drizzle with olive oil and season with salt and pepper.\n5. Bake for 10-12 minutes or until the cheese is bubbly and golden.',
      cuisine: 'Italian'),
  MoreRecipes(
      name: 'Grilled Chicken',
      imgUrl: 'assets/images/grilled chicken breast.jpg',
      category: 'Gluten-Free',
      origin: 'Unknown',
      ingredients: [
        "4 chicken breasts",
        "2 tablespoons olive oil",
        "1 tablespoon garlic powder",
        "1 teaspoon paprika",
        "Salt and pepper to taste"
      ],
      measure: ["4", "2 tablespoons", "1 tablespoon", "1 teaspoon", "to taste"],
      instructions:
          ' Marinate chicken in olive oil and spices, grill until cooked through.'),
  // MoreRecipes(
  //     name: 'Salmon',
  //     imgUrl: '',
  //     category: 'Gluten-Free',
  //     origin: 'Unknown',
  //     ingredients: [
  //       "2 salmon fillets",
  //       "1 tablespoon lemon juice",
  //       "1 teaspoon dill",
  //       "Salt and pepper to taste"
  //     ],
  //     measure: ["2", "1 tablespoon", "1 teaspoon", "to taste"],
  //     instructions:
  //         'Season salmon with lemon juice and dill\n Bake at 375°F (190°C) for 15-20 minutes.'),
  MoreRecipes(
      name: 'Quinoa Salad',
      imgUrl: 'assets/images/quinoa2.jpeg',
      category: 'Gluten-Free',
      origin: 'Unknown',
      ingredients: [
        "1 cup quinoa",
        "2 cups water",
        "1 cucumber",
        "1 bell pepper",
        "1/4 cup olive oil",
        "1/4 cup lemon juice"
      ],
      measure: ["1 cup", "2 cups", "1", "1", "1/4 cup", "1/4 cup"],
      instructions:
          'Cook quinoa in water, mix with chopped vegetables\n Dress with olive oil and lemon juice.'),
  MoreRecipes(
      name: 'Lentil Soup',
      imgUrl: 'assets/images/lentil soup.jpg',
      category: 'Gluten-Free',
      origin: 'Unknown',
      ingredients: [
        "1 cup lentils",
        "1 onion",
        "2 carrots",
        "2 celery stalks",
        "4 cups vegetable broth",
        "1 teaspoon thyme"
      ],
      measure: ["1 cup", "1", "2", "2", "4 cups", "1 teaspoon"],
      instructions:
          'Sauté onion, carrots, and celery, add lentils and broth, simmer until lentils are tender.'),
  MoreRecipes(
    name: 'Gluten-Free Pasta',
    imgUrl: 'assets/images/gluten-free pasta.jpg',
    category: 'Gluten-Free',
    origin: 'Unknown',
    ingredients: [
      "8 oz gluten-free pasta",
      "1 jar marinara sauce",
      "1 tablespoon olive oil",
      "1/4 cup parmesan cheese"
    ],
    measure: ["8 oz", "1 jar", "1 tablespoon", "1/4 cup"],
    instructions:
        'Cook pasta according to package instructions\nToss with marinara sauce and olive oil\nTop with parmesan cheese.',
  ),
  MoreRecipes(
    name: 'Stuffed Bell Peppers',
    imgUrl: 'assets/images/stuffed.jpeg',
    category: 'Gluten-Free',
    origin: 'Unknown',
    ingredients: [
      "4 bell peppers",
      "1 cup cooked rice",
      "1 can black beans",
      "1 teaspoon cumin",
      "1 cup salsa"
    ],
    measure: ["4", "1 cup", "1 can", "1 teaspoon", "1 cup"],
    instructions:
        'Cut tops off peppers\nMix filling ingredients\nStuff peppers, and bake at 375°F (190°C) for 30 minutes.',
  ),
//MoreRecipes(falafel),
  // MoreRecipes(
  //     name: 'Hummus',
  //     imgUrl: '',
  //     category: ' Gluten-Free',
  //     origin: 'Unknown',
  //     ingredients: [
  //       "1 can chickpeas",
  //       "1/4 cup tahini",
  //       "2 tablespoons lemon juice",
  //       "2 cloves garlic",
  //       "1 tablespoon olive oil"
  //     ],
  //     measure: [
  //       "1 can",
  //       "1/4 cup",
  //       "2 tablespoons",
  //       "2 cloves",
  //       "1 tablespoon"
  //     ],
  //     instructions:
  //         'Blend all ingredients until smooth\nserve with vegetables or gluten-free crackers.'),
  MoreRecipes(
      name: 'Cauliflower Rice',
      category: 'Gluten-Free',
      imgUrl: 'assets/images/caulifower rice.jpeg',
      measure: ['Included among ingredients'],
      cuisine: 'Unknown',
      origin: 'Unknown',
      ingredients: ['cauliflower'],
      instructions: 'Pulse cauliflower.'),
// MoreRecipes(grilled chicken),
// MoreRecipes(sweet potato fries),
  MoreRecipes(
      name: 'Zucchini Noodles',
      category: 'Gluten-Free',
      imgUrl: '',
      measure: ['Included among ingredients'],
      cuisine: 'Unknown',
      origin: 'Unknown',
      ingredients: ['zucchini'],
      instructions: 'Spiral zucchini.'),
];
List<MoreRecipes> diaryFree = [
  MoreRecipes(
      name: 'Dairy-Free Smoothie Bowl',
      imgUrl: 'assets/images/diary bowl.jpeg',
      category: 'Dairy-Free',
      origin: 'American',
      ingredients: [
        '1 banana, frozen',
        '1/2 cup almond milk',
        '1/2 cup mixed berries, frozen',
        '1 tablespoon chia seeds',
        '1 tablespoon peanut butter',
        'Granola for topping'
      ],
      measure: [
        '1 banana',
        '1/2 cup',
        '1/2 cup',
        '1 tablespoon',
        '1 tablespoon',
        'As desired'
      ],
      instructions:
          '1. Blend banana, almond milk, and berries until smooth.\n2. Pour into a bowl and top with chia seeds, peanut butter, and granola.\n3. Serve immediately.',
      cuisine: 'American')
];
List<MoreRecipes> nutFree = [
  MoreRecipes(
      name: 'Nut-Free Granola Bars',
      imgUrl: 'assets/images/Granola1.jpeg',
      category: 'Nut-Free',
      origin: 'American',
      ingredients: [
        '2 cups rolled oats',
        '1/2 cup honey',
        '1/4 cup sunflower seed butter',
        '1/2 cup dried cranberries',
        '1/2 cup chocolate chips'
      ],
      measure: ['2 cups', '1/2 cup', '1/4 cup', '1/2 cup', '1/2 cup'],
      instructions:
          '1. Mix all ingredients in a large bowl.\n2. Press the mixture into a greased baking dish.\n3. Bake at 350°F (175°C) for 15-20 minutes or until golden brown.\n4. Let cool before cutting into bars.',
      cuisine: 'American')
];
List<MoreRecipes> beginner = [
  //MoreRecipes(scarmbled),
  MoreRecipes(
      name: 'Fried Rice',
      category: 'Beginner',
      imgUrl: 'assets/images/fried rice.jpeg',
      measure: ['Included among ingredients'],
      cuisine: 'Unknown',
      origin: 'Unknown',
      ingredients: ['cooked rice', 'vegetables', 'egg'],
      instructions: 'Stir-fry ingredients.'),
  MoreRecipes(
      name: 'Chicken Salad',
      category: 'Beginner',
      imgUrl: 'assets/images/chicken salad.jpeg',
      measure: ['Included among ingredients'],
      cuisine: 'Unknown',
      origin: 'Unknown',
      ingredients: ['cooked chicken', 'mayonnaise', 'vegetables'],
      instructions: 'Mix ingredients.'),
  MoreRecipes(
      name: 'Toast with Avocado',
      category: 'Beginner',
      imgUrl: 'assets/images/avo toast.jpeg',
      measure: ['Included among ingredients'],
      cuisine: 'Unknown',
      origin: 'Unknown',
      ingredients: ['bread', 'avocado'],
      instructions: 'Spread avocado.'),
  MoreRecipes(
    name: 'Fried Egg',
    category: 'Beginner',
    imgUrl: 'assets/images/egg.jpeg',
    measure: ['Included among ingredients'],
    cuisine: 'Unknown',
    origin: 'Unknown',
    ingredients: ['egg'],
    instructions: ' Fry egg.',
  ),
  MoreRecipes(
      name: 'Green Salad',
      category: 'Beginner',
      imgUrl: 'assets/images/green.jpeg',
      measure: ['Included among ingredients'],
      cuisine: 'Unknown',
      origin: 'Unknown',
      ingredients: ['mixed greens'],
      instructions: 'Serve.'),
];
List<MoreRecipes> medium = [
  MoreRecipes(
      name: 'Risotto',
      imgUrl: 'assets/images/risotto.jpeg',
      category: 'Intermediate',
      origin: 'Italian',
      ingredients: [
        '1 cup Arborio rice',
        '1/4 cup white wine',
        '4 cups chicken broth',
        '1/4 cup parmesan cheese',
        '1 onion, diced',
        '2 tablespoons butter'
      ],
      measure: [
        '1 cup',
        '1/4 cup',
        '4 cups',
        '1/4 cup',
        '1 onion',
        '2 tablespoons'
      ],
      instructions:
          '1. Heat butter in a pan and sauté the onion until translucent.\n2. Add the rice and cook for 1-2 minutes.\n3. Pour in white wine and stir until absorbed.\n4. Add chicken broth one ladle at a time, stirring constantly until the rice is cooked through.\n5. Stir in parmesan cheese and serve hot.',
      cuisine: 'Italian'),
  MoreRecipes(
      name: 'Chicken Parmesan',
      category: 'Medium',
      imgUrl: 'assets/images/Pollo parmesan.jpeg',
      measure: ['Included among ingredients'],
      cuisine: 'Unknown',
      origin: 'Unknown',
      ingredients: [
        'chicken',
        'breadcrumbs',
        'marinara sauce',
        'mozzarella cheese'
      ],
      instructions: 'Bread chicken\n fry\n bake.'),
//MoreRecipes(veggie),
  MoreRecipes(
      name: 'Quiche Lorraine',
      category: 'Medium',
      imgUrl: 'assets/images/Lorraine.jpeg',
      measure: ['Included among ingredients'],
      cuisine: 'Unknown',
      origin: 'Unknown',
      ingredients: ['eggs', 'cream', 'cheese', 'pie crust'],
      instructions: 'Mix filling, bake.'),
//MoreRecipes(fajitas),
  MoreRecipes(
      name: 'Vegetable Soup',
      category: 'Medium',
      imgUrl: 'assets/images/veg soup.jpeg',
      measure: ['Included among ingredients'],
      cuisine: 'Unknown',
      origin: 'Unknown',
      ingredients: ['mixed vegetables', 'broth'],
      instructions: ' Simmer ingredients.'),
//MoreRecipes(),
];
List<MoreRecipes> hard = [
  // beef welington,
  MoreRecipes(
      name: 'Beef Bourguignon',
      category: 'Hard',
      imgUrl: 'assets/images/beef bour.jpeg',
      measure: ['Included among ingredients'],
      cuisine: 'Unknown',
      origin: 'Unknown',
      ingredients: ['beef', 'mushrooms', 'red wine'],
      instructions: ' Braise beef.'),
  MoreRecipes(
      name: 'Sushi Grade Tuna',
      category: 'Hard',
      imgUrl: 'assets/images/grade.jpeg',
      measure: ['Included among ingredients'],
      cuisine: 'Unknown',
      origin: 'Unknown',
      ingredients: ['tuna', 'soy sauce', 'wasabi'],
      instructions: 'Slice tuna.'),
  // MoreRecipes(
  //     name: 'Croissants',
  //     imgUrl: '',
  //     measure: ['Included among ingredients'],
  //     cuisine: 'Unknown',
  //     origin: 'Unknown',
  //     category: 'Hard',
  //     ingredients: ['dough'],
  //     instructions: ' Laminate dough.'),
];
List<MoreRecipes> easy = [
  MoreRecipes(
      name: 'Fruit Salad',
      imgUrl: 'assets/images/fruit1.jpeg',
      category: 'Beginner',
      origin: 'International',
      ingredients: [
        '1 apple, chopped',
        '1 banana, sliced',
        '1 orange, segmented',
        '1/2 cup grapes',
        '1 tablespoon honey'
      ],
      measure: ['1 apple', '1 banana', '1 orange', '1/2 cup', '1 tablespoon'],
      instructions:
          '1. Combine all fruits in a bowl.\n2. Drizzle with honey and toss gently.\n3. Serve chilled.',
      cuisine: 'International')
];
List<MoreRecipes> inter = [
  MoreRecipes(
      name: 'Chicken Alfredo Pasta',
      imgUrl: 'assets/images/alredo pasta.jpeg',
      category: 'Medium',
      origin: 'Italian',
      ingredients: [
        '2 chicken breasts, sliced',
        '1 lb fettuccine pasta',
        '1/2 cup heavy cream',
        '1/2 cup parmesan cheese',
        '2 garlic cloves, minced',
        '2 tablespoons butter',
        'Salt to taste',
        'Pepper to taste'
      ],
      measure: [
        '2 breasts',
        '1 lb',
        '1/2 cup',
        '1/2 cup',
        '2 cloves',
        '2 tablespoons',
        'To taste',
        'To taste'
      ],
      instructions:
          '1. Cook the pasta according to package instructions.\n2. Sauté chicken breasts in butter until golden and cooked through.\n3. In the same pan, add garlic and cook until fragrant.\n4. Pour in the heavy cream and parmesan, stir until combined.\n5. Add cooked pasta and toss until coated in the sauce.\n6. Season with salt and pepper, then serve.',
      cuisine: 'Italian')
];
List<MoreRecipes> tough = [
  MoreRecipes(
      name: 'Coq au Vin',
      imgUrl: ' assets/images/coq.jpeg',
      category: 'Hard',
      origin: 'French',
      ingredients: [
        '4 chicken thighs',
        '2 cups red wine',
        '1/2 lb bacon, chopped',
        '1 onion, chopped',
        '2 garlic cloves, minced',
        '1/2 lb mushrooms, sliced',
        '2 tablespoons tomato paste',
        '2 tablespoons flour',
        '2 tablespoons butter',
        'Salt and pepper to taste'
      ],
      measure: [
        '4 thighs',
        '2 cups',
        '1/2 lb',
        '1 onion',
        '2 cloves',
        '1/2 lb',
        '2 tablespoons',
        '2 tablespoons',
        '2 tablespoons',
        'To taste'
      ],
      instructions:
          '1. Cook bacon in a large pot until crispy, then remove and set aside.\n2. Sear chicken thighs in the same pot until browned on both sides.\n3. Remove chicken and add onions, garlic, and mushrooms. Cook until softened.\n4. Stir in tomato paste and flour, cooking for 2-3 minutes.\n5. Pour in red wine, scraping up any browned bits from the bottom of the pot.\n6. Return the chicken and bacon to the pot, cover, and simmer for 1.5-2 hours.\n7. Serve with mashed potatoes or crusty bread.',
      cuisine: 'French'),
  MoreRecipes(
      name: 'Sushi Rolls',
      category: 'Hard',
      ingredients: ['sushi rice', 'nori', 'fillings'],
      imgUrl: 'Maki sushi2.jpeg',
      measure: ['Included among ingredients'],
      cuisine: 'Unknown',
      origin: 'Unknown',
      instructions: ' Roll sushi.'),
  MoreRecipes(
      name: 'Soufflé',
      category: 'Dessert',
      ingredients: ['eggs', 'cheese', 'cream'],
      imgUrl: '',
      measure: ['Included among ingredients'],
      cuisine: 'Unknown',
      origin: 'Unknown',
      instructions: 'Whip eggs, bake.'),
];
List<MoreRecipes> time = [
  MoreRecipes(
    name: 'Slow Cooker Beef Stew',
    imgUrl: 'assets/images/slow beef2.jpg',
    category: 'Time',
    origin: 'American',
    ingredients: [
      '2 lbs beef stew meat',
      '4 carrots, chopped',
      '4 potatoes, chopped',
      '1 onion, chopped',
      '3 cups beef broth',
      '1/4 cup flour',
      '2 garlic cloves, minced',
      'Salt and pepper to taste'
    ],
    measure: [
      '2 lbs',
      '4 carrots',
      '4 potatoes',
      '1 onion',
      '3 cups',
      '1/4 cup',
      '2 cloves',
      'To taste'
    ],
    instructions:
        '1. In a slow cooker, combine beef, carrots, potatoes, onion, and garlic.\n2. Sprinkle with flour and toss to coat.\n3. Pour in beef broth and season with salt and pepper.\n4. Cook on low for 8-10 hours, stirring occasionally.\n5. Serve hot with crusty bread.',
    cuisine: 'American',
  ),
  MoreRecipes(
    name: 'Overnight Oats',
    imgUrl: 'assets/images/Overnight oats.jpeg',
    category: 'Time',
    origin: 'American',
    ingredients: [
      '1 cup rolled oats',
      '1 cup almond milk',
      '1 tablespoon chia seeds',
      '1/2 cup mixed berries',
      '1 tablespoon honey'
    ],
    measure: ['1 cup', '1 cup', '1 tablespoon', '1/2 cup', '1 tablespoon'],
    instructions:
        '1. In a jar, combine oats, almond milk, chia seeds, and honey.\n2. Stir well and refrigerate overnight.\n3. In the morning, top with mixed berries and serve chilled.',
    cuisine: 'American',
  )
];
List<MoreRecipes> tools = [
  MoreRecipes(
      name: 'Sous Vide Salmon',
      imgUrl: 'assets/images/vide.jpeg',
      category: 'Tools',
      origin: 'French',
      ingredients: [
        '2 salmon fillets',
        '2 tablespoons olive oil',
        '1 lemon, sliced',
        '2 garlic cloves, minced',
        'Salt to taste',
        'Pepper to taste'
      ],
      measure: [
        '2 fillets',
        '2 tablespoons',
        '1 lemon',
        '2 cloves',
        'To taste',
        'To taste'
      ],
      instructions:
          '1. Preheat a sous vide machine to 125°F (52°C).\n2. Season the salmon fillets with salt, pepper, garlic, and olive oil.\n3. \nPlace the salmon in a vacuum-sealed bag along with lemon slices.\n4. Cook in the sous vide for 45 minutes.\n5. Remove from the bag and quickly sear the salmon in a hot pan for 1-2 minutes on each side.\n6. Serve immediately.',
      cuisine: 'French')
];
List<MoreRecipes> ugandanRecipes = [
  MoreRecipes(
    name: "Obutunda (Passion Fruit Juice)",
    imgUrl: "assets/images/passion.jpeg",
    origin: "Uganda",
    category: "Beverage",
    ingredients: [
      "10 passion fruits",
      "1 liter water",
      "3 tbsp sugar (optional)"
    ],
    measure: ["10 passion fruits", "1 liter", "3 tbsp"],
    instructions:
        "Slice the passion fruits and scoop out the pulp. \nAdd water and mix thoroughly to release the flavor. \nStrain to remove seeds, add sugar if needed, and chill. \nServe cold with ice cubes.",
    cuisine: "Traditional Ugandan beverage",
  ),
  MoreRecipes(
    name: "Malewa (Bamboo Shoots Stew)",
    imgUrl: "assets/images/lewa.jpeg",
    origin: "Eastern Uganda",
    category: "Side Dish",
    ingredients: [
      "2 cups smoked bamboo shoots",
      "1 onion, chopped",
      "2 tomatoes, chopped",
      "1 tbsp groundnut paste",
      "Salt to taste"
    ],
    measure: ["2 cups", "1 onion", "2 tomatoes", "1 tbsp"],
    instructions:
        "Soak smoked bamboo shoots in water for 30 minutes. Heat oil in a pan and sauté onions and tomatoes. \nAdd groundnut paste and stir well. \nAdd the bamboo shoots and cook for 10-15 minutes. \nServe with steamed matoke or rice.",
    cuisine: "Traditional Bagisu dish",
  ),
  MoreRecipes(
    name: "Ekikomando (Chapati with Beans)",
    imgUrl: "assets/images/action.jpeg",
    origin: "Uganda",
    category: "Street Food",
    ingredients: [
      "2 chapatis",
      "1 cup boiled beans",
      "1 onion, chopped",
      "1 tomato, chopped",
      "Salt to taste"
    ],
    measure: ["2 chapatis", "1 cup", "1 onion", "1 tomato"],
    instructions:
        "Fry onions and tomatoes in a pan. \nAdd boiled beans and simmer for 5 minutes. \nPlace beans on top of the chapati and roll it up. \nServe as a snack or quick meal.",
    cuisine: "Ugandan street food",
  ),
  MoreRecipes(
    name: "Enyama Ekuwumbirwa (Smoked Meat in Groundnut Sauce)",
    imgUrl: "assets/images/pasted1.jpe",
    origin: "Uganda",
    category: "Main Dish",
    ingredients: [
      "500g smoked beef",
      "2 onions, chopped",
      "1 cup groundnut paste",
      "2 cups water",
      "Salt to taste"
    ],
    measure: ["500g", "2 onions", "1 cup", "2 cups"],
    instructions:
        "Boil the smoked beef until tender. \nIn another pot, sauté onions, then add groundnut paste and water. \nAdd the boiled meat and simmer for 20 minutes. \nServe with steamed cassava or posho.",
    cuisine: "Traditional Ugandan dish",
  ),
  MoreRecipes(
    name: "Bbinye (Steamed Yams)",
    imgUrl: "https://via.placeholder.com/150",
    origin: "Uganda",
    category: "Side Dish",
    ingredients: ["4 yams", "Salt to taste"],
    measure: ["4 yams"],
    instructions:
        "Peel and slice the yams. \nSteam in a pot with salted water for 20-30 minutes. S\nerve with groundnut sauce or meat stew.",
    cuisine: "Traditional Ugandan dish",
  ),
  MoreRecipes(
    name: "Nswaa (Fried White Ants)",
    imgUrl: "assets/images/ant.jpeg",
    origin: "Central and Eastern Uganda",
    category: "Snack",
    ingredients: ["2 cups white ants", "Salt to taste"],
    measure: ["2 cups"],
    instructions:
        "Rinse the white ants in clean water. \nFry them in a pan without oil until crispy. \nAdd a pinch of salt and serve as a snack.",
    cuisine: "Seasonal delicacy",
  ),
  MoreRecipes(
    name: "Muchomo",
    imgUrl: "assets/images/musitojpeg",
    origin: "Uganda",
    category: "Main Dish",
    ingredients: [
      "500g beef or goat meat",
      "1 tsp salt",
      "1 tsp black pepper",
      "Wooden skewers"
    ],
    measure: ["500g", "1 tsp", "1 tsp"],
    instructions:
        "Cut the meat into cubes and season with salt and pepper. \nThread the meat onto skewers. \nGrill over charcoal or in an oven until cooked. \nServe with kachumbari (tomato and onion salad).",
    cuisine: "Common Ugandan street food",
  ),
  MoreRecipes(
    name: "Oluwombo",
    imgUrl: "assets/images/Luwombo1.jpeg",
    origin: "Buganda",
    category: "Main Dish",
    ingredients: [
      "500g chicken or beef",
      "2 onions, chopped",
      "1 tbsp groundnut paste",
      "Banana leaves for wrapping",
      "Salt and pepper"
    ],
    measure: ["500g", "2 onions", "1 tbsp"],
    instructions:
        "Fry onions and meat until browned. \nStir in groundnut paste and season with salt and pepper. \nWrap the mixture in banana leaves and steam for 1 hour. \nServe with matoke.",
    cuisine: "Traditional Buganda dish",
  ),
  //List<MoreRecipes> ugandanRecipes = [
  // Existing recipes...

  MoreRecipes(
    name: "Kamatore",
    imgUrl: "assets/images/gonja.jpeg",
    origin: "Uganda",
    category: "Snack",
    ingredients: ["4 ripe plantains", "Oil for frying", "Salt to taste"],
    measure: ["4 plantains"],
    instructions:
        "Peel and slice the plantains. \nHeat oil in a pan and fry the slices until golden brown. \nSprinkle with salt and serve warm.",
    cuisine: "Popular Ugandan snack",
  ),
  MoreRecipes(
    name: "G-nut Sauce (Groundnut Sauce)",
    imgUrl: "assets/images/pasted2.jpeg",
    origin: "Uganda",
    category: "Sauce",
    ingredients: [
      "1 cup groundnut paste",
      "1 onion, chopped",
      "2 tomatoes, chopped",
      "2 cups water",
      "Salt to taste"
    ],
    measure: ["1 cup", "1 onion", "2 tomatoes", "2 cups"],
    instructions:
        "In a pot, sauté onions and tomatoes until soft.\nAdd groundnut paste and water, and stir until smooth. \nCook for 10-15 minutes, adding salt to taste.\nServe with rice or posho.",
    cuisine: "Traditional Ugandan sauce",
  ),
  MoreRecipes(
    name: "Posho (Maize Meal)",
    imgUrl: "https://via.placeholder.com/150",
    origin: "Uganda",
    category: "Main Dish",
    ingredients: ["2 cups maize flour", "4 cups water", "Salt to taste"],
    measure: ["2 cups", "4 cups"],
    instructions:
        "Boil water in a pot, add salt, and gradually stir in maize flour. \nCook while stirring until it thickens and pulls away from the pot. \nServe hot.",
    cuisine: "Staple Ugandan dish",
  ),
  MoreRecipes(
    name: "Luwombo (Stew with Vegetables)",
    imgUrl: "assets/images/stew.jpeg",
    origin: "Uganda",
    category: "Main Dish",
    ingredients: [
      "500g meat (chicken, beef, or goat)",
      "2 cups mixed vegetables (carrots, beans, etc.)",
      "1 onion, chopped",
      "2 tomatoes, chopped",
      "Salt and pepper"
    ],
    measure: ["500g", "2 cups"],
    instructions:
        "Fry onions in a pot until golden. \nAdd meat and brown it. \nThen add vegetables, tomatoes, and season with salt and pepper. \nCook until the meat is tender and serve with matoke.",
    cuisine: "Traditional Ugandan dish",
  ),
  MoreRecipes(
    name: "Katogo (Matoke with Beans)",
    imgUrl: "assets/images/potage.jpeg",
    origin: "Uganda",
    category: "Main Dish",
    ingredients: [
      "6 green bananas (matoke)",
      "2 cups boiled beans",
      "1 onion, chopped",
      "Salt to taste"
    ],
    measure: ["6 bananas", "2 cups"],
    instructions:
        "Peel and slice the matoke. \nIn a pot, add sliced matoke, boiled beans, chopped onion, and salt. \nCook until the matoke is soft. \nServe warm.",
    cuisine: "Popular Ugandan dish",
  ),
  MoreRecipes(
    name: "Amatooke",
    imgUrl: "assets/images/minwe.jpeg",
    origin: "Uganda",
    category: "Side Dish",
    ingredients: ["6 green bananas", "Salt to taste"],
    measure: ["6 bananas"],
    instructions:
        "Peel the bananas and place them in a pot with a little water and salt. \nCover and steam for about 30 minutes or until soft. \nServe with meat or stew.",
    cuisine: "Traditional Ugandan dish",
  ),
  MoreRecipes(
    name: "Kachumbari (Tomato and Onion Salad)",
    imgUrl: "assets/images/tomato.jpeg",
    origin: "Uganda",
    category: "Salad",
    ingredients: [
      "2 tomatoes, diced",
      "1 onion, thinly sliced",
      "1 cucumber, diced",
      "1 tbsp lemon juice",
      "Salt to taste"
    ],
    measure: ["2 tomatoes", "1 onion", "1 cucumber"],
    instructions:
        "In a bowl, combine diced tomatoes, sliced onions, and cucumber. \nDrizzle with lemon juice and sprinkle with salt. \nMix well and serve fresh.",
    cuisine: "Common Ugandan salad",
  ),
  MoreRecipes(
    name: "Nkatete",
    imgUrl: "assets/images/fish.jpeg",
    origin: "Uganda",
    category: "Main Dish",
    ingredients: [
      "500g fish (tilapia or any local fish)",
      "1 onion, chopped",
      "2 tomatoes, chopped",
      "1 tbsp groundnut paste",
      "Salt to taste"
    ],
    measure: ["500g", "1 onion", "2 tomatoes"],
    instructions:
        "Fry onions in a pot until golden. \nAdd fish and cook until it changes color. \nAdd tomatoes and groundnut paste, season with salt, and simmer for 15 minutes. \nServe with posho or rice.",
    cuisine: "Traditional Ugandan dish",
  ),
  MoreRecipes(
    name: "Ekitobero (Pumpkin Stew)",
    imgUrl: "assets/images/kin.jpeg",
    origin: "Uganda",
    category: "Main Dish",
    ingredients: [
      "500g pumpkin, cubed",
      "1 onion, chopped",
      "1 tomato, chopped",
      "1 cup coconut milk",
      "Salt to taste"
    ],
    measure: ["500g", "1 onion", "1 tomato"],
    instructions:
        "In a pot, sauté onions until golden.\nAdd pumpkin and tomatoes, then stir in coconut milk and salt. \nCook until the pumpkin is tender. Serve with rice.",
    cuisine: "Traditional Ugandan dish",
  ),
];
