import 'package:flutter/material.dart';

class NewOrders extends StatelessWidget {
  const NewOrders({Key? key});

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
          "New Order",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: [
          // search(
          //   icon: Icon(
          //     Icons.arrow_drop_down,
          //     color: Colors.grey,
          //   ),
          // ), // Capitalize the widget name
          Expanded(
            child: Container(
              decoration: BoxDecoration(),
              child: ListView.separated(
                itemCount: 15,
                separatorBuilder: (context, index) =>
                    Divider(), // Add Divider here
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    leading: Card(
                      elevation: 5,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              
                              fit: BoxFit.cover,
                                image: NetworkImage(
                                    "https://imgs.search.brave.com/ycc3heqhwP37k9W2wo16fi12I5aiLkeogKQSboB5Kus/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5pc3RvY2twaG90/by5jb20vaWQvODc2/NTAzODk0L3Bob3Rv/L3N0cmF3YmVycnkt/d2l0aC1zbGljZWQt/aGFsZi1pc29sYXRl/ZC1vbi13aGl0ZS1i/YWNrZ3JvdW5kLmpw/Zz9zPTYxMng2MTIm/dz0wJms9MjAmYz1N/NUdGZDU5SVJCX0Zj/aGZCcTFSeDEzYjJG/dktxWFhmdmp2VWl3/WVQycXlrPQ"))),
                        height: 60,
                        width: 80,
                        
                        
                      ),
                    ),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Nesto Hypermarket",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text("ID:555454D",
                            style: TextStyle(color: Colors.grey)),
                        Text("West Calicut",
                            style: TextStyle(color: Colors.grey)),
                        Text("Due Amount : 655",
                            style: TextStyle(fontWeight: FontWeight.bold))
                      ],
                    ),
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
