import 'package:flutter/material.dart';

import '../../core/constants/colors.dart';

class Product {
  final String title, image, description, flavor;
  final int total, reviews, id;
  final double price, star;
  final Color color, lightColor;

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
    required this.lightColor,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "Vanilla Ice Cream",
      description: dummyText,
      image: "assets/images/vanilla.png",
      flavor: "Vanilla",
      star: 4.1,
      reviews: 1000,
      total: 1,
      price: 5,
      color: prunusAvium,
      lightColor: firstDate),
  Product(
      id: 2,
      title: "Neopolitan Ice Cream",
      description: dummyText,
      image: "assets/images/neopolitan.png",
      flavor: "Neopolitan",
      star: 4.5,
      reviews: 144,
      total: 1,
      price: 5,
      color: sourLemon,
      lightColor: lightSourLemon),
  Product(
      id: 3,
      title: "Sherbet Flavor",
      description: dummyText,
      image: "assets/images/sherbet_flavors_3.png",
      flavor: "Strawbery",
      star: 5,
      reviews: 100,
      total: 1,
      price: 10,
      color: greenDarnerTail,
      lightColor: lightGreenDarnerTail),
  Product(
      id: 4,
      title: "Raspberry Ice Cream",
      description: dummyText,
      image: "assets/images/raspberry.png",
      flavor: "Raspberry",
      star: 4.9,
      reviews: 229,
      total: 2,
      price: 14.60,
      color: chiGong,
      lightColor: firstDate),
  Product(
      id: 5,
      title: "Sherbet Flavor",
      description: dummyText,
      image: "assets/images/sherbet_flavors_1.png",
      flavor: "Strawbery",
      star: 5,
      reviews: 100,
      total: 1,
      price: 10,
      color: sourLemon,
      lightColor: lightSourLemon),
  Product(
      id: 6,
      title: "Sherbet Flavor",
      description: dummyText,
      image: "assets/images/sherbet_flavors_2.png",
      flavor: "Strawberym",
      star: 5,
      reviews: 100,
      total: 1,
      price: 10,
      color: chiGong,
      lightColor: firstDate),
  Product(
      id: 7,
      title: "Lemon Ice Cream",
      description: dummyText,
      image: "assets/images/lemon.png",
      flavor: "Lemon",
      star: 5,
      reviews: 100,
      total: 2,
      price: 10,
      color: sourLemon,
      lightColor: lightSourLemon),
];

String dummyText =
    "The best sorbets come from the best fruits. That's why we hand-pick heritage raspberries and combine them with the sweetest and most juicy strawberries.";
