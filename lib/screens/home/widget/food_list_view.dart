import 'package:flutter/cupertino.dart';
import 'package:food_delivery/models/restaurant.dart';
import 'package:food_delivery/screens/home/widget/food_item.dart';

class FoodListView extends StatelessWidget {
  final int selected;
  final Function callback;
  final PageController pageController;
  final Restaurant restaurant;

  FoodListView(this.selected,
      this.callback,
      this.pageController,
      this.restaurant);

  @override
  Widget build(BuildContext context) {
    final catogary = restaurant.menu.keys.toList();
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: PageView(
        controller: pageController,
        onPageChanged: (index) => callback(index),
        children:
          catogary.map((e) =>
          ListView.separated(
            padding: EdgeInsets.zero,//شال الفراغ من فوق
              itemBuilder: (context,index) => FoodItem(
                restaurant.menu[catogary[selected]]![index]
              ),
              separatorBuilder: (_,index) => SizedBox(height: 15,),
              itemCount: restaurant.menu[catogary[selected]]!.length)).toList()
      ),
    );
  }
}
