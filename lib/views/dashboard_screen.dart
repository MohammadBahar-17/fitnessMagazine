import 'package:fitness_magazine/data/content_repository.dart';
import 'package:fitness_magazine/widgets/category_content_list.dart';
import 'package:fitness_magazine/widgets/featured_content.dart';
import 'package:flutter/material.dart';

import 'package:fitness_magazine/textStyle/custom_style.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final List<String> _tabLabels = ['تغذية', 'صحة', 'جمال', 'لياقة'];
  late ContentRepository _repository;

  @override
  void initState() {
    super.initState();
    _repository = ContentRepository();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabLabels.length,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'مجلة صحية',
            style: AppTextStyles.appBarTitle(),
          ),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 320,
              child: FeaturedContent(
                featuredArticles: _repository.getFeaturedArticles(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TabBar(
                indicatorWeight: 3,
                labelPadding: const EdgeInsets.all(8),
                dividerColor: Colors.transparent,
                indicatorColor: const Color(0xFF48444D),
                tabs: [
                  Tab(
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      child: ColoredBox(
                        color: Color(0xFFF1F1F1),
                        child: Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                          child: Text(
                            'تغذية',
                            style: AppTextStyles.tabBar(),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Tab(
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      child: ColoredBox(
                        color: Color(0xFFF1F1F1),
                        child: Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                          child: Text(
                            'صحة',
                            style: AppTextStyles.tabBar(),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Tab(
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      child: ColoredBox(
                        color: Color(0xFFF1F1F1),
                        child: Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                          child: Text(
                            'جمال',
                            style: AppTextStyles.tabBar(),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Tab(
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      child: ColoredBox(
                        color: Color(0xFFF1F1F1),
                        child: Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                          child: Text(
                            'لياقة',
                            style: AppTextStyles.tabBar(),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  CategoryContentList(
                      articles: _repository.getNutritionArticles()),
                  CategoryContentList(
                      articles: _repository.getHealthArticles()),
                  CategoryContentList(
                      articles: _repository.getBeautyArticles()),
                  CategoryContentList(
                      articles: _repository.getFitnessArticles()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
