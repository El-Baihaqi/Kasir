import 'package:flutter/material.dart';
import 'package:wikusamakafe/Theme/color.dart';
import 'package:wikusamakafe/models/coffe.dart';

class CoffeTile extends StatelessWidget {
  final coffe Coffe;
  void Function()? onTap;
  CoffeTile({super.key, required this.Coffe, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(20),
      ),
      margin: EdgeInsets.only(left: 8.0),
      padding: EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            Coffe.imagePath,
            height: 80,
          ),
          Text(
            Coffe.name,
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            width: 160,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  '\$' + Coffe.price,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.grey[700]),
                ),
                const SizedBox(
                  width: 10,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow[800],
                    ),
                    Text(
                      Coffe.rating,
                      style: TextStyle(color: Colors.grey),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    GestureDetector(
                      onTap: onTap,
                      child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: secondaryColor,
                              borderRadius: BorderRadius.circular(10)),
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 20,
                          )),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
