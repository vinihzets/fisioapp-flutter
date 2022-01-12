import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';

class ExerciseScreen extends StatelessWidget {
  const ExerciseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white12,
        actions: <Widget>[],
      ),
      body: Column(
        children: [
          Image.network(
            'https://raw.githubusercontent.com/Lorenalgm/fisiotheapp/master/src/assets/hand.png',
            width: 390.0,
            height: 280.0,
          ),
          Text(
            'Feche e abra suas mãos!',
            style: TextStyle(fontSize: 20.0),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => HomeScreen()));
            },
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.deepPurple)),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                'Completo!',
                style: TextStyle(backgroundColor: Colors.deepPurple),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(
                  width: 10.0,
                  child: Text(
                    'Series',
                    style: TextStyle(
                        fontSize: 25, height: 3.0, color: Colors.grey),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  child: Text(
                    'repetitions',
                    style: TextStyle(
                        fontSize: 25.0, height: 3.0, color: Colors.grey),
                  ),
                ),
              ),
              Expanded(
                  flex: 1,
                  child: Container(
                    child: Text(
                      'Rest',
                      style: TextStyle(
                          fontSize: 25.0, height: 3.0, color: Colors.grey),
                    ),
                  ))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(
                  width: 10.0,
                  child: Text(
                    '3x',
                    style: TextStyle(
                        fontSize: 20, height: 1.0, color: Colors.purpleAccent),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  child: Text(
                    '10',
                    style: TextStyle(
                        fontSize: 20.0,
                        height: 1.0,
                        color: Colors.purpleAccent),
                  ),
                ),
              ),
              Expanded(
                  flex: 1,
                  child: Container(
                    child: Text(
                      '20 seg',
                      style: TextStyle(
                          fontSize: 20.0,
                          height: 1.0,
                          color: Colors.purpleAccent),
                    ),
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
