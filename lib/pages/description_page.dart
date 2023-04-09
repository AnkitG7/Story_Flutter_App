import 'package:flutter/material.dart';
import 'package:story_app/class/item_class.dart';
import 'package:story_app/core/constants.dart';

class DescriptionPage extends StatefulWidget {
  const DescriptionPage({super.key, required this.box});
  final ItemClass box;

  @override
  State<DescriptionPage> createState() => _DescriptionPageState();
}

class _DescriptionPageState extends State<DescriptionPage> {
  double fontSizeCustom = 20.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.box.title,
          style:
              const TextStyle(fontSize: kDouble20, fontWeight: FontWeight.bold),
        ),
        // leading: IconButton(
        //   onPressed: () {
        //     Navigator.pop(context);
        //   },
        //   icon: const Icon(Icons.dangerous),
        // ),
        actions: [
          IconButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("${widget.box.title} Page."),
                    duration: const Duration(seconds: kSecond),
                    behavior: SnackBarBehavior.floating,
                  ),
                );
                // print("button clicked");
              },
              icon: const Icon(Icons.info))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(kDouble10),
          child: Column(
            children: [
              Image.asset(widget.box.imagePath),
              Wrap(
                spacing: kDouble10,
                children: [
                  TextButton(
                    onPressed: () {
                      setState(() {
                        fontSizeCustom = kDouble15;
                      });
                    },
                    child: const Text("Small Text"),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      setState(() {
                        fontSizeCustom = kDouble25;
                      });
                    },
                    child: const Text("Medium Text"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        fontSizeCustom = kDouble35;
                      });
                    },
                    // style: ElevatedButton.styleFrom(
                    //   backgroundColor: Colors.cyan,
                    //   foregroundColor: Colors.white,
                    // ),
                    child: const Text("Large Text"),
                  ),
                  FilledButton(
                    onPressed: () {
                      setState(() {
                        fontSizeCustom = kDouble50;
                      });
                    },
                    child: const Text("Huge Text"),
                  ),
                ],
              ),
              FittedBox(
                child: Text(
                  widget.box.title,
                  style: TextStyle(
                    // fontSize: kDouble50,
                    fontSize: fontSizeCustom,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                widget.box.descriptionStr,
                style: TextStyle(
                  fontSize: fontSizeCustom * 0.65,
                ),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: kDouble20,
              ),
              // Text(
              //   widget.box.descriptionStr,
              //   style: const TextStyle(
              //     fontSize: kDouble15,
              //   ),
              //   textAlign: TextAlign.justify,
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
