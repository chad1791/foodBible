//import 'dart:convert';
import 'package:flutter/cupertino.dart';
//import 'package:http/http.dart' as http;

//import '../models/http_exception.dart';
import '../models/food.dart';

class Foods with ChangeNotifier {
  //final String token;
  //final String userId;

  //Categories(this.token, this.userId, this._categories);
  Foods();

  List<Food> _foods = [
    Food(
      id: 'p1',
      name: 'Hawaian Pizza',
      category: 'Italian',
      image: 'lib/assets/images/pizza.jpg',
      tag: 'pizzas',
      creatorId: '',
    ),
    Food(
      id: 'p2',
      name: 'Chicken Alfredo',
      category: 'Italian',
      image: 'lib/assets/images/pasta.jpg',
      tag: 'pastas',
      creatorId: '',
    ),
    Food(
      id: 'p3',
      name: 'Cold Cake',
      category: 'Pastries',
      image: 'lib/assets/images/cake.jpg',
      tag: 'cake',
      creatorId: '',
    ),
    Food(
      id: 'p4',
      name: 'Cheese Cake',
      category: 'Pastries',
      image: 'lib/assets/images/cheese_cake.jpg',
      tag: 'cake',
      creatorId: '',
    ),
    Food(
      id: 'p5',
      name: 'Chicken Wings',
      category: 'Appetizers',
      image: 'lib/assets/images/wings.jpg',
      tag: 'appetizer',
      creatorId: '',
    ),
    Food(
      id: 'p6',
      name: 'Escabeche',
      category: 'Belizean',
      image: 'lib/assets/images/onion.jpg',
      tag: 'belizean',
      creatorId: '',
    ),
    Food(
      id: 'p7',
      name: 'Relleno',
      category: 'Belizean',
      image: 'lib/assets/images/relleno.jpeg',
      tag: 'belizean',
      creatorId: '',
    ),
  ];

  List<Food> _recent = [
    Food(
      id: 'p1',
      name: 'Hawaian Pizza',
      category: 'Italian',
      image: 'lib/assets/images/pizza.jpg',
      tag: 'pizzas',
      creatorId: 'John Doe',
    ),
    Food(
      id: 'p2',
      name: 'Chicken Alfredo',
      category: 'Italian',
      image: 'lib/assets/images/pasta.jpg',
      tag: 'pastas',
      creatorId: 'Gina Doe',
    ),
    Food(
      id: 'p3',
      name: 'Cold Cake',
      category: 'Pastries',
      image: 'lib/assets/images/cake.jpg',
      tag: 'cake',
      creatorId: 'Jane Doe',
    ),
    Food(
      id: 'p4',
      name: 'Cheese Cake',
      category: 'Pastries',
      image: 'lib/assets/images/cheese_cake.jpg',
      tag: 'cake',
      creatorId: 'Adam Smith',
    ),
    Food(
      id: 'p5',
      name: 'Chicken Wings',
      category: 'Appetizers',
      image: 'lib/assets/images/wings.jpg',
      tag: 'appetizer',
      creatorId: 'Richard Parker',
    ),
    Food(
      id: 'p6',
      name: 'Escabeche',
      category: 'Belizean',
      image: 'lib/assets/images/onion.jpg',
      tag: 'belizean',
      creatorId: 'Alfredo Ritche',
    ),
    Food(
      id: 'p7',
      name: 'Relleno',
      category: 'Belizean',
      image: 'lib/assets/images/relleno.jpeg',
      tag: 'belizean',
      creatorId: 'Orlando Portillo',
    ),
  ];

