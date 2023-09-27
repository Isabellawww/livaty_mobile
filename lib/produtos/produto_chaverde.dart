// ignore_for_file: prefer_const_constructors

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ChaVerde extends StatefulWidget {
  const ChaVerde({super.key});

  @override
  State<ChaVerde> createState() => _ChaVerdeState();
}

class _ChaVerdeState extends State<ChaVerde> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(color:  Colors.green.shade50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Chás",
                style: TextStyle(fontSize: 30),
              ),
              Text("Chá Verde",
              style: TextStyle(fontSize: 50),),

              CarouselSlider(
                  options: CarouselOptions(height: 325.0, viewportFraction: 1),
                  items: [0, 1, 2].map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(color: Colors.white),
                            child: Image(image: NetworkImage([i])));
                      },
                    );
                  }).toList(),
                ),


            ],
          ),
        ),
      )
      
    );
  }
}