import 'package:flutter/material.dart';

class CategoryButton extends StatelessWidget {
  final String buttonType;
  const CategoryButton({Key? key, required this.buttonType}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromARGB(223, 227, 100, 178),
              Color.fromARGB(184, 100, 212, 232),
            ]),
      ),
      child: Center(
          child: Text(
        buttonType,
        style: const TextStyle(fontWeight: FontWeight.w500),
      )),
    );
  }
}
