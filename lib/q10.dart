import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Q10Page extends StatefulWidget {
  const Q10Page({super.key});

  @override
  State<Q10Page> createState() => _Q10PageState();
}

class _Q10PageState extends State<Q10Page> {
  ScreenState currentState = ScreenState.loading;

  @override
  void initState() {
    super.initState();
    showLoading();
  }

  void showLoading() {
    Timer(
      Duration(seconds: 3),
      () {
        setState(() {
          currentState = ScreenState.initial;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Q10'),
        backgroundColor: Colors.purple[200],
      ),
      floatingActionButton:
          ElevatedButton(onPressed: () {}, child: const Text('Start')),
      body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: switch (currentState) {
            ScreenState.loading => Center(child: CircularProgressIndicator()),
            ScreenState.initial => Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemCount: 10,
                      itemBuilder: (context, index) =>
                          UserWidget(number: "$index", userEmail: "$index"),
                    ),
                  ),
                ],
              ),
          }),
    );
  }
}

enum ScreenState { initial, loading }

class UserWidget extends StatelessWidget {
  const UserWidget({super.key, required this.number, required this.userEmail});

  final String number;
  final String userEmail;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const CircleAvatar(),
        title: Text('User $number'),
        subtitle: Text('user$userEmail@example.com'),
        trailing: const Icon(Icons.delete),
      ),
    );
  }
}
