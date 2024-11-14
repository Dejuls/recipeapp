class NutriInfo {
  final String tip;
  NutriInfo({required this.tip});
}

// List<String> cookingTips = [
//   "Always read the recipe fully before starting to cook.",
//   "Preheat your oven before baking to ensure even cooking.",
//   "Use fresh herbs for better flavor.",
//   "Keep your knives sharp for safer and more efficient cutting.",
//   "Taste as you go to adjust seasoning.",
//   "Let meat rest after cooking for juicier results.",
//   "Use a food thermometer to check doneness.",
//   "Clean as you cook to maintain a tidy workspace.",
//   "Use acid (like lemon juice or vinegar) to enhance flavors.",
//   "Prep ingredients in advance to streamline your cooking process.",
//   "Don't overcrowd the pan to ensure proper cooking.",
//   "Use parchment paper to prevent sticking while baking.",
//   "Store leftovers in clear containers for easy visibility.",
//   "Experiment with different cooking methods for variety.",
//   "Use a cast-iron skillet for better heat retention.",
//   "Marinate proteins for enhanced flavor and tenderness.",
//   "Make a meal plan to reduce food waste.",
//   "Use seasonal ingredients for the best taste.",
//   "Always have a few staple ingredients on hand.",
//   "Practice knife skills to improve efficiency.",
//   "Have fun and be creative in the kitchen!"
// ];
class CookingTip {
  final String title;
  final String description;

  CookingTip({required this.title, required this.description});
}

List<CookingTip> cookingTips = [
  // Basic Tips
  CookingTip(
    title: 'Read First',
    description: 'Always read the recipe fully before starting to cook.',
  ),
  CookingTip(
    title: 'Preheat Oven',
    description: 'Preheat your oven before baking to ensure even cooking.',
  ),
  CookingTip(
    title: 'Sharp Knives',
    description: 'Keep your knives sharp for safer and more efficient cutting.',
  ),
  CookingTip(
    title: 'Fresh Herbs',
    description: 'Use fresh herbs for better flavor.',
  ),
  CookingTip(
    title: 'Taste Test',
    description: 'Taste as you go to adjust seasoning.',
  ),
  CookingTip(
    title: 'Clean as You Go',
    description: 'Clean as you cook to maintain a tidy workspace.',
  ),
  CookingTip(
    title: 'Staple Ingredients',
    description: 'Always have a few staple ingredients on hand.',
  ),
  CookingTip(
    title: 'Practice Knife Skills',
    description: 'Practice knife skills to improve efficiency.',
  ),
  CookingTip(
    title: 'Enjoy Cooking',
    description: 'Have fun and be creative in the kitchen!',
  ),
  CookingTip(
    title: 'Recipe Notes',
    description: 'Keep a notebook to jot down notes on your recipes for future improvements.',
  ),

  // Advanced Tips
  CookingTip(
    title: 'Rest Meat',
    description: 'Let meat rest after cooking for juicier results.',
  ),
  CookingTip(
    title: 'Check Doneness',
    description: 'Use a food thermometer to check doneness.',
  ),
  CookingTip(
    title: 'Prep Ahead',
    description: 'Prep ingredients in advance to streamline your cooking process.',
  ),
  CookingTip(
    title: 'Avoid Crowding',
    description: 'Don’t overcrowd the pan to ensure proper cooking.',
  ),
  CookingTip(
    title: 'Add Acidity',
    description: 'Use acid (like lemon juice or vinegar) to enhance flavors.',
  ),
  CookingTip(
    title: 'Organize Leftovers',
    description: 'Store leftovers in clear containers for easy visibility.',
  ),
  CookingTip(
    title: 'Use Parchment',
    description: 'Use parchment paper to prevent sticking while baking.',
  ),
  CookingTip(
    title: 'Seasonal Ingredients',
    description: 'Use seasonal ingredients for the best taste.',
  ),
  CookingTip(
    title: 'Try Different Oils',
    description: 'Use different oils (like olive, coconut, or sesame) for different flavor profiles.',
  ),
  CookingTip(
    title: 'Use Garbage Bowl',
    description: 'Keep a garbage bowl nearby while chopping to save time on cleanup.',
  ),

  // Pro Tips
  CookingTip(
    title: 'Marinate Proteins',
    description: 'Marinate proteins for enhanced flavor and tenderness.',
  ),
  CookingTip(
    title: 'Cast-Iron Skillet',
    description: 'Use a cast-iron skillet for better heat retention.',
  ),
  CookingTip(
    title: 'Plan Meals',
    description: 'Make a meal plan to reduce food waste.',
  ),
  CookingTip(
    title: 'Experiment Methods',
    description: 'Experiment with different cooking methods for variety.',
  ),
  CookingTip(
    title: 'Sous Vide Cooking',
    description: 'Sous vide proteins to achieve consistent, tender results.',
  ),
  CookingTip(
    title: 'Toast Spices',
    description: 'Toast spices before using them to intensify their flavor.',
  ),
  CookingTip(
    title: 'Mandoline Slicer',
    description: 'Use a mandoline slicer for precision when cutting vegetables.',
  ),
  CookingTip(
    title: 'Deglaze Pan',
    description: 'Learn to deglaze a pan to create flavorful sauces.',
  ),
  CookingTip(
    title: 'Freshly Ground Spices',
    description: 'Buy whole spices and grind them fresh for the best flavor.',
  ),
  CookingTip(
    title: 'Invest in Cookware',
    description: 'Invest in high-quality cookware for better heat control and longevity.',
  ),
];

