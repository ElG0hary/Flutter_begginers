import 'package:basketball_counter_app/widgets/increament_button.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int teamAPoints = 0;

  int teamBPoints = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BasketBall Counter'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              //Team A
              SizedBox(
                height: 500,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      'Team A',
                      style: TextStyle(
                        fontSize: 36,
                      ),
                    ),
                    Text(
                      '$teamAPoints',
                      style: const TextStyle(
                        fontSize: 120,
                      ),
                    ),
                    CounterButton(
                      text: 'Add 1 points',
                      onPressed: () {
                        setState(() {
                          teamAPoints++;
                        });
                      },
                    ),
                    CounterButton(
                      text: 'Add 2 points',
                      onPressed: () {
                        setState(() {
                          teamAPoints += 2;
                        });
                      },
                    ),
                    CounterButton(
                      text: 'Add 3 points',
                      onPressed: () {
                        setState(() {
                          teamAPoints += 3;
                        });
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 500,
                child: VerticalDivider(
                  color: Colors.grey,
                  thickness: 1,
                  indent: 50,
                  endIndent: 50,
                ),
              ),
              //Team B
              SizedBox(
                height: 500,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      'Team B',
                      style: TextStyle(
                        fontSize: 36,
                      ),
                    ),
                    Text(
                      '$teamBPoints',
                      style: const TextStyle(
                        fontSize: 120,
                      ),
                    ),
                    CounterButton(
                      text: 'Add 1 points',
                      onPressed: () {
                        setState(() {
                          teamBPoints++;
                        });
                      },
                    ),
                    CounterButton(
                      text: 'Add 2 points',
                      onPressed: () {
                        setState(() {
                          teamBPoints += 2;
                        });
                      },
                    ),
                    CounterButton(
                      text: 'Add 3 points',
                      onPressed: () {
                        setState(() {
                          teamBPoints += 3;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
          //Reset button
          CounterButton(
            text: 'Reset',
            onPressed: () {
              setState(() {
                teamAPoints = 0;
                teamBPoints = 0;
              });
            },
          ),
        ],
      ),
    );
  }
}
