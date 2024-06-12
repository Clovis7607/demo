import 'package:flutter/material.dart';

class Q11Page extends StatelessWidget {
  const Q11Page({super.key});

  @override
  Widget build(BuildContext context) {
    List images = [
      'images/1.webp',
      'images/2.webp',
      'images/3.jpg',
      'images/4.jpg',
      'images/5.jpg',
      'images/6.jpg',
      'images/7.jpg',
      'images/8.jpg',
      'images/9.jpg',
      'images/10.webp',
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Q11'),
        backgroundColor: Colors.purple[200],
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: GridView.count(
          crossAxisCount: 3,
          crossAxisSpacing: 5,
          children: List.generate(
            images.length,
            (index) {
              return UserWidget(number: index.toString(), url: images[index]);
            },
          ),
        ),
      ),
    );
  }
}

class UserWidget extends StatelessWidget {
  const UserWidget({super.key, required this.number, required this.url});

  final String number;
  final String url;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 100,
        height: 100,
        child: Column(
          children: [
            Expanded(child: Image.asset(url)),
            Text('User $number'),
          ],
        ));
  }
}
