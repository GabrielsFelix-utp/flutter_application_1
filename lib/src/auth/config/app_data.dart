import 'package:flutter_application_1/src/auth/Models/cart_item_model.dart';
import 'package:flutter_application_1/src/auth/Models/item_model.dart';
import 'package:flutter_application_1/src/auth/Models/order_model.dart';
import 'package:flutter_application_1/src/auth/Models/user_model.dart';
import 'package:flutter_application_1/src/auth/Pages/orders/orders_tab.dart';

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
  unit: 'un',
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

//banana
ItemModel banana = ItemModel(
  description:
      'O Melhor Banana da região e que conta com o melhor preço de qualquer quitanda',
  imgUrl: 'assets/fruits/banana.png',
  itemName: 'Banana',
  price: 1,
  unit: 'un',
);

List<ItemModel> items = [
  apple,
  grape,
  guava,
  kiwi,
  mango,
  papaya,
  banana,
];

List<String> categories = [
  'Frutas',
  'Verduras',
  'Legumes',
];

List<CartItemModel> cartItems = [
  CartItemModel(
    item: apple,
    quantity: 1,
  ),
  CartItemModel(
    item: mango,
    quantity: 2,
  ),
  CartItemModel(
    item: guava,
    quantity: 3,
  ),
];

UserModel user = UserModel(
  phone: '99 9 9999-9999',
  cpf: '999.999.999-99',
  email: 'joao@gmail.com',
  name: 'João',
  password: '0',
);

List<OrderModel> orders = [
  //Pedido 01
  OrderModel(
    copyAndPaste: 'fnsdjf45454',
    createdDateTime: DateTime.parse(
      '2025-06-08 10:00:10.458',
    ),
    overdueDateTime: DateTime.parse(
      '2025-06-08 11:00:10.458',
    ),
    id: "jdfksjd8787",
    status: 'pending_payment',
    total: 11.0,
    items: [
      CartItemModel(
        item: apple,
        quantity: 2,
      ),
      CartItemModel(
        item: mango,
        quantity: 2,
      ),
    ],
  ),

  // Pedido 02
  OrderModel(
    copyAndPaste: 'djasdbaks55',
    createdDateTime: DateTime.parse(
      '2024-06-08 10:00:10.458',
    ),
    overdueDateTime: DateTime.parse(
      '2024-06-08 11:00:10.458',
    ),
    id: "dfsd5464sdf",
    status: 'delivered',
    total: 15.5,
    items: [
      CartItemModel(
        item: guava,
        quantity: 1,
      ),
    ],
  ),
];
