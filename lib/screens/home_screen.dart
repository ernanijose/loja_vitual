import 'package:flutter/material.dart';

import '../tabs/home_tab.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return PageView(
      //com esse physics não dá para rolar entre as telas arrastando pro lado
      //pode controlar somente pelo código
      physics: const NeverScrollableScrollPhysics(),
      controller: _pageController,
      children: [
        HomeTab(),
      ],
    );
  }
}

