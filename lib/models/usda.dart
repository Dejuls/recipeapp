class Usda2 {
    Usda2({
        required this.totalHits,
        required this.currentPage,
        required this.totalPages,
        required this.pageList,
        required this.foodSearchCriteria,
        required this.foods,
        required this.aggregations,
    });

    final int? totalHits;
    final int? currentPage;
    final int? totalPages;
    final List<int> pageList;
    final FoodSearchCriteria? foodSearchCriteria;
    final List<Food> foods;
    final Aggregations? aggregations;

    factory Usda2.fromJson(Map<String, dynamic> json){ 
        return Usda2(
            totalHits: json["totalHits"],
            currentPage: json["currentPage"],
            totalPages: json["totalPages"],
            pageList: json["pageList"] == null ? [] : List<int>.from(json["pageList"]!.map((x) => x)),
            foodSearchCriteria: json["foodSearchCriteria"] == null ? null : FoodSearchCriteria.fromJson(json["foodSearchCriteria"]),
            foods: json["foods"] == null ? [] : List<Food>.from(json["foods"]!.map((x) => Food.fromJson(x))),
            aggregations: json["aggregations"] == null ? null : Aggregations.fromJson(json["aggregations"]),
        );
    }

}

class Aggregations {
    Aggregations({
        required this.dataType,
        required this.nutrients,
    });

    final DataType? dataType;
    final Nutrients? nutrients;

    factory Aggregations.fromJson(Map<String, dynamic> json){ 
        return Aggregations(
            dataType: json["dataType"] == null ? null : DataType.fromJson(json["dataType"]),
            nutrients: json["nutrients"] == null ? null : Nutrients.fromJson(json["nutrients"]),
        );
    }

}

class DataType {
    DataType({
        required this.branded,
        required this.surveyFndds,
        required this.srLegacy,
        required this.foundation,
    });

    final int? branded;
    final int? surveyFndds;
    final int? srLegacy;
    final int? foundation;

    factory DataType.fromJson(Map<String, dynamic> json){ 
        return DataType(
            branded: json["Branded"],
            surveyFndds: json["Survey (FNDDS)"],
            srLegacy: json["SR Legacy"],
            foundation: json["Foundation"],
        );
    }

}

class Nutrients {
    Nutrients({required this.json});
    final Map<String,dynamic> json;

    factory Nutrients.fromJson(Map<String, dynamic> json){ 
        return Nutrients(
        json: json
        );
    }

}

class FoodSearchCriteria {
    FoodSearchCriteria({
        required this.query,
        required this.generalSearchInput,
        required this.pageNumber,
        required this.numberOfResultsPerPage,
        required this.pageSize,
        required this.requireAllWords,
    });

    final String? query;
    final String? generalSearchInput;
    final int? pageNumber;
    final int? numberOfResultsPerPage;
    final int? pageSize;
    final bool? requireAllWords;

    factory FoodSearchCriteria.fromJson(Map<String, dynamic> json){ 
        return FoodSearchCriteria(
            query: json["query"],
            generalSearchInput: json["generalSearchInput"],
            pageNumber: json["pageNumber"],
            numberOfResultsPerPage: json["numberOfResultsPerPage"],
            pageSize: json["pageSize"],
            requireAllWords: json["requireAllWords"],
        );
    }

}

class Food {
    Food({
        required this.fdcId,
        required this.description,
        required this.dataType,
        required this.gtinUpc,
        required this.publishedDate,
        required this.brandOwner,
        required this.brandName,
        required this.ingredients,
        required this.marketCountry,
        required this.foodCategory,
        required this.modifiedDate,
        required this.dataSource,
        required this.packageWeight,
        required this.servingSizeUnit,
        required this.servingSize,
        required this.householdServingFullText,
        required this.tradeChannels,
        required this.allHighlightFields,
        required this.score,
        required this.microbes,
        required this.foodNutrients,
        required this.finalFoodInputFoods,
        required this.foodMeasures,
        required this.foodAttributes,
        required this.foodAttributeTypes,
        required this.foodVersionIds,
        required this.subbrandName,
        required this.shortDescription,
        required this.commonNames,
        required this.additionalDescriptions,
        required this.foodCode,
        required this.foodCategoryId,
        required this.ndbNumber,
        required this.mostRecentAcquisitionDate,
    });

