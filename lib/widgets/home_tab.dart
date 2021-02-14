import 'package:flutter/material.dart';
import 'package:pet_ui/consts/consts.dart';
import 'package:pet_ui/widgets/big_card.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16, top: 32),
          child: Text(
            "Hi, Ferran",
            style: boldTitle,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Text(
            "Check out the new products, groups, events,\nplaces and more!",
            style: regularText,
          ),
        ),
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 9.0, vertical: 15),
            child: Stack(
              alignment: AlignmentDirectional.bottomCenter,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 14),
                  decoration: BoxDecoration(
                    color: Colors.teal,
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
                          "Lola is lost in your neighborhood!\nHelp us find her!",
                          style: regularText.copyWith(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.bold))
                    ],
                  ),
                ),
              ],
            )),
        Padding(
            padding: const EdgeInsets.symmetric( horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("walk groups".toUpperCase(),
                    style: regularText.copyWith(fontWeight: FontWeight.bold)),
                Text("See All", style: regularText)
              ],
            ),),
        Expanded(child: 
          ListView(
            scrollDirection: Axis.horizontal,
            children: [
              BigCard('https://kirkhilbrecht.com/wp-content/uploads/2013/07/IMG_8246.jpg',
                place: "Valencia, Spain",
                members: 8,
                orginizers: ["Laura"],
              ),
              BigCard('https://kirkhilbrecht.com/wp-content/uploads/2013/07/IMG_8246.jpg',
                place: "Munich, Germany",
                members: 10,
                orginizers: ["Johan","Wolfgang","Sofia"],
              )
            ],
          )
        )
      ],
    );
  }
}
