import 'package:flutter/material.dart';
import 'package:pet_ui/consts/consts.dart';

class SmallCard extends StatelessWidget {
  final String title;
  final String imageUrl;
  final Color textColor;
  final Color tileColor;
  final double imageBottomOffeset;
  SmallCard(
    this.imageUrl, {
    this.title='',
    this.textColor = Colors.white,
    this.imageBottomOffeset = 0,
    this.tileColor = Colors.teal,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8 ),
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 16),
            decoration: BoxDecoration(
              color: tileColor,
              borderRadius: BorderRadius.circular(20),
            ),
            height: 90,
          ),
          Positioned(
            bottom: imageBottomOffeset,
            right: -10,
            child: Image.network(imageUrl, width: 140, fit: BoxFit.fitWidth),
          ),
          Positioned(
            left: 20,
            bottom: 45,
            child: Text(
              title,
              style: regularText.copyWith(
                  color: textColor, fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
