class Recipe {
  final String name;
  final String author;
  final String country;
  final int ratings;
  final String imgurl;
  final String category;
  final String description;
  Recipe(
      {required this.name,
      required this.author,
      required this.country,
      required this.imgurl,
      required this.category,
      required this.ratings,
      required this.description});
}

List<Recipe> recipelist = [
  Recipe(
      name: 'Savannah Samosa',
      author: 'Chef Dejuls',
      country: 'Uganda',
      imgurl: 'assets/images/rest7.jpg',
      category: 'Starter',
      ratings: 4,
      description: 'The perfect starter for a bright day inspired by Banda St'),
  Recipe(
      name: 'Nifty Drifty Salad',
      author: 'Chef Dejuls',
      category: 'Salad',
      country: 'Uganda',
      imgurl: 'assets/images/rest10.jpg',
      ratings: 4,
      description:
          'The brightly colored herbs and green form the pearl with rarely seen igredents'),
  Recipe(
      name: 'Ug Cappucino',
      author: 'Chef Dejuls',
      category: 'Brews',
      country: 'Uganda',
      imgurl: 'assets/images/rest9.jpg',
      ratings: 4,
      description:
          'A taste of freshness from the purest of coffee in the nation. Coffee that wiil simulate sensation from Masaka'),
  Recipe(
      name: 'Prawn Hill',
      author: 'Chef Dejuls',
      category: 'Lunch',
      country: 'Uganda',
      imgurl: 'assets/images/rest13.png',
      ratings: 4,
      description:
          'a meal to die for assembled with love from the Kalangala Islands'),
  Recipe(
      name: 'Plus Morning',
      author: 'Chef Dejuls',
      category: 'Buffet',
      country: 'Uganda',
      imgurl: 'assets/images/rest3.jpg',
      ratings: 4,
      description:
          ' A full course Ugandan Breakfast with all food values made with love and executed to pefection!!')
];
