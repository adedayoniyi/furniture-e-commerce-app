import 'package:flutter/material.dart';
import 'package:funiture_app_task4/screens/pageTwo.dart';
import 'package:simple_star_rating/simple_star_rating.dart';

class PageOne extends StatelessWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: SafeArea(
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    )),
              ),
              Text("Categories",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500)),
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Container(
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.white, width: 1)),
                  child: Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    color: Colors.grey[700],
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Icon(
                    Icons.bed_sharp,
                    color: Color.fromARGB(255, 223, 201, 4),
                    size: 50,
                  )),
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  color: Colors.grey[700],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Icon(Icons.chair_alt,
                    color: Color.fromARGB(255, 223, 201, 4), size: 50),
              ),
              Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    color: Colors.grey[700],
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Icon(Icons.light_sharp,
                      color: Color.fromARGB(255, 223, 201, 4), size: 50)),
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  color: Colors.grey[700],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Icon(Icons.chair_outlined,
                    color: Color.fromARGB(255, 223, 201, 4), size: 50),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 150),
                child: Text(
                  "Furnitures",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) {
                    return PageTwo();
                  })));
                },
                child: Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Text(
                    "view more",
                    style: TextStyle(color: Color.fromARGB(255, 223, 201, 4)),
                  ),
                ),
              )
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 150, left: 130),
                child: Icon(Icons.favorite, color: Colors.black),
              ),
              height: 160,
              width: 160,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                      image: AssetImage("images/furniture-image.jpeg"),
                      fit: BoxFit.fill)),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 150, left: 130),
                child: Icon(Icons.favorite, color: Colors.black),
              ),
              height: 160,
              width: 160,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                      image: AssetImage("images/furniture-image5.jpeg"),
                      fit: BoxFit.fill)),
            ),
          ]),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(12),
                child: Text("Wood Chair",
                    style: TextStyle(color: Colors.white, fontSize: 20)),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 70),
                child: Text("Wood Chair",
                    style: TextStyle(color: Colors.white, fontSize: 20)),
              )
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, bottom: 20),
              child: SimpleStarRating(
                allowHalfRating: true,
                starCount: 5,
                rating: 3,
                size: 10,
                onRated: (rate) {},
                spacing: 6,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 95, bottom: 20),
              child: SimpleStarRating(
                allowHalfRating: true,
                starCount: 5,
                rating: 3,
                size: 10,
                onRated: (rate) {},
                spacing: 6,
              ),
            ),
          ]),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 150, left: 130),
                  child: Icon(Icons.favorite, color: Colors.black),
                ),
                height: 160,
                width: 160,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                        image: AssetImage("images/furniture-image2.jpeg"),
                        fit: BoxFit.fill)),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 150, left: 130),
                  child: Icon(Icons.favorite, color: Colors.black),
                ),
                height: 160,
                width: 160,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                        image: AssetImage("images/big-furniture.jpeg"),
                        fit: BoxFit.fill)),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(12),
                child: Text("Wood Chair",
                    style: TextStyle(color: Colors.white, fontSize: 20)),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 70),
                child: Text("Wood Chair",
                    style: TextStyle(color: Colors.white, fontSize: 20)),
              )
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, bottom: 20),
              child: SimpleStarRating(
                allowHalfRating: true,
                starCount: 5,
                rating: 3,
                size: 10,
                onRated: (rate) {},
                spacing: 6,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 95, bottom: 20),
              child: SimpleStarRating(
                allowHalfRating: true,
                starCount: 5,
                rating: 4,
                size: 10,
                onRated: (rate) {},
                spacing: 6,
              ),
            ),
          ]),
        ]),
      ),
    );
  }
}
