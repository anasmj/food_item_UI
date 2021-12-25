class Food {
  String imageUrl;
  String foodName;
  String foodType;
  String description;
  double price;
  bool isFavorite;

  Food({
    required this.imageUrl,
    required this.foodName,
    required this.foodType,
    required this.description,
    required this.price,
    this.isFavorite = false,
  });
}

List<Food> foodItems = [
  Food(
    imageUrl: 'assets/images/food_image/food.png',
    foodName: 'Chicken chowmin',
    foodType: 'fast food',
    description: 'delicious food',
    price: 180,
  ),
  Food(
    imageUrl: 'assets/images/food_image/burgur.png',
    foodName: 'Burgur',
    foodType: 'fast food',
    description: 'delicious food',
    price: 120,
  ),
  Food(
    imageUrl: 'assets/images/food_image/chicken_nuggets.jpg',
    foodName: 'Chicken Nuggets',
    foodType: 'fast food',
    description: 'delicious food',
    price: 150,
  ),
  Food(
    imageUrl: 'assets/images/food_image/donut.jpg',
    foodName: 'Donuts',
    foodType: 'fast food',
    description: 'delicious food',
    price: 90,
  ),
  Food(
    imageUrl: 'assets/images/food_image/hot_dog.jpg',
    foodName: 'Hot Dog',
    foodType: 'fast food',
    description: 'delicious food',
    price: 140,
  ),
  Food(
    imageUrl: 'assets/images/food_image/pizza.jpg',
    foodName: 'Pizza',
    foodType: 'fast food',
    description: 'delicious food',
    price: 665,
  ),
  Food(
    imageUrl: 'assets/images/food_image/sandwitch.jpg',
    foodName: 'Sandwitch',
    foodType: 'fast food',
    description: 'delicious food',
    price: 130,
  ),
  Food(
    imageUrl: 'assets/images/food_image/tacos.jpg',
    foodName: 'Tacos',
    foodType: 'fast food',
    description: 'delicious food',
    price: 230,
  ),
];
