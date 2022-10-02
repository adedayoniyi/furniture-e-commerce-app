import 'package:flutter/material.dart';
import 'package:funiture_app_task4/screens/productsPage.dart';

class ProductsCard extends StatelessWidget {
  final String imagePath;
  const ProductsCard({
    Key? key,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          height: 80,
          decoration: BoxDecoration(),
          child: Row(
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(imagePath)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10, bottom: 8),
                    child: Text(
                      "Dynamically made for business",
                      style: TextStyle(
                        color: Colors.grey[400],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, bottom: 8),
                    child: Text(
                      "Engineering marvel",
                      style: TextStyle(
                        color: Colors.grey[400],
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10, bottom: 8),
                        child: Text(
                          '\$15.19',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: ((context) {
                            return ProductsPage();
                          })));
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(left: 130),
                          child: Container(
                            height: 30,
                            width: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.grey[600],
                            ),
                            child: Center(
                              child: Text("Shop Now",
                                  style: TextStyle(color: Colors.white)),
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              )
            ],
          )),
    );
  }
}
