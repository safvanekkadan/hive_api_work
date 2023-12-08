import 'package:flutter/material.dart';
import 'package:test_work/view/widgets/cards.dart';
import 'package:test_work/view/widgets/subveiw/product.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSon7UXXyxvoxfrD0brWchUB7kIU545JP7QtQ&usqp=CAU"),
                    radius: 25,
                  ),
                ),
                IconButton(onPressed: () {}, icon: const Icon(Icons.menu))
              ],
            ),
            Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                card(
                  icon: Icons.people,
                  title: "Customer",
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ProductScreen()));
                  },
                  child: card(
                    icon: Icons.shopping_cart,
                    title: "Product",
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                card(
                  icon: Icons.add,
                  title: "New Order",
                ),
                card(
                  icon: Icons.keyboard_return_outlined,
                  title: "Return Order",
                )
              ],
            ),
            Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                card(
                  icon: Icons.currency_exchange_outlined,
                  title: "Payment",
                ),
                card(
                  icon: Icons.note_alt_outlined,
                  title: "Today's Order",
                )
              ],
            ),
            Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                card(
                  icon: Icons.map,
                  title: "Route",
                ),
                card(
                  icon: Icons.map,
                  title: "Route",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}