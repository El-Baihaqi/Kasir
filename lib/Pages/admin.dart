import 'package:flutter/material.dart';
import 'package:wikusamakafe/Component/button.dart';
import 'package:wikusamakafe/Theme/color.dart';
import 'package:wikusamakafe/models/coffe.dart';
import 'package:wikusamakafe/models/coffetile.dart';

class Admin extends StatefulWidget {
  const Admin({super.key});

  @override
  State<Admin> createState() => _AdminState();
}

class _AdminState extends State<Admin> {
  List coffeMenu = [
    coffe(
        name: "Americano", price: "20k", imagePath: 'logo.png', rating: "4.2"),
    coffe(name: "Latte", price: "23k", imagePath: 'logo.png', rating: "4.4"),
    coffe(name: "Machiato", price: "25k", imagePath: 'logo.png', rating: "4.8"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
                color: primaryColor, borderRadius: BorderRadius.circular(20)),
            margin: EdgeInsets.only(left: 25, right: 25, top: 25),
            padding: EdgeInsets.all(25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      "Coffe",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    // reddem button
                    button(
                      text: "Reedem",
                      onTap: () {
                        Navigator.pushNamed(context, '/admin');
                      },
                    )
                  ],
                ),
                Image.asset(
                  'logo.png',
                  height: 100,
                  width: 80,
                )
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 8, bottom: 8, right: 25, left: 25),
            child: TextField(
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  hintText: "Search here....."),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              "Coffe menu",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[800],
                  fontSize: 18),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          // Expanded(
          //   child: ListView.builder(
          //     scrollDirection: Axis.horizontal,
          //     itemCount: coffeMenu.length,
          //     itemBuilder: (context, index) =>
          //         CoffeTile(Coffe: coffeMenu[index]),
          //   ),
          // ),
          const SizedBox(
            height: 15,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(20),
            ),
            margin:
                const EdgeInsets.only(left: 25, right: 25, top: 25, bottom: 25),
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      'logo.png',
                      height: 60,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "machiato",
                          style: TextStyle(fontSize: 18),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "25k",
                          style: TextStyle(color: Colors.grey[700]),
                        )
                      ],
                    ),
                  ],
                ),
                const Icon(
                  Icons.favorite_outline,
                  color: Colors.grey,
                  size: 28,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
