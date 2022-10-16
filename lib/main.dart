import 'package:flutter/material.dart';
import 'package:mirror_wall/uttls/app_componet.dart';

import 'Screens/javapoint.dart';
import 'Screens/tutorial.dart';
import 'Screens/w3school.dart';
import 'Screens/wikipedia.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        "/": (context) => const Homepage(),
        "Wikipedia": (context) => const Wikipedia(),
        "W3School": (context) => const W3School(),
        "JavaPoint": (context) => const Javapoint(),
        "TutorialPoint": (context) => const Tutorial(),
      },
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text(
          "Educational Websites",
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Expanded(
                    child: banerWidget(
                        image: AppImage.wikipidia,
                        title: "Wikipedia",
                        onTap: () {
                          Navigator.pushNamed(context, "Wikipedia");
                        })),
                Expanded(
                    child: banerWidget(
                        image: AppImage.w3School,
                        title: "W3 School",
                        onTap: () {
                          Navigator.pushNamed(context, "W3School");
                        })),
              ],
            ),
            Row(
              children: [
                Expanded(
                    child: banerWidget(
                        image: AppImage.javaTpoint,
                        title: "Java T point",
                        onTap: () {
                          Navigator.pushNamed(context, "JavaPoint");
                        })),
                Expanded(
                    child: banerWidget(
                        image: AppImage.tutorialPoint,
                        title: "Tutorial Point",
                        onTap: () {
                          Navigator.pushNamed(context, "TutorialPoint");
                        })),
              ],
            ),
          ],
        ),
      ),
    );
  }

  banerWidget(
      {required String image,
        required String title,
        required Function onTap}) {
    return InkWell(
      onTap: (){
        onTap();
      },
      child: Container(
        margin: const EdgeInsets.all(5),
        height: 150,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(image: AssetImage(image), fit: BoxFit.fill)),
        child: Container(
          padding: const EdgeInsets.all(15),
          alignment: Alignment.bottomCenter,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.black.withOpacity(0.2),
          ),
          child: Text(title, style: const TextStyle(fontSize: 18, color: Colors.black)),
        ),
      ),
    );
  }
}
