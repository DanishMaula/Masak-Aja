import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:masak_aja/model/data_masak.dart';

import 'detail_screen.dart';

class CarouselWidget extends StatefulWidget {
  final List<DataMasak> listMasak;

  const CarouselWidget({Key? key, required this.listMasak}) : super(key: key);

  @override
  State<CarouselWidget> createState() => _CarouselWidgetState();
}

class _CarouselWidgetState extends State<CarouselWidget> {
  late List<Widget> imageSlider;

  @override
  void initState() {
    imageSlider = widget.listMasak
        .map((masak) => InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) {
              return DetailScreen();
            }));
      },
      child: Container(
      margin: EdgeInsets.all(10),
      child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: AssetImage(masak.image),
                    fit: BoxFit.cover
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    stops: [0.1, 0.9],
                    colors: [
                      Colors.black.withOpacity(0.8),
                      Colors.white.withOpacity(0.1),
                    ]
                ),
              ),
            ),
          ],
      ),
    ),
        ),
    )
        .toList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        items: imageSlider,
        options: CarouselOptions(autoPlay: true, viewportFraction: 1));
  }
}