    final int? fdcId;
    final String? description;
    final String? dataType;
    final String? gtinUpc;
    final DateTime? publishedDate;
    final String? brandOwner;
    final String? brandName;
    final String? ingredients;
    final String? marketCountry;
    final String? foodCategory;
    final DateTime? modifiedDate;
    final String? dataSource;
    final String? packageWeight;
    final String? servingSizeUnit;
    final int? servingSize;
    final String? householdServingFullText;
    final List<String> tradeChannels;
    final String? allHighlightFields;
    final double? score;
    final List<dynamic> microbes;
    final List<FoodNutrient> foodNutrients;
    final List<FinalFoodInputFood> finalFoodInputFoods;
    final List<FoodMeasure> foodMeasures;
    final List<FoodAttribute> foodAttributes;
    final List<FoodAttributeType> foodAttributeTypes;
    final List<dynamic> foodVersionIds;
    final String? subbrandName;
    final String? shortDescription;
    final String? commonNames;
    final String? additionalDescriptions;
    final int? foodCode;
    final int? foodCategoryId;
    final int? ndbNumber;
    final DateTime? mostRecentAcquisitionDate;

    factory Food.fromJson(Map<String, dynamic> json){ 
        return Food(
            fdcId: json["fdcId"],
            description: json["description"],
            dataType: json["dataType"],
            gtinUpc: json["gtinUpc"],
            publishedDate: DateTime.tryParse(json["publishedDate"] ?? ""),
            brandOwner: json["brandOwner"],
            brandName: json["brandName"],
            ingredients: json["ingredients"],
            marketCountry: json["marketCountry"],
            foodCategory: json["foodCategory"],
            modifiedDate: DateTime.tryParse(json["modifiedDate"] ?? ""),
            dataSource: json["dataSource"],
            packageWeight: json["packageWeight"],
            servingSizeUnit: json["servingSizeUnit"],
            servingSize: json["servingSize"],
            householdServingFullText: json["householdServingFullText"],
            tradeChannels: json["tradeChannels"] == null ? [] : List<String>.from(json["tradeChannels"]!.map((x) => x)),
            allHighlightFields: json["allHighlightFields"],
            score: json["score"],
            microbes: json["microbes"] == null ? [] : List<dynamic>.from(json["microbes"]!.map((x) => x)),
            foodNutrients: json["foodNutrients"] == null ? [] : List<FoodNutrient>.from(json["foodNutrients"]!.map((x) => FoodNutrient.fromJson(x))),
            finalFoodInputFoods: json["finalFoodInputFoods"] == null ? [] : List<FinalFoodInputFood>.from(json["finalFoodInputFoods"]!.map((x) => FinalFoodInputFood.fromJson(x))),
            foodMeasures: json["foodMeasures"] == null ? [] : List<FoodMeasure>.from(json["foodMeasures"]!.map((x) => FoodMeasure.fromJson(x))),
            foodAttributes: json["foodAttributes"] == null ? [] : List<FoodAttribute>.from(json["foodAttributes"]!.map((x) => FoodAttribute.fromJson(x))),
            foodAttributeTypes: json["foodAttributeTypes"] == null ? [] : List<FoodAttributeType>.from(json["foodAttributeTypes"]!.map((x) => FoodAttributeType.fromJson(x))),
            foodVersionIds: json["foodVersionIds"] == null ? [] : List<dynamic>.from(json["foodVersionIds"]!.map((x) => x)),
            subbrandName: json["subbrandName"],
            shortDescription: json["shortDescription"],
            commonNames: json["commonNames"],
            additionalDescriptions: json["additionalDescriptions"],
            foodCode: json["foodCode"],
            foodCategoryId: json["foodCategoryId"],
            ndbNumber: json["ndbNumber"],
            mostRecentAcquisitionDate: DateTime.tryParse(json["mostRecentAcquisitionDate"] ?? ""),
        );
    }

}

class FinalFoodInputFood {
    FinalFoodInputFood({
        required this.foodDescription,
        required this.gramWeight,
        required this.id,
        required this.portionCode,
        required this.portionDescription,
        required this.unit,
        required this.rank,
        required this.srCode,
        required this.value,
    });

    final String? foodDescription;
    final int? gramWeight;
    final int? id;
    final String? portionCode;
    final String? portionDescription;
    final String? unit;
    final int? rank;
    final int? srCode;
    final int? value;

