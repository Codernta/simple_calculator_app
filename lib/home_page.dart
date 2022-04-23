import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var num1 = 0, num2 = 0, sum = 0;

  final TextEditingController t1 = TextEditingController(text: '0');
  final TextEditingController t2 = TextEditingController(text: '0');

  void calcAddition() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 + num2;
    });
  }

  void calcSubtraction() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 - num2;
    });
  }

  void calcMultiplication() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 * num2;
    });
  }

  void calcDivision() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = (num1 / num2) as int;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Calculator',
          style: TextStyle(color: Colors.orange, fontSize: 23),
        ),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(25.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Answer :  $sum',
                  style: const TextStyle(color: Colors.orange, fontSize: 30.0)),
              const SizedBox(height: 30),
              TextField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  hintText: '0.00',
                ),
                controller: t1,
              ),
              const SizedBox(height: 10.0),
              TextField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  hintText: '0.00',
                ),
                controller: t2,
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20.0),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          fixedSize: const Size(60, 60)),
                      onPressed: () {
                        calcAddition();
                      },
                      child: const Text(
                        '+',
                        style: TextStyle(fontSize: 30.0, color: Colors.orange),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        calcSubtraction();
                      },
                      style: ElevatedButton.styleFrom(
                          fixedSize: const Size(60, 60)),
                      child: const Text(
                        '-',
                        style: TextStyle(fontSize: 30.0, color: Colors.orange),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          fixedSize: const Size(60, 60)),
                      onPressed: () {
                        calcMultiplication();
                      },
                      child: const Text(
                        '*',
                        style: TextStyle(fontSize: 30.0, color: Colors.orange),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          fixedSize: const Size(60, 60)),
                      onPressed: () {
                        calcDivision();
                      },
                      child: const Text(
                        '/',
                        style: TextStyle(fontSize: 30.0, color: Colors.orange),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