class DietaryComplication {
  String name;
  List<String> recommendations;
  List<String> restrictedFoods;

  DietaryComplication(
      {required this.name,
      required this.recommendations,
      required this.restrictedFoods});
}

List<DietaryComplication> dietaryComplications = [
  DietaryComplication(
    name: "Celiac Disease",
    recommendations: [
      "Choose gluten-free grains (rice, quinoa, corn).",
      "Focus on fresh fruits and vegetables.",
      "Use gluten-free flours (almond flour, coconut flour)."
    ],
    restrictedFoods: [
      "Wheat and all gluten-containing grains.",
      "Barley and rye.",
      "Processed foods with hidden gluten."
    ],
  ),
  DietaryComplication(
    name: "Lactose Intolerance",
    recommendations: [
      "Consume lactose-free dairy products.",
      "Include plant-based milk alternatives (almond, soy).",
      "Use lactase enzyme supplements if needed."
    ],
    restrictedFoods: [
      "Milk and cream.",
      "Soft cheeses and yogurt.",
      "Ice cream and some processed foods."
    ],
  ),
  DietaryComplication(
    name: "Diabetes",
    recommendations: [
      "Focus on whole grains and high-fiber foods.",
      "Incorporate healthy fats (avocados, nuts).",
      "Monitor carbohydrate intake."
    ],
    restrictedFoods: [
      "Sugary drinks and snacks.",
      "White bread and pastries.",
      "Processed and refined carbs."
    ],
  ),
  DietaryComplication(
    name: "Hypertension",
    recommendations: [
      "Increase potassium-rich foods (bananas, spinach).",
      "Limit sodium intake (processed foods).",
      "Focus on whole foods and fresh ingredients."
    ],
    restrictedFoods: [
      "Salty snacks and processed meats.",
      "Canned soups and sauces.",
      "Pickled foods and fast food."
    ],
  ),
  DietaryComplication(
    name: "Heart Disease",
    recommendations: [
      "Include more fruits, vegetables, and whole grains.",
      "Choose lean proteins (fish, chicken).",
      "Limit saturated and trans fats."
    ],
    restrictedFoods: [
      "Red meat and processed meats.",
      "Full-fat dairy products.",
      "Fried foods and baked goods with trans fats."
    ],
  ),
  DietaryComplication(
    name: "Allergies",
    recommendations: [
      "Read food labels carefully.",
      "Avoid cross-contamination with allergens.",
      "Consider alternative ingredients."
    ],
    restrictedFoods: [
      "Common allergens (nuts, shellfish, eggs).",
      "Specific foods identified by allergy tests."
    ],
  ),
  DietaryComplication(
    name: "Irritable Bowel Syndrome (IBS)",
    recommendations: [
      "Keep a food diary to identify triggers.",
      "Consider a low-FODMAP diet.",
      "Eat smaller, more frequent meals."
    ],
    restrictedFoods: [
      "High-FODMAP foods (onions, garlic, beans).",
      "Fatty and spicy foods.",
      "Dairy (if lactose intolerant)."
    ],
  ),
  DietaryComplication(
    name: "Gout",
    recommendations: [
      "Stay hydrated and drink plenty of water.",
      "Limit intake of high-purine foods.",
      "Maintain a healthy weight."
    ],
    restrictedFoods: [
      "Red meat and organ meats.",
      "Shellfish and sardines.",
      "Sugary drinks and alcohol."
    ],
  ),
  DietaryComplication(
    name: "Obesity",
    recommendations: [
      "Focus on portion control and balanced meals.",
      "Increase physical activity.",
      "Choose nutrient-dense foods."
    ],
    restrictedFoods: [
      "Sugary snacks and beverages.",
      "Processed and fast foods.",
      "High-calorie foods with little nutrition."
    ],
  ),
  DietaryComplication(
    name: "Chronic Kidney Disease",
    recommendations: [
      "Limit protein intake as advised by a doctor.",
      "Control potassium and phosphorus levels.",
      "Stay hydrated but follow doctor's recommendations."
    ],
    restrictedFoods: [
      "High-protein foods (red meat, poultry).",
      "Dairy products (if high in potassium).",
      "Certain fruits and vegetables (bananas, potatoes)."
    ],
  ),
  DietaryComplication(
    name: "Food Sensitivities",
    recommendations: [
      "Identify and eliminate trigger foods.",
      "Keep a food diary to track symptoms.",
      "Focus on whole, unprocessed foods."
    ],
    restrictedFoods: [
      "Specific foods that trigger symptoms (varies by individual)."
    ],
  ),
  DietaryComplication(
    name: "Anemia",
    recommendations: [
      "Increase iron-rich foods (red meat, legumes).",
      "Consume vitamin C to enhance iron absorption.",
      "Consider iron supplements if advised."
    ],
    restrictedFoods: ["Foods low in iron (processed foods)."],
  ),
  DietaryComplication(
    name: "Gastroesophageal Reflux Disease (GERD)",
    recommendations: [
      "Avoid large meals and eat smaller portions.",
      "Stay upright after eating.",
      "Limit spicy and fatty foods."
    ],
    restrictedFoods: [
      "Citrus fruits and tomatoes.",
      "Chocolate and caffeine.",
      "Spicy and fried foods."
    ],
  ),
  DietaryComplication(
    name: "Malnutrition",
    recommendations: [
      "Focus on nutrient-dense foods.",
      "Consider supplements if needed.",
      "Consult with a healthcare provider."
    ],
    restrictedFoods: ["Highly processed and empty-calorie foods."],
  ),
  DietaryComplication(
    name: "Thyroid Disorders",
    recommendations: [
      "Ensure adequate iodine intake.",
      "Monitor goitrogenic foods (cabbage, broccoli).",
      "Consult with a healthcare provider for dietary guidance."
    ],
    restrictedFoods: ["Excessive soy products (if hypothyroid)."],
  ),
  DietaryComplication(
    name: "Cognitive Disorders",
    recommendations: [
      "Incorporate omega-3 fatty acids (fish, flaxseeds).",
      "Focus on antioxidant-rich foods (berries, nuts).",
      "Maintain a balanced diet."
    ],
    restrictedFoods: ["Highly processed foods and sugar."],
  ),
  DietaryComplication(
    name: "Eating Disorders",
    recommendations: [
      "Seek professional help for recovery.",
      "Focus on balanced meals.",
      "Avoid restrictive diets."
    ],
    restrictedFoods: ["Highly restrictive or excessive diets."],
  ),
  DietaryComplication(
    name: "Cancer",
    recommendations: [
      "Focus on a balanced diet with plenty of fruits and vegetables.",
      "Limit processed foods and sugars.",
      "Consult with a healthcare provider for tailored dietary advice."
    ],
    restrictedFoods: ["Processed meats and high-fat foods."],
  ),
  DietaryComplication(
    name: "Pregnancy",
    recommendations: [
      "Increase folic acid intake (leafy greens, legumes).",
      "Stay hydrated and eat balanced meals.",
      "Consult a healthcare provider for dietary needs."
    ],
    restrictedFoods: [
      "Alcohol and unpasteurized products.",
      "Certain fish high in mercury."
    ],
  ),
  DietaryComplication(
    name: "Athletic Performance",
    recommendations: [
      "Increase carbohydrate intake for energy.",
      "Stay hydrated before, during, and after workouts.",
      "Include protein for muscle repair."
    ],
    restrictedFoods: ["Excessive saturated fats and sugars."],
  ),
];