  List<Food> _breakfast = [
    Food(
      id: 'p5',
      name: 'Chicken Wings',
      category: 'Appetizers',
      image: 'lib/assets/images/wings.jpg',
      tag: 'appetizer',
      creatorId: 'Richard Parker',
    ),
    Food(
      id: 'p4',
      name: 'Cheese Cake',
      category: 'Pastries',
      image: 'lib/assets/images/cheese_cake.jpg',
      tag: 'cake',
      creatorId: 'Adam Smith',
    ),
    Food(
      id: 'p3',
      name: 'Cold Cake',
      category: 'Pastries',
      image: 'lib/assets/images/cake.jpg',
      tag: 'cake',
      creatorId: 'Jane Doe',
    ),
    Food(
      id: 'p2',
      name: 'Chicken Alfredo',
      category: 'Italian',
      image: 'lib/assets/images/pasta.jpg',
      tag: 'pastas',
      creatorId: 'Gina Doe',
    ),
    Food(
      id: 'p1',
      name: 'Hawaian Pizza',
      category: 'Italian',
      image: 'lib/assets/images/pizza.jpg',
      tag: 'pizzas',
      creatorId: 'John Doe',
    ),
    Food(
      id: 'p6',
      name: 'Escabeche',
      category: 'Belizean',
      image: 'lib/assets/images/onion.jpg',
      tag: 'belizean',
      creatorId: 'Alfredo Ritche',
    ),
    Food(
      id: 'p7',
      name: 'Relleno',
      category: 'Belizean',
      image: 'lib/assets/images/relleno.jpeg',
      tag: 'belizean',
      creatorId: 'Orlando Portillo',
    ),
  ];

  List<Food> _lunch = [
    Food(
      id: 'p3',
      name: 'Cold Cake',
      category: 'Pastries',
      image: 'lib/assets/images/cake.jpg',
      tag: 'cake',
      creatorId: 'Jane Doe',
    ),
    Food(
      id: 'p2',
      name: 'Chicken Alfredo',
      category: 'Italian',
      image: 'lib/assets/images/pasta.jpg',
      tag: 'pastas',
      creatorId: 'Gina Doe',
    ),
    Food(
      id: 'p5',
      name: 'Chicken Wings',
      category: 'Appetizers',
      image: 'lib/assets/images/wings.jpg',
      tag: 'appetizer',
      creatorId: 'Richard Parker',
    ),
    Food(
      id: 'p4',
      name: 'Cheese Cake',
      category: 'Pastries',
      image: 'lib/assets/images/cheese_cake.jpg',
      tag: 'cake',
      creatorId: 'Adam Smith',
    ),
    Food(
      id: 'p1',
      name: 'Hawaian Pizza',
      category: 'Italian',
      image: 'lib/assets/images/pizza.jpg',
      tag: 'pizzas',
      creatorId: 'John Doe',
    ),
    Food(
      id: 'p6',
      name: 'Escabeche',
      category: 'Belizean',
      image: 'lib/assets/images/onion.jpg',
      tag: 'belizean',
      creatorId: 'Alfredo Ritche',
    ),
    Food(
      id: 'p7',
      name: 'Relleno',
      category: 'Belizean',
      image: 'lib/assets/images/relleno.jpeg',
      tag: 'belizean',
      creatorId: 'Orlando Portillo',
    ),
  ];

  List<Food> _dinner = [
    Food(
      id: 'p6',
      name: 'Escabeche',
      category: 'Belizean',
      image: 'lib/assets/images/onion.jpg',
      tag: 'belizean',
      creatorId: 'Alfredo Ritche',
    ),
    Food(
      id: 'p7',
      name: 'Relleno',
      category: 'Belizean',
      image: 'lib/assets/images/relleno.jpeg',
      tag: 'belizean',
      creatorId: 'Orlando Portillo',
    ),
    Food(
      id: 'p3',
      name: 'Cold Cake',
      category: 'Pastries',
      image: 'lib/assets/images/cake.jpg',
      tag: 'cake',
      creatorId: 'Jane Doe',
    ),
    Food(
      id: 'p2',
      name: 'Chicken Alfredo',
      category: 'Italian',
      image: 'lib/assets/images/pasta.jpg',
      tag: 'pastas',
      creatorId: 'Gina Doe',
    ),
    Food(
      id: 'p5',
      name: 'Chicken Wings',
      category: 'Appetizers',
      image: 'lib/assets/images/wings.jpg',
      tag: 'appetizer',
      creatorId: 'Richard Parker',
    ),
    Food(
      id: 'p4',
      name: 'Cheese Cake',
      category: 'Pastries',
      image: 'lib/assets/images/cheese_cake.jpg',
      tag: 'cake',
      creatorId: 'Adam Smith',
    ),
    Food(
      id: 'p1',
      name: 'Hawaian Pizza',
      category: 'Italian',
      image: 'lib/assets/images/pizza.jpg',
      tag: 'pizzas',
      creatorId: 'John Doe',
    )
  ];

