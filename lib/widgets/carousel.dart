// ignore_for_file: library_private_types_in_public_api

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:carousel_indicator/carousel_indicator.dart';

class CustomCarousel extends StatefulWidget {
  final List<String> images;
  final bool isFromNetwork;
  const CustomCarousel({
    super.key,
    required this.images,
    required this.isFromNetwork,
  });

  @override
  _CustomCarouselState createState() => _CustomCarouselState();
}

class _CustomCarouselState extends State<CustomCarousel> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  @override
  void dispose() {
    _timer?.cancel();
    _pageController.dispose();
    super.dispose();
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 5), (timer) {
      if (_currentPage < 2) {
        _pageController.nextPage(
            duration: const Duration(seconds: 1), curve: Curves.ease);
      } else {
        _pageController.jumpToPage(0);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Center(
      child: Stack(
        children: [
          Container(
            width: width,
            height: height / 3,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(0) // Adjust the radius as needed
                ),
            child: PageView(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
              children: [
                Image.asset(
                  widget.images[0],
                  fit: BoxFit.contain,
                ),
                Image.asset(
                  widget.images[1],
                  fit: BoxFit.contain,
                ),
                Image.asset(
                  widget.images[2],
                  fit: BoxFit.contain,
                ),
                Image.asset(
                  widget.images[3],
                  fit: BoxFit.contain,
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: height / 3.5,
              alignment: Alignment.bottomCenter,
              child: CarouselIndicator(
                width: 10.0,
                count: widget.images.length,
                index: _currentPage,
                activeColor: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
