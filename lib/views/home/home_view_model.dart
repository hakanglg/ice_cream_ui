import 'package:flutter/material.dart';

import '../../core/constants/colors.dart';

class Product {
  final String title, image, description, flavor;
  final int total, reviews, id;
  final double price, star;
  final Color color;

  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.image,
    required this.flavor,
    required this.star,
    required this.reviews,
    required this.total,
    required this.price,
    required this.color,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "Vanilla Ice Cream",
      description: dummyText,
      image: "asset/images/vanilla.png",
      flavor: "Vanilla",
      star: 4.1,
      reviews: 1000,
      total: 1,
      price: 5,
      color: prunusAvium),
  Product(
      id: 2,
      title: "Lemon Ice Cream",
      description: dummyText,
      image: "asset/images/lemon.png",
      flavor: "lemon",
      star: 5,
      reviews: 100,
      total: 2,
      price: 10,
      color: sourLemon),
  Product(
      id: 3,
      title: "Neopolitan Ice Cream",
      description: dummyText,
      image: "asset/images/neopolitan.png",
      flavor: "Neopolitan",
      star: 4.5,
      reviews: 144,
      total: 1,
      price: 5,
      color: orangeVilee),
  Product(
      id: 4,
      title: "Raspberry Ice Cream",
      description: dummyText,
      image: "asset/images/raspberry.png",
      flavor: "Raspberry",
      star: 3.6,
      reviews: 123,
      total: 1,
      price: 4,
      color: chiGong),
  Product(
      id: 5,
      title: "Sherbet Flavor",
      description: dummyText,
      image: "asset/images/sherbet_flavors_1.png",
      flavor: "With strawbery Jam",
      star: 5,
      reviews: 100,
      total: 1,
      price: 10,
      color: sourLemon),
  Product(
      id: 6,
      title: "Sherbet Flavor",
      description: dummyText,
      image: "asset/images/sherbet_flavors_2.png",
      flavor: "With strawbery Jam",
      star: 5,
      reviews: 100,
      total: 1,
      price: 10,
      color: pinkGlamour),
  Product(
      id: 7,
      title: "Sherbet Flavor",
      description: dummyText,
      image: "asset/images/sherbet_flavors_3.png",
      flavor: "With strawbery Jam",
      star: 5,
      reviews: 100,
      total: 1,
      price: 10,
      color: greenDarnerTail)
];

String dummyText =
    "The best sorbets come from the best fruits. That's why we hand-pick heritage raspberries and combine them with the sweetest and most juicy strawberries.";
