import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int id;
  final double price;
  final Color color;
  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.description,
    required this.price,
    required this.color
  });
}

List<Product> products = [
  Product(
      id: 123,
      image: 'images/1.jpg',
      title: "Blueberry",
      description: "Write description of product",
      price: 55,
      color: Colors.blue
  ),
  Product(
      id: 456,
      image: 'images/2.jpg',
      title: "Cranberry",
      description: "Write description of product",
      price: 58,
      color: Colors.red
  ),
  Product(
      id: 789,
      image: 'images/3.jpg',
      title: "Cherry",
      description: "Write description of product",
      price: 52,
      color: Colors.red
  ),
  Product(
      id: 321,
      image: 'images/4.jpg',
      title: "Cloudberry",
      description: "Write description of product",
      price: 60,
      color: Colors.orange
  ),
  Product(
      id: 654,
      image: 'images/5.jpg',
      title: "Raspberry",
      description: "Write description of product",
      price: 50,
      color: Colors.redAccent
  ),
  Product(
      id: 987,
      image: 'images/6.jpg',
      title: "Mix",
      description: "Write description of product",
      price: 56,
      color: Colors.pinkAccent
  ),
];