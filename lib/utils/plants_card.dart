import 'package:flutter/material.dart';

class PlantsCard extends StatelessWidget {
  const PlantsCard({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Container(
        width: width * 0.45,
        height: height * 0.40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: const LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Color.fromARGB(223, 227, 100, 178),
                Color.fromARGB(184, 100, 212, 232),
              ]),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                width: width * 0.45,
                height: height * 0.15,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: SizedBox(
                  height: 40,
                  width: 40,
                  child: Center(
                    child: Image.asset('lib/images/page_1_flr.png'),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 5, left: 10, right: 10),
              child: Text(
                'Giant bird of Paradise',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
              child: Text(
                'Strelitiza nicolai',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text(
                  '\$ 29.09',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
                ),
                Row(
                  children: const [
                    Icon(Icons.star_rounded),
                    Text(
                      '4.2',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(10)),
                    child: const Center(child: Icon(Icons.icecream)),
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(10)),
                    child: const Center(child: Icon(Icons.favorite)),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
