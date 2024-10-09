import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:wikusamakafe/Component/button.dart';
import 'package:wikusamakafe/Theme/color.dart';
import 'package:wikusamakafe/models/coffe.dart';
import 'package:wikusamakafe/models/shop.dart';

class coffedetail extends StatefulWidget {
  coffe Coffe;
  coffedetail({super.key, required this.Coffe});

  @override
  State<coffedetail> createState() => _coffedetailState();
}

class _coffedetailState extends State<coffedetail> {
//quantity count
  int QuantityCount = 0;

  //decrement
  void DecrementQuantity() {
    setState(() {
      if (QuantityCount > 0) {
        QuantityCount--;
      }
    });
  }

//incresment
  void IncresmentQuantity() {
    setState(() {
      QuantityCount++;
    });
  }

  void AddtoCart() {
    //cuma nambah kalo ada barang di cart
    if (QuantityCount > 0) {
      //dapat akses ke shop
      final shop = context.read<Shop>();

      //tambah ke cart
      shop.AddtoCart(widget.Coffe, QuantityCount);

      //notifikasi sukses
      showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) => AlertDialog(
          backgroundColor: primaryColor,
          content: const Text(
            "Succsesfully Added to Cart",
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ),
          actions: [
            //tombol ok
            IconButton(
              onPressed: () {
                // hilangkan dialog
                Navigator.pop(context);

                //tekan lagi untuk kembali
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.done,
                color: Colors.white,
              ),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.grey[900],
      ),
      body: Column(
        children: [
          //List View Disini
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: ListView(
                children: [
                  // Ini Gambar
                  Image.asset(
                    widget.Coffe.imagePath,
                    height: 200,
                  ),

                  const SizedBox(
                    height: 10,
                  ),
                  //Ini Rating
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow[800],
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        widget.Coffe.rating,
                        style: TextStyle(
                            color: Colors.grey[600],
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),

                  const SizedBox(
                    height: 10,
                  ),
                  //Nama Kopi
                  Text(
                    widget.Coffe.name,
                    style: GoogleFonts.dmSerifDisplay(fontSize: 32),
                  ),
                  const SizedBox(
                    height: 25,
                  ),

                  //Deskripsi Kopi
                  Text(
                    "Description",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[900],
                        fontSize: 18),
                  ),
                  const SizedBox(
                    height: 10,
                  ),

                  Text(
                    "Coffe That Made By Professionall Barista, used import Coffe Beans From California and use less sugar that make you not get obesity.",
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 14,
                      height: 2,
                    ),
                  )
                ],
              ),
            ),
          ),

          //price + Add to cart button
          Container(
            color: primaryColor,
            padding: const EdgeInsets.all(25),
            child: Column(
              children: [
                //price
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\$${widget.Coffe.price}",
                      style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    //kuantitas
                    Row(
                      children: [
                        //tombol minus

                        Container(
                          decoration: BoxDecoration(
                              color: secondaryColor, shape: BoxShape.circle),
                          child: IconButton(
                            icon: const Icon(
                              Icons.remove,
                              color: Colors.white,
                            ),
                            onPressed: DecrementQuantity,
                          ),
                        ),
                        //tombol hitung

                        SizedBox(
                          height: 40,
                          child: Center(
                            child: Text(
                              QuantityCount.toString(),
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                          ),
                        ),

                        //tombol pluss
                        Container(
                          decoration: BoxDecoration(
                              color: secondaryColor, shape: BoxShape.circle),
                          child: IconButton(
                            icon: const Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                            onPressed: IncresmentQuantity,
                          ),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 25,
                ),

                //add to cart button
                button(text: "Add To Cart", onTap: AddtoCart)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
