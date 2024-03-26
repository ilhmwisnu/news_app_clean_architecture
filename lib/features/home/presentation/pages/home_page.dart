import 'package:flutter/material.dart';
import 'package:news_app_clean_architecture/features/home/presentation/widgets/article.dart';
import 'package:news_app_clean_architecture/features/home/presentation/widgets/select_filter.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade100,
        appBar: AppBar(
            backgroundColor: Colors.grey.shade100,
            forceMaterialTransparency: true,
            title: Text(
              "Discover News",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
            )),
        body: ListView(
          children: [
            SizedBox(height: 8),
            SizedBox(
              height: 40,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(width: 16),
                  ...[1, 0, 0, 0, 0, 0].map(
                    (e) => Container(
                      margin: EdgeInsets.only(right: 8),
                      child: SelectFilter(
                        isSelected: e == 1,
                        text: "Category",
                        onTap: () {},
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  Article(),
                  Article(),
                  Article(),
                  Article(),
                ],
              ),
            )
          ],
        ));
  }
}
