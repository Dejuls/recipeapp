class SpoonStuff {
    SpoonStuff({
        required this.recipes,
    });

    final List<Recipe> recipes;

    factory SpoonStuff.fromJson(Map<String, dynamic> json){ 
        return SpoonStuff(
            recipes: json["recipes"] == null ? [] : List<Recipe>.from(json["recipes"]!.map((x) => Recipe.fromJson(x))),
        );
    }

}

class Recipe {
    Recipe({
        required this.vegetarian,
        required this.vegan,
        required this.glutenFree,
        required this.dairyFree,
        required this.veryHealthy,
        required this.cheap,
        required this.veryPopular,
        required this.sustainable,
        required this.lowFodmap,
        required this.weightWatcherSmartPoints,
        required this.gaps,
        required this.preparationMinutes,
        required this.cookingMinutes,
        required this.aggregateLikes,
        required this.healthScore,
        required this.creditsText,
        required this.license,
        required this.sourceName,
        required this.pricePerServing,
        required this.extendedIngredients,
        required this.id,
        required this.title,
        required this.readyInMinutes,
        required this.servings,
        required this.sourceUrl,
        required this.image,
        required this.imageType,
        required this.summary,
        required this.cuisines,
        required this.dishTypes,
        required this.diets,
        required this.occasions,
        required this.instructions,
        required this.analyzedInstructions,
        required this.originalId,
        required this.spoonacularScore,
        required this.spoonacularSourceUrl,
    });

    final bool? vegetarian;
    final bool? vegan;
    final bool? glutenFree;
    final bool? dairyFree;
    final bool? veryHealthy;
    final bool? cheap;
    final bool? veryPopular;
    final bool? sustainable;
    final bool? lowFodmap;
    final int? weightWatcherSmartPoints;
    final String? gaps;
    final dynamic preparationMinutes;
    final dynamic cookingMinutes;
    final int? aggregateLikes;
    final int? healthScore;
    final String? creditsText;
    final String? license;
    final String? sourceName;
    final double? pricePerServing;
    final List<ExtendedIngredient> extendedIngredients;
    final int? id;
    final String? title;
    final int? readyInMinutes;
    final int? servings;
    final String? sourceUrl;
    final String? image;
    final String? imageType;
    final String? summary;
    final List<dynamic> cuisines;
    final List<String> dishTypes;
    final List<String> diets;
    final List<dynamic> occasions;
    final String? instructions;
    final List<AnalyzedInstruction> analyzedInstructions;
    final dynamic originalId;
    final double? spoonacularScore;
    final String? spoonacularSourceUrl;

    factory Recipe.fromJson(Map<String, dynamic> json){ 
        return Recipe(
            vegetarian: json["vegetarian"],
            vegan: json["vegan"],
            glutenFree: json["glutenFree"],
            dairyFree: json["dairyFree"],
            veryHealthy: json["veryHealthy"],
            cheap: json["cheap"],
            veryPopular: json["veryPopular"],
            sustainable: json["sustainable"],
            lowFodmap: json["lowFodmap"],
            weightWatcherSmartPoints: json["weightWatcherSmartPoints"],
            gaps: json["gaps"],
            preparationMinutes: json["preparationMinutes"],
            cookingMinutes: json["cookingMinutes"],
            aggregateLikes: json["aggregateLikes"],
            healthScore: json["healthScore"],
            creditsText: json["creditsText"],
            license: json["license"],
            sourceName: json["sourceName"],
            pricePerServing: json["pricePerServing"],
            extendedIngredients: json["extendedIngredients"] == null ? [] : List<ExtendedIngredient>.from(json["extendedIngredients"]!.map((x) => ExtendedIngredient.fromJson(x))),
            id: json["id"],
            title: json["title"],
            readyInMinutes: json["readyInMinutes"],
            servings: json["servings"],
            sourceUrl: json["sourceUrl"],
            image: json["image"],
            imageType: json["imageType"],
            summary: json["summary"],
            cuisines: json["cuisines"] == null ? [] : List<dynamic>.from(json["cuisines"]!.map((x) => x)),
            dishTypes: json["dishTypes"] == null ? [] : List<String>.from(json["dishTypes"]!.map((x) => x)),
            diets: json["diets"] == null ? [] : List<String>.from(json["diets"]!.map((x) => x)),
            occasions: json["occasions"] == null ? [] : List<dynamic>.from(json["occasions"]!.map((x) => x)),
            instructions: json["instructions"],
            analyzedInstructions: json["analyzedInstructions"] == null ? [] : List<AnalyzedInstruction>.from(json["analyzedInstructions"]!.map((x) => AnalyzedInstruction.fromJson(x))),
            originalId: json["originalId"],
            spoonacularScore: json["spoonacularScore"],
            spoonacularSourceUrl: json["spoonacularSourceUrl"],
        );
    }

}

