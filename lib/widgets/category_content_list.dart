import 'package:cached_network_image/cached_network_image.dart';
import 'package:fitness_magazine/models/content_models.dart';
import 'package:fitness_magazine/textStyle/custom_style.dart';
import 'package:fitness_magazine/views/article_view_screen.dart';
import 'package:flutter/material.dart';

class CategoryContentList extends StatelessWidget {
  final List<Article> articles;

  const CategoryContentList({
    super.key,
    required this.articles,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: articles.length,
      itemBuilder: (context, index) {
        return _ArticleList(article: articles[index]);
      },
    );
  }
}

class _ArticleList extends StatelessWidget {
  final Article article;

  const _ArticleList({
    super.key,
    required this.article,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => ArticleViewScreen(
                title: article.title,
                content: article.content,
                imagePath: article.imagePath,
              ),
            ),
          );
        },
        child: Card(
          color: article.themeColor,
          child: SizedBox(
            height: 120,
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  child: Hero(
                    tag: article.imagePath,
                    child: CachedNetworkImage(
                      imageUrl: article.imagePath,
                      width: 100,
                      height: 120,
                      fit: BoxFit.cover,
                      placeholder: (context, url) => const Center(
                        child: CircularProgressIndicator(),
                      ),
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.error),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          maxLines: 1,
                          article.title,
                          style: AppTextStyles.articleTitleCat(),
                        ),
                        Text(
                          article.summary,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: AppTextStyles.articleSummaryCat(),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: const [
                            Spacer(),
                            Icon(Icons.share, color: Colors.white),
                            SizedBox(width: 5),
                            Icon(Icons.favorite_border, color: Colors.white),
                            SizedBox(width: 5),
                            Icon(Icons.remove_red_eye, color: Colors.white),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
