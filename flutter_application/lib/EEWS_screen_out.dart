import 'package:flutter/material.dart';
import 'package:circular_countdown/circular_countdown.dart';
import 'package:flutter_application/map_page.dart';

class EEWSScreenOut extends StatefulWidget {
  const EEWSScreenOut({Key? key}) : super(key: key);

  @override
  State<EEWSScreenOut> createState() => _EEWSScreenOutState();
}

class _EEWSScreenOutState extends State<EEWSScreenOut> {
  int countdown = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          // Sliver APPBAR
          SliverAppBar(
            leading: Padding(
              padding: EdgeInsets.only(left: 10.0, top: 10.0, bottom: 2.5),
              child: Image.asset('assets/img/BMG.png'),
            ),
            leadingWidth: 60,
            title: Text('EEWS'),
            expandedHeight: 320,
            floating: true,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                children: [
                  Container(
                    color: Colors.blue[900],
                  ),
                  Positioned(
                    top: 60,
                    left: 130,
                    bottom: 1,
                    child: Center(
                      child: Container(
                        width: 130,
                        height: 110,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            // Add your countdown widget
                            TimeCircularCountdown(
                              unit: CountdownUnit.second,
                              countdownTotal: 10,
                              onUpdated: (unit, remainingTime) {
                                // You can add logic here to update numbers based on the remaining time
                                int number = getNumberForTime(remainingTime);
                                // Update your UI to display the number
                                setState(() {
                                  countdown = number;
                                });
                              },
                              onFinished: () => print("Countdown Finished"),
                            ),
                            // Add a widget to display the number (adjust position as needed)
                            Positioned(
                              top: 32,
                              child: Text(
                                '$countdown',
                                style: TextStyle(fontSize: 40, color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Sliver Items 1
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      height: 200,
                      color: Colors.green[600],
                    ),
                  ),
                  Positioned(
                    top: 50, // adjust the top position as needed
                    left: 20, // adjust the left position as needed
                    child: Image.asset(
                      'assets/img/clock_new.png',
                      width: 90,
                      height: 90,
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Sliver Items 2
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      height: 200,
                      color: Colors.green[600],
                    ),
                  ),
                  Positioned(
                    top: 50,
                    left: 20,
                    child: Image.asset(
                      'assets/img/earthquake.png',
                      width: 90,
                      height: 90,
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Sliver Items 3
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      height: 200,
                      color: Colors.green[600],
                    ),
                  ),
                  Positioned(
                    top: 50,
                    left: 20,
                    child: Image.asset(
                      'assets/img/intensity.png',
                      width: 90,
                      height: 90,
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Sliver Items 4
          SliverToBoxAdapter(
            child: GestureDetector(
              onTap: (){
                //navigate to new page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NewPage()
                  ),
                );
              },
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      height: 200,
                      color: Colors.green[600],
                    ),
                  ),
                  Positioned(
                    top: 50,
                    left: 20,
                    child: Image.asset(
                      'assets/img/distance.png',
                      width: 90,
                      height: 90,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

  int getNumberForTime(int remainingTime) {
    // Your logic to determine the number based on remaining time
    // In this example, counting down from 10 to 0
    return remainingTime - 1;
  }
}