class MealDb {
  List<Meals>? meals;

  MealDb({this.meals});

  MealDb.fromJson(Map<String, dynamic> json) {
    if (json['meals'] != null) {
      meals = <Meals>[];
      json['meals'].forEach((v) {
        meals!.add(new Meals.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.meals != null) {
      data['meals'] = this.meals!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Meals {
  String? idMeal;
  String? strMeal;
  Null? strDrinkAlternate;
  String? strCategory;
  String? strArea;
  String? strInstructions;
  String? strMealThumb;
  String? strTags;
  String? strYoutube;
  List<Ingredient>? ingredients;
  String? strSource;
  Null? strImageSource;
  Null? strCreativeCommonsConfirmed;
  Null? dateModified;

  Meals(
      {this.idMeal,
      this.strMeal,
      this.strDrinkAlternate,
      this.strCategory,
      this.strArea,
      this.strInstructions,
      this.strMealThumb,
      this.strTags,
      this.strYoutube,
      this.ingredients,
      this.strSource,
      this.strImageSource,
      this.strCreativeCommonsConfirmed,
      this.dateModified});

  Meals.fromJson(Map<String, dynamic> json) {
    idMeal = json['idMeal'];
    strMeal = json['strMeal'];
    strDrinkAlternate = json['strDrinkAlternate'];
    strCategory = json['strCategory'];
    strArea = json['strArea'];
    strInstructions = json['strInstructions'];
    strMealThumb = json['strMealThumb'];
    strTags = json['strTags'];
    strYoutube = json['strYoutube'];
    strSource = json['strSource'];
    strImageSource = json['strImageSource'];
    strCreativeCommonsConfirmed = json['strCreativeCommonsConfirmed'];
    dateModified = json['dateModified'];

    ingredients = [];
    for (int i = 1; i <= 20; i++) {
      String ingredientKey = 'strIngredient$i';
      String measureKey = 'strMeasure$i';
      if (json[ingredientKey] != null && json[ingredientKey] != '') {
        ingredients!.add(
          Ingredient(
            name: json[ingredientKey],
            measure: json[measureKey],
          ),
        );
      }
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['idMeal'] = this.idMeal;
    data['strMeal'] = this.strMeal;
    data['strDrinkAlternate'] = this.strDrinkAlternate;
    data['strCategory'] = this.strCategory;
    data['strArea'] = this.strArea;
    data['strInstructions'] = this.strInstructions;
    data['strMealThumb'] = this.strMealThumb;
    data['strTags'] = this.strTags;
    data['strYoutube'] = this.strYoutube;
    data['strSource'] = this.strSource;
    data['strImageSource'] = this.strImageSource;
    data['strCreativeCommonsConfirmed'] = this.strCreativeCommonsConfirmed;
    data['dateModified'] = this.dateModified;

    List<Map<String, dynamic>> ingredientData = [];
    if (this.ingredients != null) {
      this.ingredients!.forEach((v) {
        ingredientData.add(v.toJson());
      });
    }
    data['ingredients'] = ingredientData;
    return data;
  }
}

class Ingredient {
  String? name;
  String? measure;

  Ingredient({this.name, this.measure});

  Ingredient.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    measure = json['measure'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['measure'] = this.measure;
    return data;
  }
}
