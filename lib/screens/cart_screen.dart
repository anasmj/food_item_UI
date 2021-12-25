import 'package:flutter/material.dart';
import 'package:food_app/custom_widgets/count_button.dart';
import 'package:food_app/utils/values.dart';
import 'package:food_app/models/food_model.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: const CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.black,
                        )),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                          image: AssetImage('assets/images/man.jfif'),
                          fit: BoxFit.cover),
                    ),
                    height: 40,
                    width: 40,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                //color: Colors.amber,
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  itemCount: foodItems.length,
                  itemBuilder: (context, index) =>
                      getFoodItem(index, context, foodItems[index]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container getFoodItem(int index, BuildContext context, Food food) =>
      Container(
        margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 2.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        width: screenSize.width * .8,
        height: 120,
        child: Row(
          //mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image(
              image: AssetImage(food.imageUrl),
              height: 150,
              width: 150,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0, bottom: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(food.foodName, style: const TextStyle(fontSize: 18)),
                  Text(food.foodType),
                  const SizedBox(height: 20.0),
                  Row(
                    children: [
                      const SizedBox(child: CountButton(), height: 30),
                      const SizedBox(
                        width: 40,
                      ),
                      Text('\$ ${food.price}',
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      //Text('\$54'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      );
}
