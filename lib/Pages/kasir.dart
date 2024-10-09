import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wikusamakafe/Component/button.dart';
import 'package:wikusamakafe/Pages/Coffe_detail_page.dart';
import 'package:wikusamakafe/Theme/color.dart';
import 'package:wikusamakafe/models/cart.dart';
import 'package:wikusamakafe/models/coffe.dart';
import 'package:wikusamakafe/models/coffetile.dart';
import 'package:wikusamakafe/models/shop.dart';

class kasir extends StatefulWidget {
  const kasir({super.key});

  @override
  State<kasir> createState() => _kasirState();
}

class _kasirState extends State<kasir> {
  void NavigateToCoffeDetails(int index) {
    //menu dan shop
    final shop = context.read<Shop>();
    final coffeMenu = shop.coffeMenu;
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => coffedetail(
            Coffe: coffeMenu[index],
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    //menu dan shop
    final shop = context.read<Shop>();
    final coffeMenu = shop.coffeMenu;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(left: 25, top: 8, bottom: 8, right: 8),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        hintText: "Search here.....",
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      color: Colors.amber[800],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    margin: EdgeInsets.only(left: 8, right: 2),
                    padding: const EdgeInsets.all(8),
                    child: const Icon(
                      Icons.archive_outlined,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                      color: Colors.red[400],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    margin: EdgeInsets.only(left: 2, right: 25),
                    padding: const EdgeInsets.all(8),
                    child: const Icon(
                      Icons.arrow_circle_right_outlined,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
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
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const SizedBox(
                      width: 25,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text("All Coffe"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey,
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text("Latte"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey,
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text("Machiato"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey,
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text("Americacno"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey,
                      ),
                    ),
                  ],
                ),
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
            ConstrainedBox(
              constraints: BoxConstraints(maxHeight: 200),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: coffeMenu.length,
                  itemBuilder: (context, index) => CoffeTile(
                    Coffe: coffeMenu[index],
                    onTap: () => NavigateToCoffeDetails(index),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ConstrainedBox(
              constraints: BoxConstraints(maxHeight: 200),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: coffeMenu.length,
                  itemBuilder: (context, index) => CoffeTile(
                    Coffe: coffeMenu[index],
                    onTap: () => NavigateToCoffeDetails(index),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(20),
              ),
              margin: const EdgeInsets.only(
                  left: 25, right: 25, top: 25, bottom: 25),
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
            ),
          ],
        ),
      ),
    );
  }
}
