import 'package:flutter/material.dart';
import 'package:thuis_gemaakt/pages/gerecht_detail_page.dart';

class GerechtItem extends StatelessWidget {
  final String id;
  final String title;
  final String image;
  final String description;

  GerechtItem({
    required this.id,
    required this.title,
    required this.image,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return GridTile(
      footer: GridTileBar(
        title: Text(
          title,
          textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.black54,
      ),
      child: GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => GerechtDetailPage(
                  title: title,
                  image: image,
                  description: description,
                ),
              ),
            );
          },
          child: Image.asset(image)),
    );
  }
}
