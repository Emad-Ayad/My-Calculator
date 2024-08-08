import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Center(
            child: Text(
              "Home Page",
              style: TextStyle(color: Colors.amber),
            ),
          ),
          GridView.builder(
            itemCount: 2,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemBuilder: (context, index) => Container(
              height: 15,
              width: 15,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
