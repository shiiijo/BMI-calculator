import 'package:bmi_calculator/brain.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'brain.dart';
import 'results_page.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color ontap = Color(0xFF1D1E33);
  Color maleActivecolour = Color(0xFF0A0E21);
  Color femaleActivecolour = Color(0xFF0A0E21);
  int height = 180;
  int weight = 40;
  int age = 15;
  @override
  void changecol(int n) {
    if (n == 1) {
      if (maleActivecolour == Color(0xFF0A0E21)) {
        maleActivecolour = ontap;
        femaleActivecolour = Color(0xFF0A0E21);
      }
    }
    if (n == 2) {
      if (femaleActivecolour == Color(0xFF0A0E21)) {
        femaleActivecolour = ontap;
        maleActivecolour = Color(0xFF0A0E21);
      }
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'BMI CALCULATOR',
            style: GoogleFonts.chewy(fontSize: 30),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        changecol(1);
                        print('tapped');
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.all(5),
                      height: 200,
                      width: 170,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            FontAwesomeIcons.mars,
                            color: Colors.white,
                            size: 100,
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            'MALE',
                            style: GoogleFonts.inder(
                                fontSize: 15, color: Colors.white70),
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: maleActivecolour,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        changecol(2);
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.all(5),
                      height: 200,
                      width: 170,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            FontAwesomeIcons.venus,
                            color: Colors.white,
                            size: 100,
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            'FEMALE',
                            style: GoogleFonts.inder(
                                fontSize: 15, color: Colors.white70),
                          )
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: femaleActivecolour,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Center(
                    child: Text(
                      'HEIGHT',
                      style: GoogleFonts.inder(
                          fontSize: 15, color: Colors.white70),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    textBaseline: TextBaseline.alphabetic,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    children: [
                      Text(
                        height.toString(),
                        style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      ),
                      Text(
                        'cm',
                        style: TextStyle(color: Colors.white70, fontSize: 20),
                      )
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 12.0),
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: Color(0xFF8D8E98),
                        thumbColor: Color(0xFFEB1555),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 24.0),
                        overlayColor: Color(0x29EB1555)),
                    child: Slider(
                      value: height.toDouble(),
                      min: 100,
                      max: 250,
                      onChanged: (double value) {
                        setState(() {
                          height = value.round();
                        });
                      },
                    ),
                  )
                ],
              ),
              margin: EdgeInsets.all(5),
              height: 200,
              width: 350,
              decoration: BoxDecoration(
                color: Color(0xFF1D1E33),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'WEIGHT',
                          style: GoogleFonts.inder(
                              fontSize: 15, color: Colors.white70),
                        ),
                        Text(
                          weight.toString(),
                          style: TextStyle(fontSize: 35, color: Colors.white),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Roundbutton(
                              icon: FontAwesomeIcons.minus,
                              onpressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Roundbutton(
                              icon: FontAwesomeIcons.plus,
                              onpressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                            )
                          ],
                        )
                      ],
                    ),
                    margin: EdgeInsets.all(5),
                    height: 200,
                    width: 170,
                    decoration: BoxDecoration(
                      color: Color(0xFF1D1E33),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'AGE',
                          style: GoogleFonts.inder(
                              fontSize: 15, color: Colors.white70),
                        ),
                        Text(
                          age.toString(),
                          style: TextStyle(fontSize: 35, color: Colors.white),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Roundbutton(
                              icon: FontAwesomeIcons.minus,
                              onpressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Roundbutton(
                              icon: FontAwesomeIcons.plus,
                              onpressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                    margin: EdgeInsets.all(5),
                    height: 200,
                    width: 170,
                    decoration: BoxDecoration(
                      color: Color(0xFF1D1E33),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                )
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                Brain brain = new Brain(height: height, weight: weight);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => results(
                            result: brain.logic(),
                            com1: brain.commentry1(),
                            com2: brain.commentry2())));
              });
            },
            child: Container(
              height: 50,
              width: double.infinity,
              color: Colors.pink,
              child: Center(
                child: Text(
                  'CALCULATE',
                  style: GoogleFonts.delius(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      color: Colors.white),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Roundbutton extends StatelessWidget {
  Roundbutton({this.icon, this.onpressed});
  final IconData icon;
  final Function onpressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      shape: CircleBorder(),
      elevation: 6,
      constraints: BoxConstraints.tightFor(width: 56, height: 56),
      onPressed: onpressed,
      fillColor: Color(0xFF4C4F5E),
      child: Icon(
        icon,
        color: Colors.white,
      ),
    );
  }
}
