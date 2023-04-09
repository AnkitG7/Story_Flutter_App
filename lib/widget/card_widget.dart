import 'package:flutter/material.dart';
import 'package:story_app/class/item_class.dart';
import 'package:story_app/core/constants.dart';
import 'package:story_app/pages/description_page.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key, required this.box});
  final ItemClass box;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return DescriptionPage(
                box: box,
              );
            },
          ),
        );
      },
      child: Card(
        child: Container(
          padding: const EdgeInsets.all(kDouble10),
          width: double.infinity,
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 1.5,
                child: Image.asset(
                  box.imagePath,
                ),
              ),
              Text(
                box.title,
                style: const TextStyle(
                    fontSize: kDouble15, fontWeight: FontWeight.bold),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                box.descriptionStr,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(
                height: kDouble10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
