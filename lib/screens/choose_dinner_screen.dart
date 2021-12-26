import 'package:flutter/material.dart';
import 'package:food_app/custom_widgets/chips.dart';
import 'package:food_app/custom_widgets/navigation_bar.dart';
import 'package:food_app/utils/values.dart';
import 'package:food_app/models/food_model.dart';

class ChooseDinnerScreen extends StatelessWidget {
  const ChooseDinnerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    screenSize = MediaQuery.of(context).size;

    return Scaffold(
      bottomNavigationBar: const AppNavigationBar(),
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
                  const Text(
                    'hi Zaheen',
                    style: TextStyle(fontSize: 18),
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
                  )
                ],
              ),
            ),
            const Padding(
              padding:
                  EdgeInsets.only(top: 12, left: 8.0, right: 50, bottom: 20),
              child: Text(
                'What do you want for dinner? 🍽',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    letterSpacing: 0.05),
              ),
            ),
            FoodChips(icons: const ['🍕', '🍔', '🍟', '🍕', '🍔', '🍟']),
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                'Recommended',
                style: TextStyle(
                  fontSize: 24,
                  letterSpacing: 0.05,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: SizedBox(
                //color: Colors.green,
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.height,
                child: GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: .85,
                  ),
                  itemCount: foodItems.length,
                  itemBuilder: (BuildContext context, index) {
                    return getFoodItem(foodItems[index]);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.amber,
        child: const Icon(Icons.shopping_bag),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Widget getFoodItem(Food food) => Builder(builder: (context) {
        return GestureDetector(
          onTap: () =>
              Navigator.pushNamed(context, '/food_details', arguments: food),
          child: Stack(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 30, right: 20, left: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                // height: 180,
                // width: 180,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 12.0, left: 8.0, right: 8.0),
                      child: Text(
                        food.foodName,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w700),
                      ),
                    ),
                    Text(food.foodType),
                    // const SizedBox(
                    //   height: 5.0,
                    // ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '\$ ${food.price}',
                            style: const TextStyle(fontWeight: FontWeight.w500),
                          ),
                          const Icon(
                            Icons.favorite,
                            color: Colors.red,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(60),
                    image: DecorationImage(
                      image: AssetImage(
                        food.imageUrl,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      });
}
