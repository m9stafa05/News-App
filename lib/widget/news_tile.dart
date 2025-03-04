import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
// import 'package:webview_flutter/webview_flutter.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({
    super.key,
    required this.articlesModel,
  });
  final ArticleModel articlesModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: () {
      //   Navigator.of(context).push(
      //     MaterialPageRoute(
      //       builder: (context) {
      //         // NewsWebViewScreen();
      //       },
      //     ),
      //   );
      // },
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(
                20,
              ),
              child: Image.network(
                articlesModel.image != null
                    ? articlesModel.image!
                    : 'https://www.google.com/images/branding/googlelogo/2x/googlelogo_light_color_272x92dp.png',
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Text(
              articlesModel.title ?? '',
              style: TextStyle(
                fontSize: 20,
                letterSpacing: 0,
                fontWeight: FontWeight.bold,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(height: 1),
            Text(
              articlesModel.subTitle ?? '',
              textAlign: TextAlign.start,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
