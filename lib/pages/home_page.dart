import 'package:flutter/material.dart';
import 'package:story_app/class/item_class.dart';
import 'package:story_app/core/constants.dart';
import 'package:story_app/widget/card_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Wisdom Tales"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: kDouble5,
              ),
              Row(
                children: [
                  Expanded(
                    child: CardWidget(
                      box: ItemClass(
                        title: "Thinking Out of the Box (Creative Thinking)",
                        imagePath: "images/story2.jpg",
                        descriptionStr: story2,
                      ),
                    ),
                  ),
                  Expanded(
                    child: CardWidget(
                      box: ItemClass(
                        title: "The Group of Frogs (Encouragement)",
                        imagePath: "images/story3.jpg",
                        descriptionStr: story3,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: kDouble5,
              ),
              Row(
                children: [
                  Expanded(
                    child: CardWidget(
                      box: ItemClass(
                        title: "The Elephant Rope (Belief)",
                        imagePath: "images/story1.jpg",
                        descriptionStr: story1,
                      ),
                    ),
                  ),
                  Expanded(
                    child: CardWidget(
                      box: ItemClass(
                        title: "A Pound of Butter (Honesty)",
                        imagePath: "images/story4.jpg",
                        descriptionStr: story4,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: kDouble5,
              ),
              Row(
                children: [
                  Expanded(
                    child: CardWidget(
                      box: ItemClass(
                        title: "The Obstacle In Our Path (Opportunity)",
                        imagePath: "images/story5.jpg",
                        descriptionStr: story5,
                      ),
                    ),
                  ),
                  Expanded(
                    child: CardWidget(
                      box: ItemClass(
                        title: "The Butterfly (Struggles)",
                        imagePath: "images/story6.jpg",
                        descriptionStr: story6,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: kDouble5,
              ),
              Row(
                children: [
                  Expanded(
                    child: CardWidget(
                      box: ItemClass(
                        title: "Control Your Temper (Anger)",
                        imagePath: "images/story7.jpg",
                        descriptionStr: story7,
                      ),
                    ),
                  ),
                  Expanded(
                    child: CardWidget(
                      box: ItemClass(
                        title: "The Blind Girl (Change)",
                        imagePath: "images/story8.jpg",
                        descriptionStr: story8,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: kDouble5,
              ),
              Row(
                children: [
                  Expanded(
                    child: CardWidget(
                      box: ItemClass(
                        title: "Puppies for Sale (Understanding)",
                        imagePath: "images/story9.jpg",
                        descriptionStr: story9,
                      ),
                    ),
                  ),
                  Expanded(
                    child: CardWidget(
                      box: ItemClass(
                        title: "Box Full of Kisses (Love)",
                        imagePath: "images/story10.jpg",
                        descriptionStr: story10,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: kDouble5,
              ),
            ],
          ),
        ));
  }
}
