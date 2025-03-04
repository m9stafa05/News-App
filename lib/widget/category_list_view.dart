import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widget/category_card.dart';

// ignore: must_be_immutable
class CategrysListView extends StatelessWidget {
  CategrysListView({super.key});

  List<CardModel> cards = [
    CardModel(
      title: 'Business',
      image: 'assets/business.avif',
    ),
    CardModel(
      title: 'Entertainment',
      image: 'assets/entertaiment.avif',
    ),
    CardModel(
      title: 'General',
      image: 'assets/general.avif',
    ),
    CardModel(
      title: 'Health',
      image: 'assets/health.avif',
    ),
    CardModel(
      title: 'Science',
      image: 'assets/science.avif',
    ),
    CardModel(
      title: 'Sports',
      image: 'assets/sports.avif',
    ),
    CardModel(
      title: 'Technology',
      image: 'assets/technology.jpeg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: Row(
          children:
              cards.map((card) {
                return CategoryCard(card: card);
              }).toList(),
        ),
      ),
    );
  }
}

      //     SizedBox(
      //   height: 100,
      //   child: ListView.builder(
      //     scrollDirection: Axis.horizontal,
      //     itemCount: cards.length,
      //     itemBuilder: (context, index) {
      //       return CategoryCard(
      //         card: cards[index],
      //       );
      //     },
      //   ),
      // ),