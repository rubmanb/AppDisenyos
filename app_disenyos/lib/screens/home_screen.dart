import 'package:app_disenyos/widgets/card_table.dart';
import 'package:app_disenyos/widgets/custom_bottom_navigation.dart';
import 'package:app_disenyos/widgets/page_title.dart';
import 'package:flutter/material.dart';

import 'package:app_disenyos/widgets/background.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //background
          const Background(),
          _HomeBody()
        ],
      ),
      bottomNavigationBar: const CustomBottomNavigator(),
    );
  }
}

class _HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [PageTitle(), CardTable()],
      ),
    );
  }
}
