import 'package:flutter/material.dart';

class EditCart extends StatelessWidget {
  const EditCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.menu,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
            onPressed: () {},
          ),
        ],
        title: const Column(
          children: [
            Text("Your Cart", style: TextStyle(color: Colors.black)),
            Text("Nesto Hypermarket", style: TextStyle(color: Colors.black)),
          ],
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: [
          const ListCart(),
          const ListCart(),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Stack(
              children: [
                Container(
                  height: 250,
                  width: 500,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Subtotal",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text("420.00"),
                        ],
                      ),
                      const SizedBox(height: 30),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Tax",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text("50.00"),
                        ],
                      ),
                      const SizedBox(height: 30),
                      const Divider(
                          thickness: 1, color: Color.fromARGB(255, 53, 52, 52)),
                      const SizedBox(height: 30),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Total",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 25)),
                          Text("470.00",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 25)),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          MaterialButton(
                            color: const Color.fromARGB(255, 9, 9, 153),
                            onPressed: () {},
                            child: const Text("Order",
                                style: TextStyle(color: Colors.white)),
                          ),
                          const SizedBox(width: 10),
                          Container(
                            child: MaterialButton(
                              color: const Color.fromARGB(255, 9, 9, 153),
                              onPressed: () {},
                              child: const Text("Order & Delivery",
                                  style: TextStyle(color: Colors.white)),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ListCart extends StatelessWidget {
  const ListCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Expanded(
                child: Text("Kashmir Kiwi | 250g",
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              Row(
                children: [
                  MaterialButton(
                    onPressed: () {},
                    color: const Color.fromARGB(255, 0, 14, 103),
                    child: const Text("-  1  +",
                        style: TextStyle(color: Colors.white)),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.delete, color: Colors.red),
                  ),
                ],
              ),
            ],
          ),
          const Text("90.00"),
        ],
      ),
    );
  }
}