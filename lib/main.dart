import 'package:flutter/material.dart';
import 'package:food_app/screens/choose_dinner_screen.dart';
import 'package:food_app/screens/cart_screen.dart';
import 'package:food_app/screens/food_details_screen.dart';
import 'package:food_app/utils/colors.dart';

void main() => runApp(const Foodie());

class Foodie extends StatelessWidget {
  const Foodie({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            scaffoldBackgroundColor: appBackgroundColor,
          ),
          //home: const FoodDetails(),
          initialRoute: '/',
          routes: {
            '/': (context) => const ChooseDinnerScreen(),
            '/food_details': (context) => const FoodDetails(),
            '/cart': (context) => const CartScreen(),
          });
}
