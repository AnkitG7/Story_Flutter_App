import 'package:flutter/material.dart';
import 'package:story_app/core/constants.dart';
import 'package:story_app/core/notifiers.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Wisdom Tales"),
      ),
      body: Column(children: const [
        CircleAvatar(
          radius: kProfileImage,
          backgroundImage: AssetImage("images/playstore.png"),
        ),
        SizedBox(
          height: kDouble20,
        ),
        ListTile(
          leading: Icon(Icons.person),
          title: Text("Wisdom Tales"),
        ),
        ListTile(
          leading: Icon(Icons.email),
          title: Text("awdWisdomTales@gamil.com"),
        ),
        ListTile(
          leading: Icon(Icons.web),
          title: Text("awdWisdomTales.com"),
        ),
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          isDarkModeNotifier.value = !isDarkModeNotifier.value;
        },
        child: ValueListenableBuilder(
          valueListenable: isDarkModeNotifier,
          builder: (context, isDark, child) {
            if (!isDark) {
              return const Icon(Icons.dark_mode);
            } else {
              return const Icon(Icons.light_mode);
            }
          },
        ),
      ),
    );
  }
}
