import 'package:flutter/material.dart';

class Q9Page extends StatelessWidget {
  const Q9Page({super.key});

  @override
  Widget build(BuildContext context) {
    List countryList = [
      "Argentina",
      "Australia",
      "Brazil",
      "Canada",
      "China",
      "France",
      "Germany",
      "India",
      "Japan",
      "United States"
    ];

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        alignment: Alignment.center,
        child: Wrap(
          children: 
             List.generate(
              countryList.length,
              (index) => Container(
                margin: const EdgeInsets.only(right: 5, bottom: 10),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(countryList[index]),
              ),
            ),
          
        ),
      ),
    );
  }
}
