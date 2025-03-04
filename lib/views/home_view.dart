import 'package:flutter/material.dart';
import 'package:news_app/widget/category_list_view.dart';
import 'package:news_app/widget/news_list_views_builder.dart';

// ignore: must_be_immutable
class HomeViews extends StatelessWidget {
  const HomeViews({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisAlignment:
              MainAxisAlignment.center,
          children: [
            Text(
              'News',
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Cloud',
              style: TextStyle(
                color: Color(0xFFF0B120),
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: CategrysListView(),
          ),
          NewsListViewBulder(category: 'general'),
        ],
      ),
      /* Column(
        children: [
          CategrysListView(),
          Expanded(child: ()),
        ],
      ), */
    );
  }
}
