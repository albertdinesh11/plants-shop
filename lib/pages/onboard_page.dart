import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardPage extends StatelessWidget {
  const OnboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(children: [
          Row(children: [
            Container(
              height: height * 0.95,
              width: width * 1,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50)),
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      stops: [
                        0.5,
                        0.5,
                      ],
                      colors: [
                        Color.fromARGB(223, 227, 100, 178),
                        Color.fromARGB(184, 100, 212, 232),
                      ])),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 25.0, vertical: 35.0),
                    child: Text('M.FREE',
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                            color: Colors.black)),
                  ),
                  const SizedBox(height: 40),
                  Center(
                    child: SizedBox(
                      height: height * 0.40,
                      width: width * 0.70,
                      child: Column(
                        children: [
                          Text(
                            'House Plant',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.greatVibes(
                                fontSize: 35, fontWeight: FontWeight.w400),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            'A Plant You Need To Water In Order For It To Grow',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ]),
          Align(
            alignment: FractionalOffset.bottomCenter,
            child: Container(
              height: height * 0.09,
              width: width * 0.50,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fitWidth,
                    image: AssetImage('lib/images/swipe_up.png')),
                color: Color.fromRGBO(0, 0, 0, 0),
              ),
              child: Center(
                  child: Column(
                children: const [
                  SizedBox(height: 20),
                  RotatedBox(
                      quarterTurns: 5, child: Icon(Icons.arrow_back_ios)),
                  Text(
                    'Swipe Up',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                ],
              )),
            ),
          ),
          Positioned.fill(
            left: -70,
            bottom: -20,
            child: Align(
              alignment: FractionalOffset.bottomLeft,
              child: SizedBox(
                width: width * 3,
                height: 1200,
                child: Image.asset('lib/images/page_1_flr.png'),
              ),
            ),
          )
        ]));
  }
}
