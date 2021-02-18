import 'package:flutter/material.dart';
import 'package:pet_ui/consts/consts.dart';
import 'package:pet_ui/widgets/big_card.dart';
import 'package:pet_ui/widgets/lost_dog_card.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({
    Key? key,
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
          child: LostDogCard(),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            //TODO Change aligment on the main axis.
            children: [
              Text("walk groups".toUpperCase(),
                  style: regularText.copyWith(fontWeight: FontWeight.bold)),
              Text("See All", style: regularText)
            ],
          ),
        ),
        //TODO Change Placeholder to ListView with Big Cards.
        Expanded(
          child: Placeholder(
            color: Colors.black,
          ),
        )
      ],
    );
  }
}
//TODO use random image urls
//https://resize.indiatvnews.com/en/resize/newbucket/1200_-/2019/08/parks-1566455734.jpg
//https://www.mesaparks.com/Home/ShowPublishedImage/23736/637044009043230000
//https://assets.bwbx.io/images/users/iqjWHBFdfxIU/iANak7ZoQfYs/v0/1200x675.jpg