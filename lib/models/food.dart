class Food{
  String imgUrl;
  String desc;
  String name;
  String waitTime;
  num score;
  String cal;
  num price;
  num quantity;
  List<Map<String,String>> ingredients;
  String about;
  bool hightLight;

  Food(
      this.imgUrl,
      this.desc,
      this.name,
      this.waitTime,
      this.score,
      this.cal,
      this.price,
      this.quantity,
      this.ingredients,
      this.about,
      {this.hightLight = false}
      );

  static List<Food> generateRecommendFoods(){
    return[
      Food('assets/Images/pexels-narda-yescas-1566837.jpg',
          'Most Popular',
          'Pizza',
          '50 min',
          4.8,
          '325 kcal',
          14.5,
          0,
          [
            {
              'Vegeterian':'assets/Images/pexels-kristina-paukshtite-1146760.jpg'
            }
          ],
          'Simply ',
        hightLight: true
      ),
      Food('assets/Images/pexels-narda-yescas-1566837.jpg',
          'Most Popular',
          'Pizza',
          '50 min',
          4.8,
          '325 kcal',
          14.5,
          0,
          [
            {
              'Vegeterian':'assets/Images/pexels-kristina-paukshtite-1146760.jpg'
            }
          ],
          'Simply ',
          hightLight: true
      ),
    ];
  }
  static List<Food> generatePopularFoods(){
    return[
      Food('assets/Images/pexels-kristina-paukshtite-1146760.jpg',
          'Most Popular',
          'HotDog',
          '50 min',
          4.8,
          '325 kcal',
          14.5,
          0,
          [
            {
              'Vegeterian':'assets/Images/pexels-kristina-paukshtite-1146760.jpg'
            }
          ],
          'Simply ',
          hightLight: true
      ),

    ];
  }

}