import 'package:flutter/material.dart';

class Animation1 extends StatefulWidget {
  @override
  State<Animation1> createState() => _Animation1State();
}

class _Animation1State extends State<Animation1> {
  double lf1 = 10;
  double hi1 = 300;
  double bt1 = 100;
  double fs1 = 16;
  Color c1 = Colors.red;
  Color cf1 = Colors.white;

  double lf2 = 100;
  double hi2 = 300;
  double bt2 = 100;
  double fs2 = 16;
  Color c2 = Colors.green;
  Color cf2 = Colors.white;

  double lf3 = 200;
  double hi3 = 300;
  double bt3 = 100;
  double fs3 = 16;
  Color c3 = Colors.blue;
  Color cf3 = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animation"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        color: Colors.greenAccent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                AnimatedContainer(
                  duration: Duration(seconds: 3),
                  width: double.infinity,
                  height: 500.0,
                ),
                AnimatedPositioned(
                    left: lf1,
                    bottom: bt1,
                    child: Container(
                      color: c1,
                      height: hi1,
                      width: 75,
                      child: AnimatedPadding(
                        duration: Duration(seconds: 2),
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Container(
                          color: Colors.black12,
                          child: Column(
                            children: [
                              AnimatedDefaultTextStyle(
                                  child: Text("Flutter"),
                                  style: TextStyle(fontSize: fs1, color: cf1),
                                  duration: Duration(seconds: 2))
                            ],
                          ),
                        ),
                      ),
                    ),
                    duration: Duration(seconds: 2)),
                AnimatedPositioned(
                    left: lf2,
                    bottom: bt2,
                    child: Container(
                      color: c2,
                      height: hi2,
                      width: 75,
                      child: AnimatedPadding(
                        duration: Duration(seconds: 2),
                        padding: const EdgeInsets.only(top: 100.0),
                        child: Container(
                          color: Colors.black12,
                          child: Column(
                            children: [
                              AnimatedDefaultTextStyle(
                                  child: Text("React"),
                                  style: TextStyle(fontSize: fs2, color: cf2),
                                  duration: Duration(seconds: 2))
                            ],
                          ),
                        ),
                      ),
                    ),
                    duration: Duration(seconds: 2)),
                AnimatedPositioned(
                    left: lf3,
                    bottom: bt3,
                    child: Container(
                      color: c3,
                      height: hi3,
                      width: 75,
                      child: AnimatedPadding(
                        duration: Duration(seconds: 2),
                        padding: const EdgeInsets.only(top: 80.0),
                        child: Container(
                          color: Colors.black12,
                          child: Column(
                            children: [
                              AnimatedDefaultTextStyle(
                                  child: Text("PHP"),
                                  style: TextStyle(fontSize: fs3, color: cf3),
                                  duration: Duration(seconds: 2))
                            ],
                          ),
                        ),
                      ),
                    ),
                    duration: Duration(seconds: 2)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(50)),
                  child: TextButton(
                      onPressed: () {
                        setState(
                          () {
                            lf1 = 100;
                            hi1 = 250;
                            bt1 = 100;
                            fs1 = 25;
                            c1 = Colors.green;
                            cf1 = Colors.white;
                            lf2 = 200;
                            hi2 = 150;
                            bt2 = 100;
                            fs2 = 25;
                            c2 = Colors.orange;
                            cf2 = Colors.white;
                            lf3 = 300;
                            hi3 = 200;
                            bt3 = 100;
                            fs3 = 25;
                            c3 = Colors.yellow;
                            cf3 = Colors.blue;
                          },
                        );
                      },
                      child: Text("Start")),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(50)),
                  child: TextButton(
                      onPressed: () {
                        setState(
                          () {
                            lf1 = 10;
                            hi1 = 300;
                            bt1 = 100;
                            fs1 = 16;
                            c1 = Colors.red;
                            cf1 = Colors.blue;

                            lf2 = 10;
                            hi2 = 300;
                            bt2 = 100;
                            fs2 = 16;
                            c2 = Colors.white;
                            cf2 = Colors.black;

                            lf3 = 10;
                            hi3 = 300;
                            bt3 = 100;
                            fs3 = 16;
                            c3 = Colors.black;
                            cf3 = Colors.blue;
                          },
                        );
                      },
                      child: Text("End")),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
