import 'package:flutter/material.dart';
import 'package:funiture_app_task4/screens/pageTwo.dart';
import 'package:funiture_app_task4/util/similarCard.dart';

class ProductsPage extends StatefulWidget {
  const ProductsPage({Key? key}) : super(key: key);

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  final List data2 = [
    ["images/furniture-image8.jpg", 15],
    ["images/chair1.jpeg", 24],
    ["images/chair2.jpeg", 9],
    ["images/furniture-image6.jpeg", 9],
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 29, 29, 29),
      body: SafeArea(
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: IconButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: ((context) {
                        return PageTwo();
                      })));
                    },
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    )),
              ),
              Text("Product Details",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500)),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                    color: Colors.white,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                  )),
            ],
          ),
          Container(
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(10)),
            height: 250,
            child: Image.asset(
              'images/furniture-image7.jpeg',
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 200, top: 10),
            child: Text(
              "Wood Furniture",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 22),
                child: Text(
                  "item 200",
                  style: TextStyle(color: Colors.grey[400]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Text(
                  "\$15.19",
                  style: TextStyle(
                      color: Color.fromARGB(255, 223, 201, 4), fontSize: 20),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, right: 225, bottom: 8),
            child: Text(
              "Description",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              "This is an engineering marvel made out of the best wood found in the African rain forest. Quality assurance quaranted for a lower amount of price.The best design you will find in the market today",
              style: TextStyle(color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 210, top: 10),
            child: Text(
              "Similar Items",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: data2.length,
                  itemBuilder: ((context, index) {
                    return SimilarCard(imagePath2: data2[index][0]);
                  })),
            ),
          ),
          Container(
            height: 53,
            color: Colors.black,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(
                    height: 40,
                    width: 110,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black,
                        border: Border.all(
                          width: 2,
                          color: Color.fromARGB(255, 223, 201, 4),
                        )),
                    child: Center(
                        child: Text("Add to cart",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 223, 201, 4),
                            ))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Container(
                    height: 40,
                    width: 110,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(255, 223, 201, 4),
                    ),
                    child: Center(
                        child: Text("Buy Now",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ))),
                  ),
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