  List<Food> get foods {
    return [..._foods];
  }

  List<Food> get recent {
    return [..._recent];
  }

  List<Food> get breakfast {
    return [..._breakfast];
  }

  List<Food> get lunch {
    return [..._lunch];
  }

  List<Food> get dinner {
    return [..._dinner];
  }

  /*List<Product> get favoriteItems {
    return _items.where((product) => product.isFavorite).toList();
  }

  Product getProductById(String id) {
    return _items.firstWhere((product) => product.id == id);
  }

  Future<void> fetchProducts([bool filterByUser = false]) async {

    final filterString = filterByUser ? 'orderBy="creatorId"&equalTo="$userId"' : '';

    var url =
        'https://shopapp-9104c-default-rtdb.firebaseio.com/products.json?auth=$token&$filterString';

    try {
      final response = await http.get(url);
      final products = json.decode(response.body) as Map<String, dynamic>;
      final List<Product> _temProducts = [];

      if (products == null) {
        return;
      }

      url =
          'https://shopapp-9104c-default-rtdb.firebaseio.com/userFavorites/$userId.json?auth=$token';

      final favProducts = await http.get(url);
      final favProdList = json.decode(favProducts.body);

      products.forEach((productId, product) {
        _temProducts.add(Product(
          id: productId,
          name: product['name'],
          description: product['description'],
          price: product['price'],
          imgUrl: product['imgUrl'],
          isFavorite: favProdList == null ? false : favProdList[productId] ?? false,
        ));
      });

      _items = _temProducts;
      notifyListeners();
    } catch (error) {
      throw error;
    }
  }

  Future<void> addProduct(Product product) async {
    final url =
        'https://shopapp-9104c-default-rtdb.firebaseio.com/products.json?auth=$token';

    try {
      final response = await http.post(
        url,
        body: json.encode({
          'name': product.name,
          'price': product.price,
          'description': product.description,
          'imgUrl': product.imgUrl,
          'creatorId': userId,
        }),
      );

      final productDbId = json.decode(response.body)['name'];

      final newProduct = Product(
        id: productDbId,
        name: product.name,
        description: product.description,
        price: product.price,
        imgUrl: product.imgUrl,
      );

      _items.add(newProduct);

      notifyListeners();
    } catch (error) {
      throw error;
    }
  }

  Future<void> updateProduct(String id, Product newProduct) async {
    final prodIndex = _items.indexWhere((item) => item.id == id);

    if (prodIndex >= 0) {
      final url =
          'https://shopapp-9104c-default-rtdb.firebaseio.com/products/$id.json?auth=$token';

      await http.patch(
        url,
        body: json.encode({
          'name': newProduct.name,
          'description': newProduct.description,
          'imgUrl': newProduct.imgUrl,
          'price': newProduct.price
        }),
      );

      _items[prodIndex] = newProduct;
      notifyListeners();
    }
  }

  Future<void> removeProduct(String id) async {
    final url =
        'https://shopapp-9104c-default-rtdb.firebaseio.com/products/$id.json?auth=$token';

    final productIndex = _items.indexWhere((item) => item.id == id);
    var product = _items[productIndex];

    _items.removeAt(productIndex);
    notifyListeners();

    final response = await http.delete(url);

    if (response.statusCode >= 400) {
      _items.insert(productIndex, product);
      notifyListeners();
      throw HttpException('Could not delete product!');
    }

    product = null;
  }*/
}
