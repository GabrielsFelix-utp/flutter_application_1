import 'package:flutter_application_1/src/auth/Models/item_model.dart';

//Maçã
ItemModel apple = ItemModel(
  description:
      'A Melhor maçã da região e que conta com o melhor preço de qualquer quitanda',
  imgUrl: 'assets/fruits/apple.png',
  itemName: 'Maçã',
  price: 5.5,
  unit: 'kg',
);
//Uva
ItemModel grape = ItemModel(
  description:
      'A Melhor Uva da região e que conta com o melhor preço de qualquer quitanda',
  imgUrl: 'assets/fruits/grape.png',
  itemName: 'Uva',
  price: 7.4,
  unit: 'kg',
);
//goiaba
ItemModel guava = ItemModel(
  description:
      'A Melhor goiaba da região e que conta com o melhor preço de qualquer quitanda',
  imgUrl: 'assets/fruits/guava.png',
  itemName: 'Goiaba',
  price: 11.5,
  unit: 'kg',
);
//Kiwi
ItemModel kiwi = ItemModel(
  description:
      'O Melhor kiwui da região e que conta com o melhor preço de qualquer quitanda',
  imgUrl: 'assets/fruits/kiwi.png',
  itemName: 'Kiwi',
  price: 2.5,
  unit: 'kg',
);
//Manga
ItemModel mango = ItemModel(
  description:
      'A Melhor manga da região e que conta com o melhor preço de qualquer quitanda',
  imgUrl: 'assets/fruits/mango.png',
  itemName: 'Manga',
  price: 2.5,
  unit: 'kg',
);
//Mamão
ItemModel papaya = ItemModel(
  description:
      'O Melhor mamão da região e que conta com o melhor preço de qualquer quitanda',
  imgUrl: 'assets/fruits/papaya.png',
  itemName: 'Mamão',
  price: 8,
  unit: 'kg',
);

List<ItemModel> items = [
  apple,
  grape,
  guava,
  kiwi,
  mango,
  papaya,
];

List<String> categories = [
  'Frutas',
  'Verduras',
  'Temperos',
  'Legumes',
  'Grãos',
];
