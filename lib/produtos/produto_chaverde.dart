// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter_application_livaty/appbar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_livaty/produtos/preview.dart';

class ChaVerde extends StatefulWidget {
  const ChaVerde({super.key});

  @override
  State<ChaVerde> createState() => _ChaVerdeState();
}

class _ChaVerdeState extends State<ChaVerde> {
  List<String> image = [
    'https://th.bing.com/th/id/OIP.Y7LmVSY4bitSAlggiiSDnQHaE8?pid=ImgDet&rs=1',
    'https://simoesfilhoonline.com.br/wp-content/uploads/2019/11/ch%C3%A1-para-emagrecer-df.jpg',
    'https://th.bing.com/th/id/OIP.HSTCJ4vgI1Fcbd-xpS__mgHaE8?pid=ImgDet&rs=1',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: NavBar(context, title: "Produto", centerTitle: true, backgroundColor: Colors.green,),
        body: SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(color: const Color.fromARGB(255, 0, 0, 0)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child:
             Text("Chá Verde", style: TextStyle(fontSize: 25, color: Colors.white),
            ),
            ),
            CarouselSlider(
              options: CarouselOptions(height: 325.0, viewportFraction: 1),
              items: [0, 1, 2].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(color: const Color.fromARGB(255, 0, 0, 0)),
                        child: Image(image: NetworkImage(image[i])));
                },
                );
              }).toList(),
            ),
            Container(
                  height: 100,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Preview(
                        "https://th.bing.com/th/id/OIP.Y7LmVSY4bitSAlggiiSDnQHaE8?pid=ImgDet&rs=1"),
                      Preview(
                        "https://simoesfilhoonline.com.br/wp-content/uploads/2019/11/ch%C3%A1-para-emagrecer-df.jpg"),
                      Preview(
                        "https://th.bing.com/th/id/OIP.HSTCJ4vgI1Fcbd-xpS__mgHaE8?pid=ImgDet&rs=1"),
                    ],
        ),),],
        ),
      ),
    ));
  }
}
