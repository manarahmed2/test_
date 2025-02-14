import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class SplashSlider extends StatefulWidget {
  const SplashSlider({super.key});

  @override
  _SplashSliderState createState() => _SplashSliderState();
}

class _SplashSliderState extends State<SplashSlider> {
  int _currentPage = 0;
  final List<String> _images = [
    'assets/image1.jpeg',
    'assets/image1.jpeg',
    'assets/image1.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220, // ارتفاع السلايدر مع المؤشر
      child: Stack(
        children: [
          CarouselSlider(
            items: _images.map((image) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.cover,
                  ),
                ),
              );
            }).toList(),
            options: CarouselOptions(
              height: 200,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              enlargeCenterPage: true,
              viewportFraction: 0.9,
              onPageChanged: (index, reason) {
                setState(() {
                  _currentPage = index;
                });
              },
            ),
          ),
          Positioned(
            bottom: 10,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: _images.asMap().entries.map((entry) {
                return Container(
                  width: 12,
                  height: 12,
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  decoration: BoxDecoration(
                    color:
                        _currentPage == entry.key ? Colors.purple : Colors.grey,
                    borderRadius: BorderRadius.circular(4),
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
