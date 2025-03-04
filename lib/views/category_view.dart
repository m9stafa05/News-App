import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widget/news_list_views_builder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({
    super.key,
    required this.card,
  });
  // ignore: non_constant_identifier_names
  final CardModel card;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(card.title)),
      body: CustomScrollView(
        slivers: [
          NewsListViewBulder(
            category: card.title,
          ),
        ],
      ),
    );
  }
}
