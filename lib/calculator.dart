import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
final TextEditingController _num1controller=TextEditingController();
final TextEditingController _num2controller=TextEditingController();
int result = 0;
void add(){
  print('num1= ${_num1controller.text} ,num2= ${_num2controller.text}');
  int num1=int.parse(_num1controller.text);
  int num2=int.parse(_num2controller.text);
  print(num1 + num2);
  setState(() {
    result = num1 + num2;
  });
}
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
        leading: Icon(Icons.arrow_circle_left),
        actions: [Icon(Icons.align_horizontal_left_outlined)],
      ),
      body: ListView(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  controller: _num1controller,
                  decoration: InputDecoration(
                    border:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)
                    )
                  ),
                ),
              ),
              SizedBox(width: 50),
              ElevatedButton(onPressed: (){add();}, child: Text('+')),
              SizedBox(width: 30),
              ElevatedButton(onPressed: (){}, child: Text('-')),
            ],
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  controller: _num2controller,
                  decoration: InputDecoration(
                    border:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)
                    )
                  ),
                ),
              ),
              SizedBox(width: 50),
              ElevatedButton(onPressed: (){}, child: Text('*')),
              SizedBox(width: 30),
              ElevatedButton(onPressed: (){}, child: Text ('/')),
            ],
          ),
          SizedBox(height: 20,),
          ListTile(
            tileColor: Colors.teal,
            title: Center(child: Text('Result = $result')),
          )
        ],
      ),
    ));
  }
}
