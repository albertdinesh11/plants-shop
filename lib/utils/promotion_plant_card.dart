// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class PromotionCard extends StatelessWidget {
  final String plantName;
  final String plantType;
  final String plantRate;
  final String plantRating;
  final cardColor;
  final cardImgPath;
  const PromotionCard({
    Key? key,
    required this.plantName,
    required this.plantType,
    required this.plantRate,
    required this.plantRating,
    required this.cardColor,
    required this.cardImgPath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: Container(
        width: width * 0.90,
        height: height * 0.12,
        decoration: BoxDecoration(
            color: cardColor, borderRadius: BorderRadius.circular(20)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Container(
                width: width * 0.25,
                height: height * 0.09,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: SizedBox(
                  height: 40,
                  width: 40,
                  child: Center(
                    child: Image.asset(cardImgPath),
                  ),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  plantName,
                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 5),
                Text(
                  plantType,
                  style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: Row(
                    children: [
                      Text(
                        '\$ $plantRate',
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w900),
                      ),
                      const SizedBox(width: 15),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Icon(Icons.star_rounded),
                          Text(
                            plantRating.toString(),
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w700),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(10)),
                child: const Center(child: Icon(Icons.favorite)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