List<String> dietaryComplications2 = [
  "Celiac Disease: A serious autoimmune disorder triggered by gluten.",
  "Lactose Intolerance: Inability to digest lactose, leading to gastrointestinal issues.",
  "Diabetes: A condition affecting how the body processes glucose.",
  "Hypertension: High blood pressure, often managed through dietary changes.",
  "Heart Disease: Often linked to high cholesterol and saturated fats.",
  "Allergies: Reactions to specific foods like peanuts, shellfish, or tree nuts.",
  "Irritable Bowel Syndrome (IBS): A common disorder affecting the large intestine.",
  "Gout: A form of arthritis caused by high uric acid levels.",
  "Obesity: Excess body weight leading to various health complications.",
  "Chronic Kidney Disease: May require dietary restrictions on protein, sodium, and potassium.",
  "Food Sensitivities: Non-allergic reactions to certain foods causing discomfort.",
  "Anemia: Often linked to iron deficiency and may require dietary adjustments.",
  "Gastroesophageal Reflux Disease (GERD): Diet may need to be adjusted to reduce symptoms.",
  "Malnutrition: Insufficient nutrient intake leading to health issues.",
  "Thyroid Disorders: Conditions like hypothyroidism may require dietary changes.",
  "Cognitive Disorders: Conditions like Alzheimer’s may benefit from certain dietary patterns.",
  "Eating Disorders: Conditions such as anorexia or bulimia require specific nutritional guidance.",
  "Cancer: Patients may need tailored dietary plans to manage treatment side effects.",
  "Pregnancy: Nutritional needs change, requiring a well-rounded diet.",
  "Athletic Performance: Athletes may require specific diets to enhance performance and recovery."
];