    factory FinalFoodInputFood.fromJson(Map<String, dynamic> json){ 
        return FinalFoodInputFood(
            foodDescription: json["foodDescription"],
            gramWeight: json["gramWeight"],
            id: json["id"],
            portionCode: json["portionCode"],
            portionDescription: json["portionDescription"],
            unit: json["unit"],
            rank: json["rank"],
            srCode: json["srCode"],
            value: json["value"],
        );
    }

}

class FoodAttributeType {
    FoodAttributeType({
        required this.name,
        required this.description,
        required this.id,
        required this.foodAttributes,
    });

    final String? name;
    final String? description;
    final int? id;
    final List<FoodAttribute> foodAttributes;

    factory FoodAttributeType.fromJson(Map<String, dynamic> json){ 
        return FoodAttributeType(
            name: json["name"],
            description: json["description"],
            id: json["id"],
            foodAttributes: json["foodAttributes"] == null ? [] : List<FoodAttribute>.from(json["foodAttributes"]!.map((x) => FoodAttribute.fromJson(x))),
        );
    }

}

class FoodAttribute {
    FoodAttribute({
        required this.value,
        required this.name,
        required this.id,
        required this.sequenceNumber,
    });

    final String? value;
    final String? name;
    final int? id;
    final int? sequenceNumber;

    factory FoodAttribute.fromJson(Map<String, dynamic> json){ 
        return FoodAttribute(
            value: json["value"],
            name: json["name"],
            id: json["id"],
            sequenceNumber: json["sequenceNumber"],
        );
    }

}

class FoodMeasure {
    FoodMeasure({
        required this.disseminationText,
        required this.gramWeight,
        required this.id,
        required this.modifier,
        required this.rank,
        required this.measureUnitAbbreviation,
        required this.measureUnitName,
        required this.measureUnitId,
    });

    final String? disseminationText;
    final double? gramWeight;
    final int? id;
    final String? modifier;
    final int? rank;
    final String? measureUnitAbbreviation;
    final String? measureUnitName;
    final int? measureUnitId;

    factory FoodMeasure.fromJson(Map<String, dynamic> json){ 
        return FoodMeasure(
            disseminationText: json["disseminationText"],
            gramWeight: json["gramWeight"],
            id: json["id"],
            modifier: json["modifier"],
            rank: json["rank"],
            measureUnitAbbreviation: json["measureUnitAbbreviation"],
            measureUnitName: json["measureUnitName"],
            measureUnitId: json["measureUnitId"],
        );
    }

}

class FoodNutrient {
    FoodNutrient({
        required this.nutrientId,
        required this.nutrientName,
        required this.nutrientNumber,
        required this.unitName,
        required this.derivationCode,
        required this.derivationDescription,
        required this.derivationId,
        required this.value,
        required this.foodNutrientSourceId,
        required this.foodNutrientSourceCode,
        required this.foodNutrientSourceDescription,
        required this.rank,
        required this.indentLevel,
        required this.foodNutrientId,
        required this.percentDailyValue,
        required this.dataPoints,
        required this.min,
        required this.max,
        required this.median,
    });

    final int? nutrientId;
    final String? nutrientName;
    final String? nutrientNumber;
    final String? unitName;
    final String? derivationCode;
    final String? derivationDescription;
    final int? derivationId;
    final double? value;
    final int? foodNutrientSourceId;
    final String? foodNutrientSourceCode;
    final String? foodNutrientSourceDescription;
    final int? rank;
    final int? indentLevel;
    final int? foodNutrientId;
    final int? percentDailyValue;
    final int? dataPoints;
    final double? min;
    final double? max;
    final double? median;

    factory FoodNutrient.fromJson(Map<String, dynamic> json){ 
        return FoodNutrient(
            nutrientId: json["nutrientId"],
            nutrientName: json["nutrientName"],
            nutrientNumber: json["nutrientNumber"],
            unitName: json["unitName"],
            derivationCode: json["derivationCode"],
            derivationDescription: json["derivationDescription"],
            derivationId: json["derivationId"],
            value: json["value"],
            foodNutrientSourceId: json["foodNutrientSourceId"],
            foodNutrientSourceCode: json["foodNutrientSourceCode"],
            foodNutrientSourceDescription: json["foodNutrientSourceDescription"],
            rank: json["rank"],
            indentLevel: json["indentLevel"],
            foodNutrientId: json["foodNutrientId"],
            percentDailyValue: json["percentDailyValue"],
            dataPoints: json["dataPoints"],
            min: json["min"],
            max: json["max"],
            median: json["median"],
        );
    }

}
