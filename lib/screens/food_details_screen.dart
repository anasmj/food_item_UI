import 'package:flutter/material.dart';
import 'package:food_app/custom_widgets/count_button.dart';
import 'package:food_app/utils/colors.dart';
import 'package:food_app/models/food_model.dart';

class FoodDetails extends StatelessWidget {
  const FoodDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Food food = ModalRoute.of(context)!.settings.arguments as Food;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
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
                    const CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.favorite,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(food.imageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                  //color: Colors.amber,
                  height: MediaQuery.of(context).size.width * 0.6,
                  width: MediaQuery.of(context).size.width * 0.6,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    food.foodName,
                    style: const TextStyle(
                        letterSpacing: .005,
                        fontWeight: FontWeight.bold,
                        fontSize: 22),
                  ),
                  Text(
                    '\$ ${food.price}',
                    style: const TextStyle(
                        letterSpacing: .005,
                        fontWeight: FontWeight.bold,
                        fontSize: 22),
                  ),
                ],
              ),
              _getRating(rating: 3, size: 24),
              Row(
                children: const [
                  Icon(Icons.face, color: Colors.black),
                  SizedBox(
                    width: 3.0,
                  ),
                  Text('Rider'),
                  SizedBox(
                    width: 5.0,
                  ),
                  Icon(
                    Icons.add_circle_sharp,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text('topper'),
                  SizedBox(
                    width: 100.0,
                  ),
                  CountButton(),
                ],
              ),
              const Text(
                'Details',
                style: TextStyle(fontSize: 22),
              ),
              SizedBox(
                width: double.infinity,
                height: 80,
                child: Text(
                  food.description,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 4,
                  style: const TextStyle(fontSize: 16),
                ),
              ),
              const Text(
                'Ingredients',
                style: TextStyle(fontSize: 22),
              ),
              const IngredientsItems(),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.shopping_bag_outlined,
          color: Colors.black,
        ),
        backgroundColor: customYellow,
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterFloat,
    );
  }

  Text _getRating({required int rating, double? size = 18}) {
    String _buildStar = '';
    for (int i = 0; i < rating; i++) {
      _buildStar += '⭐';
    }
    return Text(
      _buildStar,
      style: TextStyle(fontSize: size),
    );
  }
}

class IngredientsItems extends StatelessWidget {
  const IngredientsItems({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        height: 60,
        //color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            Image(
              image: AssetImage('assets/images/food_image/food.png'),
              height: 60,
              width: 60,
            ),
            Image(
              image: AssetImage('assets/images/food_image/food.png'),
              height: 60,
              width: 60,
            ),
            SizedBox(
              width: 50,
            ),
            Image(
              image: AssetImage('assets/images/food_image/food.png'),
              height: 60,
              width: 60,
            ),
            Image(
              image: AssetImage('assets/images/food_image/food.png'),
              height: 60,
              width: 60,
            ),
          ],
        ));
  }
}
