import 'package:flutter/material.dart';


class RadioChack extends StatefulWidget {
  const RadioChack({super.key});

  @override
  State<RadioChack> createState() => _RadioChackState();
}

class _RadioChackState extends State<RadioChack> {

  bool x1 = false;

  String? food;
  int s = 0;

  void fn(value){
    setState(() {
      food = value;
      if (food == 'Small'){
        s = 25000;
      }

      if (food == 'Medium'){
        s = 40000;
      }

      if (food == 'Large'){
        s = 50000;
      }
      print(value.toString());
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleAvatar(
            backgroundImage: AssetImage('img/pizza.jpg'),
            radius: 120,
          ),
          Container(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Radio(value: 'Small', groupValue: food, onChanged: fn),
              const Text(
                'Small',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(255, 50, 22, 175),
                ),
              ),
            ],
          ),
          Container(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Radio(value: 'Medium', groupValue: food, onChanged: fn),
              const Text(
                'Medium',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(255, 50, 22, 175),
                ),
              ),
            ],
          ),
          Container(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Radio(value: 'Large', groupValue: food, onChanged: fn),
              const Text(
                'Large',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(255, 50, 22, 175),
                ),
              ),
            ],
          ),
          Container(
            height: 50,
          ),
          Row(
            children: [
              const Text(
              'Total sum: ',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Colors.redAccent,
              ),
              ),
              Text(
                s.toString(),
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.redAccent,
                ),
              ),
              const Text(
                ' so\'m',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.redAccent,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body:RadioChack(),
      ),
    ),
  );
}
