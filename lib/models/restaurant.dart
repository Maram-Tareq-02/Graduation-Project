import 'food.dart';

class Restaurant {
  String name;
  String waitTime;
  String distance;
  String label;
  String logoUrl;
  String desc;
  num score;
  Map<String, List<Food>> menu;
  Restaurant(
      this.name,
      this.waitTime,
      this.distance,
      this.label,
      this.logoUrl,
      this.desc,
      this.score,
      this.menu
      );

  static Restaurant generateRestaurant(){
    return Restaurant(
        'QuickBite',
        '20-30 min',
        '2.4km',
        'Restaurant',
        'assets/Images/logo num resturant.jpg',
        'Orange sandwiches',
        4.7,
        {
          'Recommend' : Food.generateRecommendFoods(),
          'Popular' : Food.generatePopularFoods(),
          'Noodles' : [],
          'Pizza' : [],

        },
        );

  }
}