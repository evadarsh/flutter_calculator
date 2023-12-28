import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
final TextEditingController _num1controller=TextEditingController();
final TextEditingController _num2controller=TextEditingController();
double result = 0;
void add(){
  print('num1= ${_num1controller.text} ,num2= ${_num2controller.text}');
  double num1=double.parse(_num1controller.text);
  double num2=double.parse(_num2controller.text);
  print(num1 + num2);
  setState(() {
    result = num1 + num2;
  });
}
void subtract(){
  print('num1= ${_num1controller.text} ,num2= ${_num2controller.text}');
  double num1=double.parse(_num1controller.text);
  double num2=double.parse(_num2controller.text);
  print(num1 - num2);
  setState(() {
    result = num1 - num2;
  });
}
void multiply(){
  print('num1= ${_num1controller.text} ,num2= ${_num2controller.text}');
  double num1=double.parse(_num1controller.text);
  double num2=double.parse(_num2controller.text);
  print(num1 * num2);
  setState(() {
    result = num1 * num2;
  });
}
void division(){
  print('num1= ${_num1controller.text} ,num2= ${_num2controller.text}');
  double num1=double.parse(_num1controller.text);
  double num2=double.parse(_num2controller.text);
  print(num1 / num2);
  setState(() {
    result = num1 / num2;
  });
}
void clear(){
  setState(() {
    _num1controller.clear();
    _num2controller.clear();
    result = 0;
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
              ElevatedButton(onPressed: (){subtract();}, child: Text('-')),
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
              ElevatedButton(onPressed: (){multiply();}, child: Text('*')),
              SizedBox(width: 30),
              ElevatedButton(onPressed: (){division();}, child: Text ('/')),
            ],
          ),
          SizedBox(height: 20,),
          ListTile(
            tileColor: Colors.teal,
            title: Center(child: Text('Result = $result')),
          ),
          SizedBox(height: 10),
          ElevatedButton(onPressed: (){clear();}, child: Text ('Clear')),
        ],
      ),
    ));
  }
}
