import 'package:app_disenyos/widgets/page_title.dart';
import 'package:flutter/material.dart';

import 'package:app_disenyos/widgets/background.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Stack(
      children: [
        //background
        Background(),
        _HomeBody()
      ],
    ));
  }
}

class _HomeBody extends StatelessWidget {
  const _HomeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          PageTitle(),
        ],
      ),
    );
  }
}
