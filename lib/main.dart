import 'package:flutter/material.dart';
import 'package:flutter_application_1/exercise_screen.dart';

void main() {
  runApp(MaterialApp(home: HomeScreen()));
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: <Widget>[
      Image.network(
        'https://raw.githubusercontent.com/Lorenalgm/fisiotheapp/master/src/assets/person.png',
        width: 400.0,
        height: 500.0,
        alignment: Alignment.center,
      ),
      Text(
        'Olá , Lorena!',
        style: TextStyle(fontSize: 20.0),
      ),
      Text(
        'Vamos iniciar o seu tratamento? :)',
        style: TextStyle(fontSize: 20.0),
      ),
      ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => ExerciseScreen()));
          },
          style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all<Color>(Colors.deepPurple)),
          child: Align(
              alignment: Alignment.center,
              widthFactor: 10,
              child: Text(
                'Iniciar Tratamento',
              )))
    ]));
  }
}
