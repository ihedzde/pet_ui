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
          //TODO Set childAspectRatio to 1.25 and crossAxisCount to 2 columns.
          child: GridView.count(
            crossAxisCount: 1,
            children: [
              SmallCard("https://cdn.iconscout.com/icon/free/png-256/vet-clinic-2540510-2125054.png",
                  title: "Vet\nClinics", textColor: Colors.black, imageBottomOffeset: -5,
                  tileColor: Colors.green,),
              SmallCard("https://i.pinimg.com/originals/ff/c3/d3/ffc3d3f7e25c28ea2d3fe42231736f00.png",
                  title: "Places\nto eat", textColor: Colors.black),
              SmallCard("https://cdn.pixabay.com/photo/2020/03/06/08/18/walking-poodle-4906362_1280.png",
                  title: "Places\nto walk", textColor: Colors.white,imageBottomOffeset:30),
              SmallCard("https://pngimg.com/uploads/dog/dog_PNG50375.png",
                  title: "Spa\n& Salons"),
              SmallCard("https://cdn.pixabay.com/photo/2013/07/13/11/31/shop-158317_1280.png",
                  title: "Shop\n& Products",),
              SmallCard("https://cdn.pixabay.com/photo/2017/06/17/09/25/group-2411624_1280.png",
                  title: "Walk\ngroups", textColor: Colors.white),
            ],
          ),
        )
      ],
    );
  }
}