class AnalyzedInstruction {
    AnalyzedInstruction({
        required this.name,
        required this.steps,
    });

    final String? name;
    final List<Step> steps;

    factory AnalyzedInstruction.fromJson(Map<String, dynamic> json){ 
        return AnalyzedInstruction(
            name: json["name"],
            steps: json["steps"] == null ? [] : List<Step>.from(json["steps"]!.map((x) => Step.fromJson(x))),
        );
    }

}

class Step {
    Step({
        required this.number,
        required this.step,
        required this.ingredients,
        required this.equipment,
        required this.length,
    });

    final int? number;
    final String? step;
    final List<Ent> ingredients;
    final List<Ent> equipment;
    final Length? length;

    factory Step.fromJson(Map<String, dynamic> json){ 
        return Step(
            number: json["number"],
            step: json["step"],
            ingredients: json["ingredients"] == null ? [] : List<Ent>.from(json["ingredients"]!.map((x) => Ent.fromJson(x))),
            equipment: json["equipment"] == null ? [] : List<Ent>.from(json["equipment"]!.map((x) => Ent.fromJson(x))),
            length: json["length"] == null ? null : Length.fromJson(json["length"]),
        );
    }

}

class Ent {
    Ent({
        required this.id,
        required this.name,
        required this.localizedName,
        required this.image,
    });

    final int? id;
    final String? name;
    final String? localizedName;
    final String? image;

    factory Ent.fromJson(Map<String, dynamic> json){ 
        return Ent(
            id: json["id"],
            name: json["name"],
            localizedName: json["localizedName"],
            image: json["image"],
        );
    }

}

class Length {
    Length({
        required this.number,
        required this.unit,
    });

    final int? number;
    final String? unit;

    factory Length.fromJson(Map<String, dynamic> json){ 
        return Length(
            number: json["number"],
            unit: json["unit"],
        );
    }

}

class ExtendedIngredient {
    ExtendedIngredient({
        required this.id,
        required this.aisle,
        required this.image,
        required this.consistency,
        required this.name,
        required this.nameClean,
        required this.original,
        required this.originalName,
        required this.amount,
        required this.unit,
        required this.meta,
        required this.measures,
    });

    final int? id;
    final String? aisle;
    final String? image;
    final String? consistency;
    final String? name;
    final String? nameClean;
    final String? original;
    final String? originalName;
    final double? amount;
    final String? unit;
    final List<String> meta;
    final Measures? measures;

    factory ExtendedIngredient.fromJson(Map<String, dynamic> json){ 
        return ExtendedIngredient(
            id: json["id"],
            aisle: json["aisle"],
            image: json["image"],
            consistency: json["consistency"],
            name: json["name"],
            nameClean: json["nameClean"],
            original: json["original"],
            originalName: json["originalName"],
            amount: json["amount"],
            unit: json["unit"],
            meta: json["meta"] == null ? [] : List<String>.from(json["meta"]!.map((x) => x)),
            measures: json["measures"] == null ? null : Measures.fromJson(json["measures"]),
        );
    }

}

class Measures {
    Measures({
        required this.us,
        required this.metric,
    });

    final Metric? us;
    final Metric? metric;

    factory Measures.fromJson(Map<String, dynamic> json){ 
        return Measures(
            us: json["us"] == null ? null : Metric.fromJson(json["us"]),
            metric: json["metric"] == null ? null : Metric.fromJson(json["metric"]),
        );
    }

}

class Metric {
    Metric({
        required this.amount,
        required this.unitShort,
        required this.unitLong,
    });

    final double? amount;
    final String? unitShort;
    final String? unitLong;

    factory Metric.fromJson(Map<String, dynamic> json){ 
        return Metric(
            amount: json["amount"],
            unitShort: json["unitShort"],
            unitLong: json["unitLong"],
        );
    }

}

// class Recipe {
//   List<Recipes>? recipes;

//   Recipe({this.recipes});

