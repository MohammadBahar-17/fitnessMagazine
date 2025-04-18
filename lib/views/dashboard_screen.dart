import 'package:fitness_magazine/data/content_repository.dart';
import 'package:fitness_magazine/widgets/category_content_list.dart';
import 'package:fitness_magazine/widgets/featured_content_slider.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

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
          title: const Text(
            'مركز الصحة',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 300,
              child: FeaturedContentSlider(
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
                tabs: _tabLabels.map((label) => Text(label)).toList(),
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
