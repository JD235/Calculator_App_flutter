import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int n1 = 0, n2 = 0, sum = 0;
  final TextEditingController t1 = TextEditingController(text: '0');
  final TextEditingController t2 = TextEditingController(text: '0');

  void add() {
    setState(() {
      n1 = int.parse(t1.text);
      n2 = int.parse(t2.text);
      sum = n1 + n2;
    });
  }

  void sub() {
    setState(() {
      n1 = int.parse(t1.text);
      n2 = int.parse(t2.text);
      sum = n1 - n2;
    });
  }

  void mul() {
    setState(() {
      n1 = int.parse(t1.text);
      n2 = int.parse(t2.text);
      sum = n1 * n2;
    });
  }

  void div() {
    setState(() {
      n1 = int.parse(t1.text);
      n2 = int.parse(t2.text);
      sum = n1 ~/ n2;
    });
  }

  void clear() {
    setState(() {
      t1.text = '0';
      t2.text = '0';
      sum = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        title: Center(
          child: Text(
            'Calculator',
            style: TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 5.0),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            children: <Widget>[
              Text(
                'Output : $sum',
                style: TextStyle(
                  fontSize: 35.0,
                  color: Colors.purple[900],
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Enter Number 1',
                ),
                controller: t1,
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Enter Number 2',
                ),
                controller: t2,
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                    child: MaterialButton(
                      padding: EdgeInsets.all(30.0),
                      child: Text(
                        '+',
                        style: TextStyle(fontSize: 30.0),
                      ),
                      color: Colors.amber[300],
                      onPressed: () {
                        add();
                      },
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: MaterialButton(
                      padding: EdgeInsets.all(30.0),
                      child: Text(
                        '-',
                        style: TextStyle(fontSize: 30.0),
                      ),
                      color: Colors.amber[300],
                      onPressed: () {
                        sub();
                      },
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 20.0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                    child: MaterialButton(
                      padding: EdgeInsets.all(30.0),
                      child: Text(
                        '*',
                        style: TextStyle(fontSize: 30.0),
                      ),
                      color: Colors.amber[300],
                      onPressed: () {
                        mul();
                      },
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: MaterialButton(
                      padding: EdgeInsets.all(30.0),
                      child: Text(
                        '/',
                        style: TextStyle(fontSize: 30.0),
                      ),
                      color: Colors.amber[300],
                      onPressed: () {
                        div();
                      },
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  MaterialButton(
                    padding: EdgeInsets.all(20.0),
                    child: Text('Clear'),
                    color: Colors.amber[300],
                    onPressed: () {
                      clear();
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
