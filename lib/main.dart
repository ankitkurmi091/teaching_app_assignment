import 'package:flutter/material.dart';

import 'FirstPage.dart';
import 'SecondPage.dart';
import 'ThirdPage.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ScrollablePages(), // Set ScrollablePages as the home widget
    );
  }
}

class ScrollablePages extends StatefulWidget {
  const ScrollablePages({super.key});

  @override
  ScrollablePagesState createState() => ScrollablePagesState();
}

class ScrollablePagesState extends State<ScrollablePages> {
  final PageController pageController = PageController(initialPage: 0);
  int currentPage = 0;

  // List of page widgets
  final List<Widget> _pages = const [
    FirstPage(),
    SecondPage(),
    ThirdPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Scrollable Pages'),
      // ),
      body: PageView.builder(
        controller: pageController,
        itemCount: _pages.length, // Number of pages
        onPageChanged: (index) {
          setState(() {
            currentPage = index; // Update current page index
          });
        },
        itemBuilder: (context, index) {
          return _pages[index]; // Return the page at the current index
        },
      ),

    );
  }
}
