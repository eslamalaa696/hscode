import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int number = 0;
  int index = 0;

  List<String> tassabeh = [
    "الله اكبر",
    "الحمدلله",
    "سبحان الله",
    "استغفر الله"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Flutter Demo',
          ),
        ),
        body: Center(
          child: (Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                number.toString(),
                style: TextStyle(fontSize: 33),
              ),
              SizedBox(
                height: 22,
              ),
              Text(
                tassabeh[index],
                style: TextStyle(fontSize: 44),
              ),
              SizedBox(
                height: 22,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    number++;
                    if (number == 5) {
                      number = 0;
                      index++;
                    }
                    if (index == tassabeh.length) {
                      index = 0;
                    }
                  });
                },
                child: Icon(
                  Icons.plus_one_rounded,
                  size: 44,
                ),
              )
            ],
          )),
        ));
  }
}
