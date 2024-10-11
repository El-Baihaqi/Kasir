import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wikusamakafe/Component/button.dart';
import 'package:wikusamakafe/Pages/Payment_page.dart';
import 'package:wikusamakafe/Theme/color.dart';
import 'package:wikusamakafe/models/coffe.dart';
import 'package:wikusamakafe/models/shop.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  void removeFromCart(coffe Coffe, BuildContext context) {
    final shop = context.read<Shop>();

    shop.removefromCart(Coffe);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Shop>(
      builder: (context, value, child) => Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: const Text("MyCart"),
          backgroundColor: Colors.grey[100],
          elevation: 0,
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: value.cart.length,
                itemBuilder: (context, index) {
                  // dapet kopi di cart
                  final coffe Cooffe = value.cart[index];

                  // dapet nama kopi
                  final String Namakopi = Cooffe.name;

                  //dapet harga kopi
                  final String Hargakopi = Cooffe.price;

                  //dapet list tile
                  return Container(
                    decoration: BoxDecoration(
                        color: secondaryColor,
                        borderRadius: BorderRadius.circular(10)),
                    margin: const EdgeInsets.all(15),
                    child: ListTile(
                      title: Text(
                        Namakopi,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      subtitle: Text(
                        Hargakopi,
                        style: TextStyle(
                          color: Colors.grey[200],
                        ),
                      ),
                      trailing: IconButton(
                        icon: const Icon(
                          Icons.cancel,
                          color: Colors.white,
                        ),
                        onPressed: () => removeFromCart(Cooffe, context),
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: button(
                text: "Pay Now",
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HistoryPage(),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
