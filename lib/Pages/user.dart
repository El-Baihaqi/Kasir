import 'package:flutter/material.dart';

class user extends StatelessWidget {
  user({super.key});

  late double height, width;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: height * .230,
                decoration: BoxDecoration(color: Colors.black),
              ),
              Container(
                decoration: BoxDecoration(color: Colors.black),
                child: Container(
                  height: height * .770,
                  decoration: BoxDecoration(color: Colors.white),
                ),
              ),
            ],
          ),
          Positioned(
            top: height * .4 - (width * .6),
            left: width * .1,
            right: width * .1,
            child: Container(
              height: 180,
              width: 256,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage('border.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            top: height * .1 - (width * .15),
            left: width * .1,
            right: width * .3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: "Search Coffe",
                    hintStyle: TextStyle(
                      color: Colors.white,
                    ),
                    labelStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(45),
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: height * .125 - (width * .2),
            left: width * .75,
            right: width * .1,
            child: Container(
              height: 56,
              width: 20,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.orangeAccent,
              ),
              child: Center(
                child: Icon(
                  Icons.shop_2_outlined,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ),
          ),
          Positioned(
            top: height * .3 + (width * .14),
            left: width * .1,
            right: width * .1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("All Coffe"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("Latte"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("Machiato"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
