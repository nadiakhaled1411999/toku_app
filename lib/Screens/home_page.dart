import 'package:flutter/material.dart';
import 'package:toku_app/Screens/colors_page.dart';
import 'package:toku_app/Screens/family_members_page.dart';
import 'package:toku_app/Screens/numbers_page.dart';
import 'package:toku_app/Screens/phrases_page.dart';
import 'package:toku_app/components/category_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFEF6DB),
      appBar: AppBar(
        backgroundColor: const Color(0xff46322B),
        title: const Text(
          'Toku',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          Category(
            text: 'Number',
            color: const Color(0xffEF9235),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const NumbersPage();
              }));
            },
          ),
          Category(
            text: 'Family Members',
            color: const Color(0xff558B37),
             onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const FamilyMembersPage();
              }));
            },
          ),
          Category(
             onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const ColorsPage();
              }));
            },
            text: 'Colors',
            color: const Color(0xff79359F),
          ),
          Category(
             onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const PhrasesPage();
              }));
            },
            text: 'phrases',
            color: const Color(0xff50ADC7),
          ),
        ],
      ),
    );
  }
}
