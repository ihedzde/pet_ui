import 'package:flutter/material.dart';
import 'package:pet_ui/consts/consts.dart';
import 'package:pet_ui/widgets/small_card.dart';

class SearchTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16, top: 32),
          child: Text(
            "Find anything you need\nfor your pets",
            style: boldTitle.copyWith(fontSize: 30),
            textAlign: TextAlign.center,
          ),
        ),
        Expanded(
          child: GridView.count(
            crossAxisCount: 2,
            childAspectRatio: 1.25,
            children: [
              SmallCard("https://pngimg.com/uploads/dog/dog_PNG50375.png",
                  title: "Vet\nClinics", textColor: Colors.white),
              SmallCard("https://pngimg.com/uploads/dog/dog_PNG50375.png",
                  title: "Places\nto eat"),
              SmallCard("https://pngimg.com/uploads/dog/dog_PNG50375.png",
                  title: "Places\nto walk", textColor: Colors.white),
              SmallCard("https://pngimg.com/uploads/dog/dog_PNG50375.png",
                  title: "Spa\n& Salons"),
              SmallCard("https://pngimg.com/uploads/dog/dog_PNG50375.png",
                  title: "Shop\n& Products"),
              SmallCard("https://pngimg.com/uploads/dog/dog_PNG50375.png",
                  title: "Walk\ngroups", textColor: Colors.white),
            ],
          ),
        )
      ],
    );
  }
}
