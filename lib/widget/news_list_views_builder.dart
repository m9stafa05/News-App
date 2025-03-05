import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/services/news_services.dart';
import 'package:news_app/widget/news_list_veiws.dart';

// ignore: must_be_immutable
class NewsListViewBulder extends StatefulWidget {
  NewsListViewBulder({
    super.key,
    required this.category,
  });
  String category;
  @override
  State<NewsListViewBulder> createState() =>
      _NewsListViewBulderState();
}

class _NewsListViewBulderState
    extends State<NewsListViewBulder> {
  // ignore: prefer_typing_uninitialized_variables
  var futute;
  @override
  void initState() {
    super.initState();
    futute = NewsServices().getNews(
      category: widget.category,
    );
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: futute,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NewsListView(
            articles: snapshot.data!,
          );
        } else if (snapshot.hasError) {
          return SliverToBoxAdapter(
            child: Text(
              'opps something went wrong',
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey,
              ),
            ),
          );
        } else {
          return SliverFillRemaining(
            hasScrollBody: false,
            child: Center(
              child: CircularProgressIndicator(
                color: Color(0xFF000000),
                strokeWidth: 5,
              ),
            ),
          );
        }
      },
    );
    /* if (isLoading) {
      
    } else {
      if (articles.isEmpty) {
        return SliverFillRemaining(
          hasScrollBody: false,
          child: Center(
            child:
          ),
        );
      } else {
        return NewsListView(articles: articles);
      }
    }
  } */
  }
}
