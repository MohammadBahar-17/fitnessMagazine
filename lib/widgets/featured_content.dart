import 'package:cached_network_image/cached_network_image.dart';
import 'package:fitness_magazine/models/content_models.dart';
import 'package:fitness_magazine/textStyle/custom_style.dart';
import 'package:fitness_magazine/views/article_view_screen.dart';
import 'package:flutter/material.dart';

class FeaturedContent extends StatelessWidget {
  final List<FeaturedArticle> featuredArticles;

  const FeaturedContent({
    super.key,
    required this.featuredArticles,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: featuredArticles.length,
      itemBuilder: (context, index) {
        return _FeaturedArticleCard(article: featuredArticles[index]);
      },
    );
  }
}

class _FeaturedArticleCard extends StatelessWidget {
  final FeaturedArticle article;

  const _FeaturedArticleCard({
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
        child: Container(
          width: 300,
          height: 300,
          decoration: const BoxDecoration(color: Colors.white),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Hero(
                tag: article.imagePath,
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  child: Stack(
                    children: [
                      CachedNetworkImage(
                        imageUrl: article.imagePath,
                        width: 300,
                        height: 150,
                        fit: BoxFit.cover,
                        placeholder: (context, url) => SizedBox(
                          width: 300,
                          height: 150,
                          child: CircularProgressIndicator(),
                        ),
                        errorWidget: (context, url, error) => SizedBox(
                          width: 300,
                          height: 150,
                          child: Icon(Icons.error),
                        ),
                      ),
                      const Positioned(
                        top: 12,
                        left: 13,
                        child: Icon(
                          Icons.favorite_border,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 90,
                color: article.themeColor,
                padding: EdgeInsets.all(10.0),
                child: Text(
                  article.category,
                  style: AppTextStyles.articleCategory(),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                article.title,
                maxLines: 1,
                style: AppTextStyles.articleTitle(),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                article.summary,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: AppTextStyles.articleSummary(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
