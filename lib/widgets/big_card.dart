import 'package:flutter/material.dart';
import 'package:pet_ui/consts/consts.dart';

class BigCard extends StatelessWidget {
  final String place;
  final int members;
  final String imageUrl;
  final Color textColor;
  final Color organizerHighlightColor;
  final List<String> orginizers;
  BigCard(
    this.imageUrl, {
    this.place = '',
    this.members = 0,
    this.orginizers = const [],
    this.textColor = Colors.black,
    this.organizerHighlightColor = Colors.teal,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 15),
      child: Container(
        width: 250,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: Colors.white),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
                  child: Image.network(imageUrl,
                      width: 250, height: 120, fit: BoxFit.cover)),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: Text(
                  "Meet our lovely dogs walking\nwith us",
                  style: boldTitle.copyWith(fontSize: 16),
                ),
              ),
              buildRow(Icons.location_pin, place),
              buildRow(Icons.group, "${members} members"),
              RichText(
                text: TextSpan(
                  style: DefaultTextStyle.of(context).style,
                  children: [
                    WidgetSpan(
                      alignment: PlaceholderAlignment.middle,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Icon(Icons.person),
                      )
                    ),
                    TextSpan(text: "Orginized by "),
                    WidgetSpan(
                      alignment: PlaceholderAlignment.top,
                      child: SizedBox(
                        width: 100,
                        child: Text(
                          orginizers.join(' '),
                          style: TextStyle(
                              //TODO Change color to organizer highlight color
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Row buildRow(IconData icon, String text) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(icon),
        ),
        Text(text)
      ],
    );
  }
}
