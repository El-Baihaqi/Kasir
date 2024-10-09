import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wikusamakafe/Component/cart_item.dart';
import 'package:wikusamakafe/models/cart.dart';
import 'package:wikusamakafe/models/coffe.dart';

class cartpage extends StatelessWidget {
  const cartpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          children: [
            Text(
              "My Cart",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: value.getUserCart().length,
                itemBuilder: (context, index) {
                  //dapatkan coffe
                  coffe individualCoffe = value.getUserCart()[index];

                  // mengembalikan cart item
                  return CartItem(
                    Coffe: individualCoffe,
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
