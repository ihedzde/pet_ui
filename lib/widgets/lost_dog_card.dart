import 'package:flutter/material.dart';
import 'package:pet_ui/consts/consts.dart';

class LostDogCard extends StatelessWidget {
  final Color bgColor;
  final String dogName;
  const LostDogCard({
    Key key,
    this.bgColor = Colors.teal,
    this.dogName = ''
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 14),
          decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.circular(20),
          ),
          height: 65,
          width: 350,
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.network(
                "https://pngimg.com/uploads/dog/dog_PNG50375.png",
                height: 100,
              ),
              Text(
                //TODO Replace 🐶 with dog's name.
                  "🐶 is lost in your neighborhood!\nHelp us find her!",
                  //TODO Modify regularText style with white color, 12 font size and bold fontweight.
                  style: regularText)
            ],
          ),
        ),
      ],
    );
  }
}
