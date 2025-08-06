import 'package:flutter/material.dart';
import 'package:learn_japanese_language_app/components/category_item.dart';
import 'package:learn_japanese_language_app/models/category_model.dart';
import 'package:learn_japanese_language_app/screens/colors_page.dart';
import 'package:learn_japanese_language_app/screens/family_members_page.dart';
import 'package:learn_japanese_language_app/screens/numbers_page.dart';
import 'package:learn_japanese_language_app/screens/phrases_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<CategoryModel> categories = [
      CategoryModel(
        text: 'Numbers',
        color: const Color(0xffEF9235),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const NumbersPage()),
          );
        },
      ),
      CategoryModel(
        text: 'Family Members',
        color: const Color(0xff558B37),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const FamilyMembersPage()),
          );
        },
      ),
      CategoryModel(
        text: 'Colors',
        color: const Color(0xff79359F),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ColorsPage()),
          );
        },
      ),
      CategoryModel(
        text: 'Phrases',
        color: const Color(0xff50ADC7),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const PhrasesPage()),
          );
        },
      ),
    ];

    return Scaffold(
      backgroundColor: const Color(0xffFEF6DB),
      appBar: AppBar(
        backgroundColor: const Color(0xff46322B),
        title: const Text(
          'Learn Japanese Language',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: categories
            .map(
              (e) => CategoryItem(category: e),
            )
            .toList(),
      ),
    );
  }
}
