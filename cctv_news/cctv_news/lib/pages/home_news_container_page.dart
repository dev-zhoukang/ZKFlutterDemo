import 'package:flutter/material.dart';

class HomeNewsContainerPage extends StatefulWidget {
  @override
  _HomeNewsContainerPageState createState() => _HomeNewsContainerPageState();
}

class _HomeNewsContainerPageState extends State<HomeNewsContainerPage> {
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: 5,
      controller: _pageController,
      itemBuilder: (content, index) {
        return Center(
          child: Text('data'),
        );
      },
    );
  }
}
