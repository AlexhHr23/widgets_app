import 'package:flutter/material.dart';



class SlideInfo {
  final String title;
  final String caption;
  final String imageUrl;

  SlideInfo(
    this.title, 
    this.caption, 
    this.imageUrl
  );
}

final slides = <SlideInfo> [
  SlideInfo('Busca la comida','Consequat minim esse enim enim ea laborum consectetur ea quis.' , 'assets/images/1.png'),
  SlideInfo('Busca la comida','Esse aliquip pariatur pariatur esse sint velit tempor sint est sunt sit eiusmod.' , 'assets/images/2.png'),
  SlideInfo('Busca la comida','Adipisicing consequat et ex labore sint dolor sit.' , 'assets/images/2.png'),
];

class AppTutorialScreen extends StatelessWidget {

  static const String name = 'tutorial_screen';
  
  const AppTutorialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const BouncingScrollPhysics(),
        children: slides.map(
          (slideData) => _Slide(
          title: slideData.title, 
          caption: slideData.caption, 
          imageUrl: slideData.imageUrl
       )
        ).toList()
      ),
    );
  }
}

class _Slide extends StatelessWidget {

  final String title;
  final String caption;
  final String imageUrl;

  const _Slide({
    required this.title, 
    required this.caption, 
    required this.imageUrl
  });

  @override
  Widget build(BuildContext context) {
    return Placeholder();
  }
}