import 'package:flutter/material.dart';
import 'package:funiture_app_task4/screens/pageOne.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[900],
        body: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Perfect",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w500)),
                Text(
                  "Furniture",
                  style: TextStyle(
                      color: Color.fromARGB(255, 223, 201, 4),
                      fontSize: 30,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  "For",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
            Text("Dream House",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w500)),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 25, right: 25),
              child: Text("Objectively Coordinate out-of-the-box products",
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 15,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 3, left: 25, right: 25),
              child: Text("with process-centric networks Quickly",
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 15,
                  )),
            ),
            SizedBox(
              height: 60,
            ),
            Container(
              height: 380,
              child: Image.asset("images/yellow-chair-main.png"),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(255, 223, 201, 4)),
                height: 50,
                width: 300,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) {
                      return PageOne();
                    })));
                  },
                  child: Center(
                    child: Text(
                      "Get Started",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
