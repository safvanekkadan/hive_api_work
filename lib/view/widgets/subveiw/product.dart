import 'package:flutter/material.dart';


class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.menu,
              color: const Color.fromARGB(255, 0, 0, 0),
            ),
            onPressed: () {},
          ),
        ],
        title: Text(
          "Nesto Hypermarket",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: [
          // search(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisExtent: 160,
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 8.0,
                ),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return GridItem(
                    // itemIndex: index,
                    itemName: "Fruits",
                    image: Image.network(
                      "https://imgs.search.brave.com/AbbtxQj2Mof4D_kXJq7SsQCxG0fIg-yVrtf1gdfsEyk/rs:fit:500:0:0/g:ce/aHR0cHM6Ly90NC5m/dGNkbi5uZXQvanBn/LzAxLzM3LzA1Lzk5/LzM2MF9GXzEzNzA1/OTkzOF9SbDFXanF4/MkZaR0NEanA1ajZ2/dTVvN0hXQTVWUVI5/aS5qcGc",
                    ),
                    Cost: "200",
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class GridItem extends StatelessWidget {
  final String itemName;
  final Image image;
  final String Cost;

  const GridItem({
    Key? key,
    required this.itemName,
    required this.image,
    required this.Cost,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                child: image,
                height: 50,
              ),
            ),
            SizedBox(height: 8),
            Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  itemName,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(Cost),
                MaterialButton(
                  shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  onPressed: () {},
                  child: Text(
                    "Add",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Color.fromARGB(255, 12, 57, 135),
                )
              ],
            ),
            SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}