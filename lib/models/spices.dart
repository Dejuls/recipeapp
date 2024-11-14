class Ingredient {
  final String name;
  final String imgUrl;
  final String description;
  final String regionUsed;
  final List<String> appliedIn;
  double cumulativeRating;
  int ratingCount;

  Ingredient({
    required this.name,
    required this.imgUrl,
    required this.description,
    required this.regionUsed,
    required this.appliedIn,
      this.cumulativeRating = 0.0,
        this.ratingCount = 0,
  });

  double get averageRating =>
      ratingCount > 0 ? cumulativeRating / ratingCount : 0.0;
}

// Expanded List of Rare Ingredients
List<Ingredient> rareIngredients = [
  Ingredient(
    name: 'Oregano',
    imgUrl: 'assets/images/oregano.jpeg',
    description:
        'An aromatic herb with a slightly bitter, earthy flavor used in Mediterranean cooking.',
    regionUsed: 'Mediterranean, Mexico',
    appliedIn: ['Pizza Sauce', 'Greek Salad', 'Chili Con Carne'],
  ),
  Ingredient(
    name: 'Parsley',
    imgUrl: 'assets/images/parsley.jpeg',
    description:
        'A mild, peppery herb used as a garnish or seasoning in a variety of dishes.',
    regionUsed: 'Europe, Middle East',
    appliedIn: ['Tabbouleh', 'Gremolata', 'Garlic Butter'],
  ),
  Ingredient(
    name: 'Sesame Seeds',
    imgUrl: 'assets/images/sesame.jpg',
    description:
        'Small seeds with a nutty flavor, often used in baking and Asian cuisine.',
    regionUsed: 'Middle East, Asia',
    appliedIn: ['Tahini', 'Sesame Chicken', 'Burger Buns'],
  ),
  Ingredient(
    name: 'Thyme',
    imgUrl: 'assets/images/thyme.jpeg',
    description:
        'A herb with a subtle, earthy flavor, often used in soups, stews, and meats.',
    regionUsed: 'Mediterranean, Europe',
    appliedIn: ['Roast Chicken', 'Bouquet Garni', 'Lamb Stew'],
  ),
  Ingredient(
    name: 'Rosemary',
    imgUrl: 'assets/images/rosemary.jpeg',
    description:
        'A fragrant herb with needle-like leaves, used in meats and roasted dishes.',
    regionUsed: 'Mediterranean',
    appliedIn: ['Roast Potatoes', 'Grilled Lamb', 'Focaccia Bread'],
  ),
  Ingredient(
    name: 'Chia Seeds',
    imgUrl: 'assets/images/chia.jpeg',
    description:
        'Tiny seeds rich in fiber, often used in smoothies, puddings, and baking.',
    regionUsed: 'Central America',
    appliedIn: ['Chia Pudding', 'Smoothie Bowls', 'Overnight Oats'],
  ),
  Ingredient(
    name: 'Fennel Seeds',
    imgUrl: 'assets/images/fennel.jpeg',
    description:
        'Seeds with a sweet, licorice-like flavor, used in spice blends and sausages.',
    regionUsed: 'India, Italy',
    appliedIn: ['Indian Curries', 'Italian Sausage', 'Bread Spice'],
  ),
  Ingredient(
    name: 'Dill',
    imgUrl: 'assets/images/dill.jpeg',
    description:
        'An herb with feathery leaves and a fresh flavor, often used in pickling.',
    regionUsed: 'Europe, North America',
    appliedIn: ['Pickles', 'Dill Sauce', 'Potato Salad'],
  ),
  Ingredient(
    name: 'Tarragon',
    imgUrl: 'assets/images/tarragon.jpeg',
    description:
        'A herb with a mild anise flavor, commonly used in French cuisine.',
    regionUsed: 'France, Europe',
    appliedIn: ['Béarnaise Sauce', 'Chicken Tarragon', 'Egg Dishes'],
  ),
  Ingredient(
    name: 'Star Anise',
    imgUrl: 'assets/images/star1.jpeg',
    description:
        'A spice with a strong licorice flavor, used in Asian soups and spice blends.',
    regionUsed: 'China, Vietnam',
    appliedIn: ['Pho', 'Chinese Five-Spice', 'Chai Tea'],
  ),
  Ingredient(
    name: 'Saffron',
    imgUrl: 'assets/images/saffron.jpeg',
    description:
        'A delicate spice made from crocus flowers, known for its golden color and floral aroma.',
    regionUsed: 'Middle East, India, Spain',
    appliedIn: ['Paella', 'Biriyani', 'Riz au Lait'],
  ),
  Ingredient(
    name: 'Cardamom',
    imgUrl: 'assets/images/cardamom.jpeg',
    description:
        'A spice with a unique aroma, used in both savory and sweet dishes.',
    regionUsed: 'India, Middle East',
    appliedIn: ['Masala Chai', 'Swedish Buns', 'Curries'],
  ),
  Ingredient(
    name: 'Tamarind',
    imgUrl: 'assets/images/tamarind.jpg',
    description: 'A tangy fruit pulp used as a souring agent in many cuisines.',
    regionUsed: 'India, Thailand, Africa',
    appliedIn: ['Pad Thai', 'Tamarind Chutney', 'Sauces'],
  ),
  Ingredient(
    name: 'Nigella Seeds',
    imgUrl: 'assets/images/nigella.jpeg',
    description:
        'Black seeds with a peppery flavor, used as a spice or topping.',
    regionUsed: 'India, Middle East',
    appliedIn: ['Naan Bread', 'Pickles', 'Curry'],
  ),

  // // Existing Ingredients
  // Ingredient(
  //   name: 'Oregano',
  //   imgUrl: 'assets/images/oregano.jpeg',
  //   description: 'An aromatic herb with a slightly bitter flavor.',
  //   regionUsed: 'Mediterranean, Mexico',
  //   appliedIn: ['Pizza Sauce', 'Greek Salad', 'Chili Con Carne'],
  // ),
  Ingredient(
    name: 'Parsley',
    imgUrl: 'assets/images/parsley.jpeg',
    description: 'A mild herb used in soups, sauces, and as a garnish.',
    regionUsed: 'Europe, Middle East',
    appliedIn: ['Tabbouleh', 'Gremolata', 'Garlic Butter'],
  ),
  // Additional Ingredients
  Ingredient(
    name: 'Turmeric',
    imgUrl: 'assets/images/turmeric.jpg',
    description: 'A bright yellow spice with anti-inflammatory properties.',
    regionUsed: 'India, Southeast Asia',
    appliedIn: ['Golden Milk', 'Curries', 'Turmeric Rice'],
  ),
  Ingredient(
    name: 'Coriander Seeds',
    imgUrl: 'assets/images/coriander2.jpeg',
    description: 'Seeds with a warm, citrusy flavor.',
    regionUsed: 'India, Middle East',
    appliedIn: ['Garam Masala', 'Chutneys', 'Pickles'],
  ),
  Ingredient(
    name: 'Cloves',
    imgUrl: 'assets/images/cloves.jpeg',
    description: 'A pungent spice with warming properties.',
    regionUsed: 'Asia, Africa',
    appliedIn: ['Chai Tea', 'Biryani', 'Spiced Ham'],
  ),
  Ingredient(
    name: 'Sage',
    imgUrl: 'assets/images/sage.jpeg',
    description: 'A herb with a savory, slightly peppery flavor.',
    regionUsed: 'Mediterranean, Europe',
    appliedIn: ['Sage Butter', 'Stuffing', 'Roast Pork'],
  ),
  Ingredient(
    name: 'Basil',
    imgUrl: 'assets/images/basil.jpeg',
    description: 'A fragrant herb commonly used in Italian and Thai cuisines.',
    regionUsed: 'Italy, Southeast Asia',
    appliedIn: ['Pesto', 'Caprese Salad', 'Thai Basil Chicken'],
  ),
  Ingredient(
    name: 'Mint',
    imgUrl: 'assets/images/mint.jpeg',
    description: 'A refreshing herb with a cool aftertaste.',
    regionUsed: 'Mediterranean, Middle East',
    appliedIn: ['Mint Tea', 'Tabbouleh', 'Lamb Marinades'],
  ),
  Ingredient(
    name: 'Paprika',
    imgUrl: 'assets/images/paprika.jpeg',
    description: 'A red spice made from ground bell peppers or chilies.',
    regionUsed: 'Hungary, Spain',
    appliedIn: ['Goulash', 'Deviled Eggs', 'Roasted Vegetables'],
  ),
  Ingredient(
    name: 'Cumin',
    imgUrl: 'assets/images/cumin.jpeg',
    description: 'A warm, earthy spice often used in curries and stews.',
    regionUsed: 'India, Middle East',
    appliedIn: ['Chili', 'Curry', 'Falafel'],
  ),
  Ingredient(
    name: 'Za\'atar',
    imgUrl: 'assets/images/za\'atar.jpeg',
    description: 'A spice blend with thyme, sumac, and sesame seeds.',
    regionUsed: 'Middle East',
    appliedIn: ['Manakeesh', 'Hummus', 'Roasted Vegetables'],
  ),
  Ingredient(
    name: 'Harissa',
    imgUrl: 'assets/images/harissa.jpeg',
    description: 'A hot chili paste used in North African cuisine.',
    regionUsed: 'North Africa',
    appliedIn: ['Tagine', 'Harissa Chicken', 'Couscous'],
  ),

  Ingredient(
    name: 'Lavender',
    imgUrl: 'assets/images/lavender.jpg',
    description: 'A fragrant herb used in desserts and aromatherapy.',
    regionUsed: 'France, Mediterranean',
    appliedIn: ['Lavender Ice Cream', 'Herbes de Provence', 'Cocktails'],
  ),
  Ingredient(
    name: 'Mustard Seeds',
    imgUrl: 'assets/images/mustard.jpeg',
    description: 'Seeds with a pungent, spicy flavor.',
    regionUsed: 'India, Europe',
    appliedIn: ['Pickles', 'Curries', 'Mustard Sauce'],
  ),
  Ingredient(
    name: 'Marjoram',
    imgUrl: 'assets/images/marjoram.jpeg',
    description: 'A sweet herb similar to oregano.',
    regionUsed: 'Mediterranean',
    appliedIn: ['Stuffing', 'Soups', 'Stews'],
  ),
  Ingredient(
    name: 'Bay Leaves',
    imgUrl: 'assets/images/bay.jpeg',
    description: 'A fragrant leaf used to add depth to soups and stews.',
    regionUsed: 'Mediterranean, Asia',
    appliedIn: ['Broths', 'Curries', 'Stews'],
  ),
  Ingredient(
    name: 'Anise Seeds',
    imgUrl: 'assets/images/anise.jpeg',
    description: 'Seeds with a licorice-like flavor, used in baking.',
    regionUsed: 'Mediterranean, Middle East',
    appliedIn: ['Anise Cookies', 'Liquorice', 'Bread'],
  ),
  Ingredient(
    name: 'Sumac',
    imgUrl: 'assets/images/sumac.JPG',
    description: 'A tangy spice made from ground berries.',
    regionUsed: 'Middle East',
    appliedIn: ['Fattoush Salad', 'Grilled Lamb', 'Hummus Garnish'],
  ),

  Ingredient(
    name: 'Fenugreek',
    imgUrl: 'assets/images/fenugreek.jpeg',
    description:
        'A bitter herb and spice often used in curry powders and as a tea.',
    regionUsed: 'India, North Africa',
    appliedIn: ['Methi Curry', 'Pickles', 'Spiced Lentils'],
  ),
  Ingredient(
    name: 'Kaffir Lime Leaves',
    imgUrl: 'assets/images/kaffir.jpeg',
    description: 'Aromatic leaves used to add a citrus flavor to dishes.',
    regionUsed: 'Southeast Asia',
    appliedIn: ['Tom Yum Soup', 'Thai Curries', 'Coconut Rice'],
  ),
  Ingredient(
    name: 'Horseradish',
    imgUrl: 'assets/images/horseradish.jpeg',
    description: 'A pungent root often used in sauces and condiments.',
    regionUsed: 'Europe, North America',
    appliedIn: ['Horseradish Sauce', 'Roast Beef', 'Bloody Mary'],
  ),
  Ingredient(
    name: 'Juniper Berries',
    imgUrl: 'assets/images/juniper.jpeg',
    description:
        'Berries with a pine-like flavor used in marinades and sauces.',
    regionUsed: 'Europe, North America',
    appliedIn: ['Gin', 'Game Stews', 'Sauerkraut'],
  ),
  Ingredient(
    name: 'Galangal',
    imgUrl: 'assets/images/galangal.jpg',
    description: 'A spicy root similar to ginger but with a citrusy aroma.',
    regionUsed: 'Southeast Asia',
    appliedIn: ['Thai Curry Paste', 'Tom Kha Gai', 'Indonesian Soups'],
  ),
  Ingredient(
    name: 'Beluga Lentils',
    imgUrl: 'assets/images/beluga.jpeg',
    description: 'Small black lentils resembling caviar, often used in salads.',
    regionUsed: 'Europe, Middle East',
    appliedIn: ['Lentil Salad', 'Vegetarian Stews', 'Pilaf'],
  ),
  Ingredient(
    name: 'Spirulina',
    imgUrl: 'assets/images/spirulina.jpeg',
    description: 'A blue-green algae known for its high protein content.',
    regionUsed: 'Mexico, Africa',
    appliedIn: ['Smoothies', 'Energy Bars', 'Supplements'],
  ),
  Ingredient(
    name: 'Shiso Leaves',
    imgUrl: 'assets/images/shisho.jpg',
    description: 'An aromatic herb with a flavor resembling mint and basil.',
    regionUsed: 'Japan, Korea',
    appliedIn: ['Sushi Rolls', 'Pickles', 'Salads'],
  ),
  Ingredient(
    name: 'Wasabi',
    imgUrl: 'assets/images/wasabi.jpeg',
    description:
        'A pungent paste made from Japanese horseradish, served with sushi.',
    regionUsed: 'Japan',
    appliedIn: ['Sushi', 'Wasabi Mayo', 'Soba Noodles'],
  ),
  Ingredient(
    name: 'Goji Berries',
    imgUrl: 'assets/images/goji.jpeg',
    description: 'Bright red berries known for their antioxidant properties.',
    regionUsed: 'China, Himalayas',
    appliedIn: ['Smoothie Bowls', 'Teas', 'Trail Mix'],
  ),
  Ingredient(
    name: 'Nori',
    imgUrl: 'assets/images/nori.jpeg',
    description: 'Edible seaweed used in sushi and Japanese soups.',
    regionUsed: 'Japan, Korea',
    appliedIn: ['Sushi', 'Ramen', 'Rice Balls'],
  ),
  Ingredient(
    name: 'Tamari',
    imgUrl: 'assets/images/tamari.jpg',
    description: 'A gluten-free soy sauce alternative.',
    regionUsed: 'Japan',
    appliedIn: ['Stir-Fries', 'Salad Dressings', 'Dipping Sauces'],
  ),
  Ingredient(
    name: 'Barberries',
    imgUrl: 'assets/images/barberries.jpeg',
    description: 'Small, tart berries used in Persian cuisine.',
    regionUsed: 'Iran, Middle East',
    appliedIn: ['Zereshk Polo', 'Pilaf', 'Chicken Stews'],
  ),
  Ingredient(
    name: 'Miso Paste',
    imgUrl: 'assets/images/miso.jpeg',
    description: 'A fermented soybean paste used to add umami flavor.',
    regionUsed: 'Japan',
    appliedIn: ['Miso Soup', 'Marinades', 'Glazes'],
  ),
  Ingredient(
    name: 'Pomegranate Molasses',
    imgUrl: 'assets/images/pome.jpeg',
    description: 'A thick syrup with a tart, fruity flavor.',
    regionUsed: 'Middle East',
    appliedIn: ['Fattoush', 'Lamb Stews', 'Glazes'],
  ),
  Ingredient(
    name: 'Chervil',
    imgUrl: 'assets/images/chervil.jpeg',
    description: 'A delicate herb with a flavor similar to parsley and anise.',
    regionUsed: 'France, Europe',
    appliedIn: ['Omelettes', 'Herb Butters', 'Soups'],
  ),
  Ingredient(
    name: 'Yuzu',
    imgUrl: 'assets/images/yuzu.jpg',
    description: 'A citrus fruit with a tart, fragrant taste.',
    regionUsed: 'Japan, Korea',
    appliedIn: ['Ponzu Sauce', 'Cocktails', 'Desserts'],
  ),
  Ingredient(
    name: 'Amaranth',
    imgUrl: 'assets/images/amar.jpeg',
    description: 'A gluten-free grain known for its nutty flavor.',
    regionUsed: 'South America, Asia',
    appliedIn: ['Porridge', 'Grain Bowls', 'Baked Goods'],
  ),
  Ingredient(
    name: 'Freekeh',
    imgUrl: 'assets/images/freekeh.jpeg',
    description: 'A roasted green wheat grain used in Middle Eastern cuisine.',
    regionUsed: 'Middle East',
    appliedIn: ['Freekeh Salad', 'Soups', 'Pilaf'],
  ),
// ];

// List<Ingredient> africanAndUgandanIngredients = [
//   // Ugandan Ingredients
  Ingredient(
    name: 'Matooke',
    imgUrl: 'assets/images/tooke.jpeg',
    description: 'A staple food in Uganda, boiled and mashed into a soft dish.',
    regionUsed: 'Uganda',
    appliedIn: ['Steamed Matooke', 'Katogo', 'Luwombo'],
  ),
  Ingredient(
    name: 'Ghee (Omuzigo)',
    imgUrl: 'assets/images/ghee.jpeg',
    description:
        'A type of butter with a rich, nutty flavor used in local dishes.',
    regionUsed: 'Uganda, East Africa',
    appliedIn: ['Luwombo', 'Pilau', 'Spiced Ghee Sauce'],
  ),

  Ingredient(
    name: 'Groundnut Paste',
    imgUrl: 'assets/images/kipoli.jpeg',
    description: 'A peanut-based paste commonly used in stews.',
    regionUsed: 'Uganda',
    appliedIn: ['Groundnut Sauce', 'Vegetable Stews', 'Katogo'],
  ),
  Ingredient(
    name: 'Nile Perch',
    imgUrl: 'assets/images/mpuuta.jpeg',
    description:
        'A freshwater fish found in Lake Victoria, widely used in Ugandan cuisine.',
    regionUsed: 'Uganda',
    appliedIn: ['Fried Fish', 'Fish Stew', 'Luwombo'],
  ),
  Ingredient(
    name: 'Doodo (Amaranth Leaves)',
    imgUrl: 'assets/images/amar.jpeg',
    description:
        'A leafy vegetable commonly boiled and served with starchy foods.',
    regionUsed: 'Uganda, East Africa',
    appliedIn: ['Doodo Stir-Fry', 'Katogo', 'Vegetable Stew'],
  ),
  Ingredient(
    name: 'Sorghum',
    imgUrl: 'assets/images/sorghum.jpeg',
    description:
        'A cereal grain used in porridge, brewing, and traditional breads.',
    regionUsed: 'Uganda, East Africa',
    appliedIn: ['Bushera (Sorghum Drink)', 'Porridge', 'Bread'],
  ),
  Ingredient(
    name: 'Millet Flour',
    imgUrl: 'assets/images/millet_flour.jpeg',
    description:
        'Flour used to make porridge or traditional bread called Kalo.',
    regionUsed: 'Uganda, East Africa',
    appliedIn: ['Kalo', 'Porridge', 'Flatbreads'],
  ),
  // Other African Ingredients
  Ingredient(
    name: 'Baobab Fruit',
    imgUrl: 'assets/images/baobab.jpeg',
    description: 'A fruit rich in vitamin C, often used in juices and snacks.',
    regionUsed: 'West Africa, Southern Africa',
    appliedIn: ['Baobab Juice', 'Snacks', 'Smoothies'],
  ),
  Ingredient(
    name: 'Teff',
    imgUrl: 'assets/images/teff.jpeg',
    description:
        'A small grain used to make injera, a traditional Ethiopian bread.',
    regionUsed: 'Ethiopia',
    appliedIn: ['Injera', 'Porridge', 'Flatbreads'],
  ),
  Ingredient(
    name: 'Cassava',
    imgUrl: 'assets/images/cassava.jpeg',
    description: 'A starchy tuber boiled, fried, or made into flour.',
    regionUsed: 'West Africa, East Africa',
    appliedIn: ['Fried Cassava', 'Porridge', 'Chips'],
  ),
  Ingredient(
    name: 'Hibiscus (Roselle)',
    imgUrl: 'assets/images/hibiscus.jpeg',
    description:
        'Flowers used to make a tangy drink known as bissap or hibiscus tea.',
    regionUsed: 'West Africa',
    appliedIn: ['Bissap', 'Teas', 'Cocktails'],
  ),
  Ingredient(
    name: 'Egusi (Melon Seeds)',
    imgUrl: 'assets/images/egusi.jpeg',
    description: 'Seeds used to make a thick soup popular in Nigerian cuisine.',
    regionUsed: 'West Africa',
    appliedIn: ['Egusi Soup', 'Stews', 'Porridge'],
  ),
  // International Ingredients
  Ingredient(
    name: 'Quinoa',
    imgUrl: 'assets/images/quinoa.jpeg',
    description:
        'A protein-rich grain used as a substitute for rice or couscous.',
    regionUsed: 'South America',
    appliedIn: ['Quinoa Salad', 'Buddha Bowls', 'Pilaf'],
  ),
  Ingredient(
    name: 'Saffron',
    imgUrl: 'assets/images/saffron.jpeg',
    description:
        'The world’s most expensive spice, used for its aroma and color.',
    regionUsed: 'Middle East, Europe',
    appliedIn: ['Paella', 'Risotto', 'Biryani'],
  ),
  Ingredient(
    name: 'Truffle',
    imgUrl: 'assets/images/truffle.jpeg',
    description:
        'A rare fungus with an intense aroma, used in gourmet cuisine.',
    regionUsed: 'Europe',
    appliedIn: ['Truffle Pasta', 'Truffle Oil', 'Gourmet Pizzas'],
  ),
  Ingredient(
    name: 'Kale',
    imgUrl: 'assets/images/kale.jpeg',
    description: 'A leafy green often used in salads and smoothies.',
    regionUsed: 'Global',
    appliedIn: ['Salads', 'Smoothies', 'Stir-Fries'],
  ),
  Ingredient(
    name: 'Chia Seeds',
    imgUrl: 'assets/images/chia_seeds.jpeg',
    description: 'Tiny seeds known for their high omega-3 content.',
    regionUsed: 'South America',
    appliedIn: ['Smoothie Bowls', 'Chia Pudding', 'Baked Goods'],
  ),
  Ingredient(
    name: 'Kimchi',
    imgUrl: 'assets/images/kimchi.jpeg',
    description: 'A fermented cabbage dish from Korea with a spicy kick.',
    regionUsed: 'Korea',
    appliedIn: ['Kimchi Fried Rice', 'Korean BBQ', 'Stews'],
  ),
];