//   Recipe.fromJson(Map<String, dynamic> json) {
//     if (json['recipes'] != null) {
//       recipes = <Recipes>[];
//       json['recipes'].forEach((v) {
//         recipes!.add(Recipes.fromJson(v));
//       });
//     }
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (this.recipes != null) {
//       data['recipes'] = this.recipes!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }

// class Recipes {
//   bool? vegetarian;
//   bool? vegan;
//   bool? glutenFree;
//   bool? dairyFree;
//   bool? veryHealthy;
//   bool? cheap;
//   bool? veryPopular;
//   bool? sustainable;
//   bool? lowFodmap;
//   int? weightWatcherSmartPoints;
//   String? gaps;
//   int? preparationMinutes;
//   int? cookingMinutes;
//   int? aggregateLikes;
//   int? healthScore;
//   String? creditsText;
//   String? license;
//   String? sourceName;
//   double? pricePerServing;
//   List<ExtendedIngredients>? extendedIngredients;
//   int? id;
//   String? title;
//   int? readyInMinutes;
//   int? servings;
//   String? sourceUrl;
//   String? image;
//   String? imageType;
//   String? summary;
//   List<String>? cuisines;
//   List<String>? dishTypes;
//   List<String>? diets;
//   List<String>? occasions;
//   String? instructions;
//   List<AnalyzedInstructions>? analyzedInstructions;
//   int? originalId;
//   double? spoonacularScore;
//   String? spoonacularSourceUrl;

//   Recipes(
//       {this.vegetarian,
//       this.vegan,
//       this.glutenFree,
//       this.dairyFree,
//       this.veryHealthy,
//       this.cheap,
//       this.veryPopular,
//       this.sustainable,
//       this.lowFodmap,
//       this.weightWatcherSmartPoints,
//       this.gaps,
//       this.preparationMinutes,
//       this.cookingMinutes,
//       this.aggregateLikes,
//       this.healthScore,
//       this.creditsText,
//       this.license,
//       this.sourceName,
//       this.pricePerServing,
//       this.extendedIngredients,
//       this.id,
//       this.title,
//       this.readyInMinutes,
//       this.servings,
//       this.sourceUrl,
//       this.image,
//       this.imageType,
//       this.summary,
//       this.cuisines,
//       this.dishTypes,
//       this.diets,
//       this.occasions,
//       this.instructions,
//       this.analyzedInstructions,
//       this.originalId,
//       this.spoonacularScore,
//       this.spoonacularSourceUrl});

//   Recipes.fromJson(Map<String, dynamic> json) {
//     vegetarian = json['vegetarian'];
//     vegan = json['vegan'];
//     glutenFree = json['glutenFree'];
//     dairyFree = json['dairyFree'];
//     veryHealthy = json['veryHealthy'];
//     cheap = json['cheap'];
//     veryPopular = json['veryPopular'];
//     sustainable = json['sustainable'];
//     lowFodmap = json['lowFodmap'];
//     weightWatcherSmartPoints = json['weightWatcherSmartPoints'];
//     gaps = json['gaps'];
//     preparationMinutes = json['preparationMinutes'];
//     cookingMinutes = json['cookingMinutes'];
//     aggregateLikes = json['aggregateLikes'];
//     healthScore = json['healthScore'];
//     creditsText = json['creditsText'];
//     license = json['license'];
//     sourceName = json['sourceName'];
//     pricePerServing = json['pricePerServing'];
//     if (json['extendedIngredients'] != null) {
//       extendedIngredients = <ExtendedIngredients>[];
//       json['extendedIngredients'].forEach((v) {
//         extendedIngredients!.add(ExtendedIngredients.fromJson(v));
//       });
//     }
//     id = json['id'];
//     title = json['title'];
//     readyInMinutes = json['readyInMinutes'];
//     servings = json['servings'];
//     sourceUrl = json['sourceUrl'];
//     image = json['image'];
//     imageType = json['imageType'];
//     summary = json['summary'];
//     cuisines = json['cuisines']?.cast<String>();
//     dishTypes = json['dishTypes']?.cast<String>();
//     diets = json['diets']?.cast<String>();
//     occasions = json['occasions']?.cast<String>();
//     instructions = json['instructions'];
//     if (json['analyzedInstructions'] != null) {
//       analyzedInstructions = <AnalyzedInstructions>[];
//       json['analyzedInstructions'].forEach((v) {
//         analyzedInstructions!.add(AnalyzedInstructions.fromJson(v));
//       });
//     }
//     originalId = json['originalId'];
//     spoonacularScore = json['spoonacularScore'];
//     spoonacularSourceUrl = json['spoonacularSourceUrl'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['vegetarian'] = this.vegetarian;
//     data['vegan'] = this.vegan;
//     data['glutenFree'] = this.glutenFree;
//     data['dairyFree'] = this.dairyFree;
//     data['veryHealthy'] = this.veryHealthy;
//     data['cheap'] = this.cheap;
//     data['veryPopular'] = this.veryPopular;
//     data['sustainable'] = this.sustainable;
//     data['lowFodmap'] = this.lowFodmap;
//     data['weightWatcherSmartPoints'] = this.weightWatcherSmartPoints;
//     data['gaps'] = this.gaps;
//     data['preparationMinutes'] = this.preparationMinutes;
//     data['cookingMinutes'] = this.cookingMinutes;
//     data['aggregateLikes'] = this.aggregateLikes;
//     data['healthScore'] = this.healthScore;
//     data['creditsText'] = this.creditsText;
//     data['license'] = this.license;
//     data['sourceName'] = this.sourceName;
//     data['pricePerServing'] = this.pricePerServing;
//     if (this.extendedIngredients != null) {
//       data['extendedIngredients'] =
//           this.extendedIngredients!.map((v) => v.toJson()).toList();
//     }
//     data['id'] = this.id;
//     data['title'] = this.title;
//     data['readyInMinutes'] = this.readyInMinutes;
//     data['servings'] = this.servings;
//     data['sourceUrl'] = this.sourceUrl;
//     data['image'] = this.image;
//     data['imageType'] = this.imageType;
//     data['summary'] = this.summary;
//     if (this.cuisines != null) {
//       data['cuisines'] = this.cuisines;
//     }
//     data['dishTypes'] = this.dishTypes;
//     if (this.diets != null) {
//       data['diets'] = this.diets;
//     }
//     if (this.occasions != null) {
//       data['occasions'] = this.occasions;
//     }
//     data['instructions'] = this.instructions;
//     if (this.analyzedInstructions != null) {
//       data['analyzedInstructions'] =
//           this.analyzedInstructions!.map((v) => v.toJson()).toList();
//     }
//     data['originalId'] = this.originalId;
//     data['spoonacularScore'] = this.spoonacularScore;
//     data['spoonacularSourceUrl'] = this.spoonacularSourceUrl;
//     return data;
//   }
// }

// class ExtendedIngredients {
//   int? id;
//   String? aisle;
//   String? image;
//   String? consistency;
//   String? name;
//   String? nameClean;
//   String? original;
//   String? originalName;
//   int? amount;
//   String? unit;
//   List<String>? meta;
//   Measures? measures;

//   ExtendedIngredients(
//       {this.id,
//       this.aisle,
//       this.image,
//       this.consistency,
//       this.name,
//       this.nameClean,
//       this.original,
//       this.originalName,
//       this.amount,
//       this.unit,
//       this.meta,
//       this.measures});

//   ExtendedIngredients.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     aisle = json['aisle'];
//     image = json['image'];
//     consistency = json['consistency'];
//     name = json['name'];
//     nameClean = json['nameClean'];
//     original = json['original'];
//     originalName = json['originalName'];
//     amount = json['amount'];
//     unit = json['unit'];
//     meta = json['meta']?.cast<String>();
//     measures = json['measures'] != null
//         ? Measures.fromJson(json['measures'])
//         : null;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['id'] = this.id;
//     data['aisle'] = this.aisle;
//     data['image'] = this.image;
//     data['consistency'] = this.consistency;
//     data['name'] = this.name;
//     data['nameClean'] = this.nameClean;
//     data['original'] = this.original;
//     data['originalName'] = this.originalName;
//     data['amount'] = this.amount;
//     data['unit'] = this.unit;
//     data['meta'] = this.meta;
//     if (this.measures != null) {
//       data['measures'] = this.measures!.toJson();
//     }
//     return data;
//   }
// }

// class Measures {
//   Us? us;
//   Metric? metric;

//   Measures({this.us, this.metric});

//   Measures.fromJson(Map<String, dynamic> json) {
//     us = json['us'] != null ? Us.fromJson(json['us']) : null;
//     metric =
//         json['metric'] != null ? Metric.fromJson(json['metric']) : null;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     if (this.us != null) {
//       data['us'] = this.us!.toJson();
//     }
//     if (this.metric != null) {
//       data['metric'] = this.metric!.toJson();
//     }
//     return data;
//   }
// }

// class Us {
//   double? amount;
//   String? unitShort;
//   String? unitLong;

//   Us({this.amount, this.unitShort, this.unitLong});

//   Us.fromJson(Map<String, dynamic> json) {
//     amount = json['amount'];
//     unitShort = json['unitShort'];
//     unitLong = json['unitLong'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['amount'] = this.amount;
//     data['unitShort'] = this.unitShort;
//     data['unitLong'] = this.unitLong;
//     return data;
//   }
// }

// class Metric {
//   int? amount;
//   String? unitShort;
//   String? unitLong;

//   Metric({this.amount, this.unitShort, this.unitLong});

//   Metric.fromJson(Map<String, dynamic> json) {
//     amount = json['amount'];
//     unitShort = json['unitShort'];
//     unitLong = json['unitLong'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['amount'] = this.amount;
//     data['unitShort'] = this.unitShort;
//     data['unitLong'] = this.unitLong;
//     return data;
//   }
// }

// class AnalyzedInstructions {
//   String? name;
//   List<Steps>? steps;

//   AnalyzedInstructions({this.name, this.steps});

//   AnalyzedInstructions.fromJson(Map<String, dynamic> json) {
//     name = json['name'];
//     if (json['steps'] != null) {
//       steps = <Steps>[];
//       json['steps'].forEach((v) {
//         steps!.add(Steps.fromJson(v));
//       });
//     }
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['name'] = this.name;
//     if (this.steps != null) {
//       data['steps'] = this.steps!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }

// class Steps {
//   int? number;
//   String? step;
//   List<Ingredients>? ingredients;
//   List<Equipment>? equipment;
//   Temperature? length;

//   Steps(
//       {this.number, this.step, this.ingredients, this.equipment, this.length});

//   Steps.fromJson(Map<String, dynamic> json) {
//     number = json['number'];
//     step = json['step'];
//     if (json['ingredients'] != null) {
//       ingredients = <Ingredients>[];
//       json['ingredients'].forEach((v) {
//         ingredients!.add(Ingredients.fromJson(v));
//       });
//     }
//     if (json['equipment'] != null) {
//       equipment = <Equipment>[];
//       json['equipment'].forEach((v) {
//         equipment!.add(Equipment.fromJson(v));
//       });
//     }
//     length = json['length'] != null
//         ? Temperature.fromJson(json['length'])
//         : null;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['number'] = this.number;
//     data['step'] = this.step;
//     if (this.ingredients != null) {
//       data['ingredients'] = this.ingredients!.map((v) => v.toJson()).toList();
//     }
//     if (this.equipment != null) {
//       data['equipment'] = this.equipment!.map((v) => v.toJson()).toList();
//     }
//     if (this.length != null) {
//       data['length'] = this.length!.toJson();
//     }
//     return data;
//   }
// }

// class Ingredients {
//   int? id;
//   String? name;
//   String? localizedName;
//   String? image;

//   Ingredients({this.id, this.name, this.localizedName, this.image});

//   Ingredients.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     name = json['name'];
//     localizedName = json['localizedName'];
//     image = json['image'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['id'] = this.id;
//     data['name'] = this.name;
//     data['localizedName'] = this.localizedName;
//     data['image'] = this.image;
//     return data;
//   }
// }

// class Equipment {
//   int? id;
//   String? name;
//   String? localizedName;
//   String? image;
//   Temperature? temperature;

//   Equipment(
//       {this.id, this.name, this.localizedName, this.image, this.temperature});

//   Equipment.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     name = json['name'];
//     localizedName = json['localizedName'];
//     image = json['image'];
//     temperature = json['temperature'] != null
//         ? Temperature.fromJson(json['temperature'])
//         : null;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['id'] = this.id;
//     data['name'] = this.name;
//     data['localizedName'] = this.localizedName;
//     data['image'] = this.image;
//     if (this.temperature != null) {
//       data['temperature'] = this.temperature!.toJson();
//     }
//     return data;
//   }
// }

// class Temperature {
//   int? number;
//   String? unit;

//   Temperature({this.number, this.unit});

//   Temperature.fromJson(Map<String, dynamic> json) {
//     number = json['number'];
//     unit = json['unit'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = <String, dynamic>{};
//     data['number'] = this.number;
//     data['unit'] = this.unit;
//     return data;
//   }
// }
