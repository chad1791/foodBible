//import 'dart:convert';
import 'package:flutter/cupertino.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

//import '../models/http_exception.dart';
import '../models/category.dart';

class Categories with ChangeNotifier {
  //final String token;
  //final String userId;

  //Categories(this.token, this.userId, this._categories);
  Categories(this._categories);
  //Categories();

  List<Category> _categories = [
    /*Category(
      id: 'p1',
      name: 'Italian',
    ),
    Category(
      id: 'p2',
      name: 'Mexican',
    ),
    Category(
      id: 'p3',
      name: 'Appetizers',
    ),
    Category(
      id: 'p4',
      name: 'Pastries',
    ),
    Category(
      id: 'p4',
      name: 'Pizzas',
    ),
    Category(
      id: 'p4',
      name: 'Pastas',
    ),
    Category(
      id: 'p4',
      name: 'Vegan',
    ),*/
  ];

  List<Category> get categories {
    return [..._categories];
  }

  Future<void> addCategory(String name, String desc) async {
    Map<String, dynamic> category = {'name': '$name', 'desc': '$desc'};

    CollectionReference collections =
        FirebaseFirestore.instance.collection('categories');

    collections.add(category);
  }

  Future<void> fetchCategories() async {
    try {
      final List<Category> _tempCategories = [];

      CollectionReference collections =
          FirebaseFirestore.instance.collection('categories');

      collections.snapshots().listen((data) {
        if (data.docs.length == 0) {
          return;
        }
        data.docs.forEach((category) {
          _tempCategories
              .add(Category(id: category.id, name: category['name']));

          print(category.id);
          print(category['name']);
        });
      });

      _categories = _tempCategories;
      notifyListeners();
    } catch (error) {
      throw error;
    }
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
