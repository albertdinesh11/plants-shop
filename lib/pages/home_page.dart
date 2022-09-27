import 'package:flutter/material.dart';
import 'package:plants_shop/utils/category_button.dart';
import 'package:plants_shop/utils/plants_card.dart';
import 'package:plants_shop/utils/promotion_plant_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 50.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(Icons.graphic_eq),
                  Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: const LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Color.fromARGB(223, 227, 100, 178),
                                Color.fromARGB(184, 100, 212, 232),
                              ]),
                        ),
                        child: const Icon(Icons.first_page),
                      ),
                      const SizedBox(width: 20),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: const LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Color.fromARGB(223, 227, 100, 178),
                                Color.fromARGB(184, 100, 212, 232),
                              ]),
                        ),
                        child: const Icon(Icons.do_not_disturb_off),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(height: 25),
              const Text(
                'Welcome Back...!',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 10),
              const Text(
                'Change your Mind with Help of Plant',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 5),
              SizedBox(
                height: 90,
                width: width * 1,
                child: ListView(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        CategoryButton(buttonType: 'All'),
                        CategoryButton(buttonType: 'Indoor'),
                        CategoryButton(buttonType: 'Outdoor'),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Explore Indoor Plants ',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  Row(
                    children: const [
                      Text(
                        'Filter',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                      SizedBox(width: 10),
                      Icon(Icons.equalizer_sharp)
                    ],
                  )
                ],
              ),
              const SizedBox(height: 25),
              SizedBox(
                width: width * 1,
                height: height * 0.40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [PlantsCard(), PlantsCard(), PlantsCard()],
                ),
              ),
              const SizedBox(height: 25),
              const Text(
                'Promotion More Plants',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 20),
              const PromotionCard(
                plantName: 'Dracaena corn plant',
                plantType: 'Dracaena massangeana',
                plantRate: '11.2',
                plantRating: '4.5',
                cardColor: Color.fromARGB(223, 227, 100, 178),
                cardImgPath: 'lib/images/page_1_flr.png',
              ),
              const PromotionCard(
                plantName: 'Dracaena corn plant',
                plantType: 'Dracaena massangeana',
                plantRate: '11.2',
                plantRating: '4.5',
                cardColor: Color.fromARGB(184, 100, 212, 232),
                cardImgPath: 'lib/images/page_1_flr.png',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
