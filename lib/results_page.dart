import 'package:google_fonts/google_fonts.dart';
import 'main.dart';
import 'input_page.dart';
import 'package:flutter/material.dart';

class results extends StatelessWidget {
  results({this.result, this.com1, this.com2});
  final String result;
  final String com1;
  final String com2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text(
                'Your Result',
                style: GoogleFonts.fingerPaint(
                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                height: 350,
                width: 350,
                color: Color(0xFF1D1E33),
                child: Center(
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        com1.toUpperCase(),
                        style: GoogleFonts.iceland(
                            fontSize: 30,
                            color: Colors.green,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        result,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 60,
                            fontWeight: FontWeight.w700),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          com2,
                          style: GoogleFonts.puritan(
                              fontSize: 25,
                              color: Colors.white70,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: SafeArea(
                child: Container(
                  height: 50,
                  width: double.infinity,
                  color: Colors.pink,
                  child: Center(
                    child: Text(
                      'RE-CALCULATE',
                      style: GoogleFonts.delius(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