List<Ingredient> extensiveIngredients = [
  // More Ugandan Ingredients
  Ingredient(
    name: 'Malewa (Smoked Bamboo Shoots)',
    imgUrl: 'assets/images/malewa.jpeg',
    description: 'Smoked bamboo shoots used in traditional Bugisu dishes.',
    regionUsed: 'Uganda',
    appliedIn: ['Malewa Stew', 'Vegetable Stews'],
  ),
  Ingredient(
    name: 'Jackfruit',
    imgUrl: 'assets/images/jackfruit.jpeg',
    description: 'A sweet tropical fruit with edible seeds.',
    regionUsed: 'Uganda, East Africa',
    appliedIn: ['Snacks', 'Fruit Salads', 'Vegan Meat Substitute'],
  ),
  Ingredient(
    name: 'Bugga (Wild Greens)',
    imgUrl: 'assets/images/bugga.jpeg',
    description: 'Wild leafy greens for stews and side dishes.',
    regionUsed: 'Uganda',
    appliedIn: ['Vegetable Stews', 'Katogo'],
  ),
  Ingredient(
    name: 'Ntula (African Eggplant)',
    imgUrl: 'assets/images/ntula.jpeg',
    description: 'Small, bitter eggplants used in stews.',
    regionUsed: 'Uganda',
    appliedIn: ['Fish Stews', 'Vegetable Sauces'],
  ),
  Ingredient(
    name: 'Shea Butter',
    imgUrl: 'assets/images/shea_butter.jpeg',
    description: 'Used for cooking and as a cosmetic product.',
    regionUsed: 'West Africa, Uganda',
    appliedIn: ['Snacks', 'Porridge'],
  ),

  // African Ingredients
  Ingredient(
    name: 'Okra',
    imgUrl: 'assets/images/okra.jpeg',
    description: 'A green pod vegetable used in soups and stews.',
    regionUsed: 'West Africa, East Africa',
    appliedIn: ['Okra Soup', 'Stews', 'Fried Okra'],
  ),
  Ingredient(
    name: 'Ugba (Fermented Oil Bean Seeds)',
    imgUrl: 'assets/images/ugba.jpeg',
    description: 'Used in Igbo cuisine for soups and salads.',
    regionUsed: 'Nigeria',
    appliedIn: ['Ugba Salad', 'Soups'],
  ),
  Ingredient(
    name: 'Fonio',
    imgUrl: 'assets/images/fonio.jpeg',
    description: 'An ancient grain known for its quick cooking time.',
    regionUsed: 'West Africa',
    appliedIn: ['Porridge', 'Grain Bowls'],
  ),
  Ingredient(
    name: 'Tamarind',
    imgUrl: 'assets/images/tamarind.jpeg',
    description: 'A sour fruit used in sauces and drinks.',
    regionUsed: 'East Africa, Asia',
    appliedIn: ['Tamarind Juice', 'Chutneys', 'Sauces'],
  ),
  Ingredient(
    name: 'Peri-Peri (Bird’s Eye Chili)',
    imgUrl: 'assets/images/peri_peri.jpeg',
    description: 'A small, hot chili used in sauces and marinades.',
    regionUsed: 'Southern Africa',
    appliedIn: ['Peri-Peri Chicken', 'Marinades', 'Hot Sauces'],
  ),

  // International Ingredients
  Ingredient(
    name: 'Star Anise',
    imgUrl: 'assets/images/star_anise.jpeg',
    description: 'A spice with a sweet, licorice-like flavor.',
    regionUsed: 'Asia',
    appliedIn: ['Pho Soup', 'Curries', 'Tea'],
  ),
  Ingredient(
    name: 'Cardamom',
    imgUrl: 'assets/images/cardamom.jpeg',
    description: 'A spice with a citrusy and minty flavor.',
    regionUsed: 'Middle East, India',
    appliedIn: ['Pilau', 'Chai Tea', 'Desserts'],
  ),
  Ingredient(
    name: 'Fennel Seeds',
    imgUrl: 'assets/images/fennel_seeds.jpeg',
    description: 'Seeds with a licorice flavor used in teas and curries.',
    regionUsed: 'Mediterranean, India',
    appliedIn: ['Curry Spice Blends', 'Breads', 'Herbal Teas'],
  ),
  Ingredient(
    name: 'Sumac',
    imgUrl: 'assets/images/sumac.jpeg',
    description: 'A tangy spice used in Middle Eastern cooking.',
    regionUsed: 'Middle East',
    appliedIn: ['Zaatar', 'Salad Dressings', 'Grilled Meats'],
  ),
  Ingredient(
    name: 'Harissa',
    imgUrl: 'assets/images/harissa.jpeg',
    description: 'A chili paste used in North African cuisine.',
    regionUsed: 'North Africa',
    appliedIn: ['Harissa Chicken', 'Couscous', 'Tagine'],
  ),
  Ingredient(
    name: 'Za\'atar',
    imgUrl: 'assets/images/zaatar.jpeg',
    description: 'A spice blend made from thyme, sumac, and sesame seeds.',
    regionUsed: 'Middle East',
    appliedIn: ['Flatbreads', 'Salads', 'Grilled Meat'],
  ),
  Ingredient(
    name: 'Sundried Tomatoes',
    imgUrl: 'assets/images/sundried_tomatoes.jpeg',
    description:
        'Dried tomatoes with intense flavor, used in Mediterranean dishes.',
    regionUsed: 'Italy, Greece',
    appliedIn: ['Pasta', 'Salads', 'Pesto'],
  ),
  Ingredient(
    name: 'Black Garlic',
    imgUrl: 'assets/images/black.jpeg',
    description: 'Fermented garlic with a sweet, umami-rich flavor.',
    regionUsed: 'Asia',
    appliedIn: ['Sauces', 'Marinades', 'Gourmet Dishes'],
  ),
  Ingredient(
    name: 'Pink Peppercorns',
    imgUrl: 'assets/images/pink_peppercorns.jpeg',
    description: 'Mild pepper with a fruity, floral aroma.',
    regionUsed: 'South America',
    appliedIn: ['Salad Dressings', 'Sauces', 'Desserts'],
  ),
  Ingredient(
    name: 'Marjoram',
    imgUrl: 'assets/images/marjoram.jpeg',
    description: 'A delicate herb with a mild flavor similar to oregano.',
    regionUsed: 'Mediterranean',
    appliedIn: ['Stuffings', 'Pasta', 'Soups'],
  ),
];
