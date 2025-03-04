import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/views/category_view.dart';

// ignore: must_be_immutable
class CategoryCard extends StatelessWidget {
  CategoryCard({super.key, required this.card});
  CardModel card;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return CategoryView(card: card);
            },
          ),
        );
      },
      child: Container(
        height: 100,
        width: 200,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(card.image),
          ),
        ),
        child: Center(
          child: Text(
            card.title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
            ),
          ),
        ),
      ),
    );
  }
}
