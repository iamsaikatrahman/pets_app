// Category

import 'package:flutter/material.dart';
import 'package:pets_app/models/category.dart';
import 'package:pets_app/models/groups.dart';
import 'package:pets_app/models/product.dart';

final _vet = Category(
  title: "Vet",
  thumbnail: "assets/categories/vet.png",
  bgColor: const Color(0xFF15464E),
  textColor: Colors.white,
);
final _placesToEat = Category(
  title: "Places to eat",
  thumbnail: "assets/categories/Places_to_eat.png",
  bgColor: const Color(0xFFC9E193),
  textColor: Colors.black,
);
final _placesToWalk = Category(
  title: "Places to walk",
  thumbnail: "assets/categories/Places_to_walk.png",
  bgColor: const Color(0xFF00B7B7),
  textColor: Colors.white,
);
final _spasSalons = Category(
  title: "Spas & Salons",
  thumbnail: "assets/categories/Spas_&_Salons.png",
  bgColor: const Color(0xFFB6DDDF),
  textColor: Colors.black,
);
final _shopsProducts = Category(
    title: "Shops & Products",
    thumbnail: "assets/categories/Shops_&_Products.png",
    bgColor: const Color(0xFFC9E193),
    textColor: Colors.black);
final _walk = Category(
  title: "Walk",
  thumbnail: "assets/categories/Walk.png",
  bgColor: const Color(0xFF15464E),
  textColor: Colors.white,
);
final _animalInAdoption = Category(
  title: "Animals in adoption",
  thumbnail: "assets/categories/Animals_in_adoption.png",
  bgColor: const Color(0xFFB6DDDF),
  textColor: Colors.black,
);
final _dogs = Category(
  title: "Dogs",
  thumbnail: "assets/categories/Dogs.png",
  bgColor: const Color(0xFF00B7B7),
  textColor: Colors.white,
);

// Walk Group

final _group1 = Groups(
  groupName: "Meet our lovely dog",
  thumbnail: "assets/groups/group3.png",
  location: "Valencia, Spain",
  members: 8,
  organizedBy: "Laura",
  categoryName: _placesToWalk,
);
final _group2 = Groups(
  groupName: "Meet our lovely dog",
  thumbnail: "assets/groups/group2.png",
  location: "Valencia, Spain",
  members: 8,
  organizedBy: "Laura",
  categoryName: _placesToWalk,
);
final _group3 = Groups(
  groupName: "Meet our lovely dog",
  thumbnail: "assets/groups/group1.png",
  location: "Valencia, Spain",
  members: 8,
  organizedBy: "Laura",
  categoryName: _placesToWalk,
);

final List<Groups> allgroups = [
  _group1,
  _group2,
  _group3,
];

final List<Category> allcategories = [
  _vet,
  _placesToEat,
  _placesToWalk,
  _spasSalons,
  _shopsProducts,
  _walk,
  _animalInAdoption,
  _dogs,
];

final _product1 = Product(
  name: "Purina one kitten with chicken",
  thumbnail: "assets/products/products1.png",
  location: "Valencia, Spain",
  sellby: "Jhon",
  stock: 100,
  price: 18.6,
);
final _product2 = Product(
  name: "Purina one kitten with chicken",
  thumbnail: "assets/products/products2.png",
  location: "Valencia, Spain",
  sellby: "Smith",
  stock: 100,
  price: 18.6,
);

final List<Product> allProducts = [
  _product1,
  _product2,
];
