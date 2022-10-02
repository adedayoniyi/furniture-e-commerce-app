import 'package:flutter/material.dart';
import 'package:funiture_app_task4/util/productsCard.dart';

class PageTwo extends StatefulWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  final List data1 = [
    ["images/furniture-image7.jpeg", 15],
    ["images/furniture-image3.jpg", 24],
    ["images/furniture-image6.jpeg", 9]
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                right: 270,
                top: 10,
                bottom: 10,
              ),
              child: Text("Search",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey[700],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: TextField(
                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.search, color: Colors.grey[300]),
                        hintText: 'Search Categories',
                        hintStyle: TextStyle(
                            fontSize: 16,
                            color: Colors.grey[300],
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                    height: 35,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey, width: 1),
                      color: Colors.black,
                    ),
                    child: Center(
                        child: Text(
                      "Chairs",
                      style: TextStyle(color: Colors.white),
                    ))),
                Container(
                    height: 35,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey, width: 1),
                      color: Colors.black,
                    ),
                    child: Center(
                        child: Text(
                      "Sofa",
                      style: TextStyle(color: Colors.white),
                    ))),
                Container(
                    height: 35,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey, width: 1),
                      color: Colors.black,
                    ),
                    child: Center(
                        child: Text(
                      "Drawers",
                      style: TextStyle(color: Colors.white),
                    ))),
                Container(
                    height: 35,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey, width: 1),
                      color: Colors.black,
                    ),
                    child: Center(
                        child: Text(
                      "Light",
                      style: TextStyle(color: Colors.white),
                    ))),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Container(
                      height: 35,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey, width: 1),
                        color: Colors.black,
                      ),
                      child: Center(
                          child: Text(
                        "Tables",
                        style: TextStyle(color: Colors.white),
                      ))),
                ),
                SizedBox(
                  width: 8,
                ),
                Container(
                    height: 35,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey, width: 1),
                      color: Colors.black,
                    ),
                    child: Center(
                        child: Text(
                      "Lamp",
                      style: TextStyle(color: Colors.white),
                    ))),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 250, top: 10, bottom: 20),
              child: Text("Hot Deals",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 35),
                    child: Text("Best Quality sales",
                        style: TextStyle(color: Colors.white)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 5),
                    child:
                        Text("Started", style: TextStyle(color: Colors.white)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 5),
                    child: Text("UPTO 75%",
                        style: TextStyle(
                            color: Color.fromARGB(255, 223, 201, 4),
                            fontSize: 20)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 5),
                    child:
                        Text("Discount", style: TextStyle(color: Colors.white)),
                  ),
                ],
              ),
              height: 160,
              width: 320,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                      image: AssetImage("images/black-furniture.jpg"),
                      fit: BoxFit.fill)),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: 3,
                    itemBuilder: ((context, index) {
                      return ProductsCard(
                        imagePath: data1[index][0],
                      );
                    })))
          ],
        ),
      ),
    );
  }
}
