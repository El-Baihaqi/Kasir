import 'package:flutter/material.dart';

class accpage extends StatefulWidget {
  const accpage({super.key});

  @override
  State<accpage> createState() => _accpageState();
}

class _accpageState extends State<accpage> {
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
                height: height * .2,
                decoration: BoxDecoration(color: Colors.black),
              ),
              Container(
                decoration: BoxDecoration(color: Colors.black),
                child: Container(
                  height: height * .8,
                  decoration: BoxDecoration(color: Colors.white),
                ),
              ),
            ],
          ),
          Positioned(
            top: height * .3 - (width * .5),
            left: width * .3,
            child: Container(
              height: width * .4,
              width: width * .4,
              child: Image(
                image: AssetImage('logo.png'),
              ),
            ),
          ),
          Positioned(
            top: height * .3 + (width * .1),
            left: width * .1,
            right: width * .1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Name",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Insert your name",
                    labelStyle:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(45),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: height * .3 + (width * .35),
            left: width * .1,
            right: width * .1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Email",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Insert your email",
                    labelStyle:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(45),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: height * .3 + (width * .6),
            left: width * .1,
            right: width * .1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Password",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Insert your Password",
                    labelStyle:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(45),
                    ),
                  ),
                  obscureText: true,
                ),
              ],
            ),
          ),
          Positioned(
            top: height * .3 + (width * .9),
            left: width * .1,
            right: width * .1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("Kasir"),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("Admin"),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("Manager"),
                ),
              ],
            ),
          ),
          Positioned(
            top: height * .3 + (width * 1.1),
            left: width * .37,
            right: width * .1,
            child: Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/user');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                  ),
                  child: const Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
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
