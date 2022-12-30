import 'dart:math';

import 'package:flutter/material.dart';
  Random random = new Random();
  int ranNUm =0;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  bool styleText = true;
  bool multipleColors = true;
  List<Color> myColor = [Colors.purple, Colors.red,Colors.green,Colors.yellowAccent, Colors.purple];  

    void changeStyle() {
    if(styleText ==true){
      setState(() {
    
      // _counter++;
     
      styleText = false;
    });
    }else{
      setState(() {
    
      // _counter++;
     
      styleText = true;
    });

    }
    
  }



  

  void changeMultiple(){
     ranNUm = random.nextInt(5);
if(multipleColors ==true){
      setState(() {
    
      // _counter++;
      multipleColors = false;
    });
    }else{
      setState(() {
    
      // _counter++;
      multipleColors = true;
    });
    }

  }

  @override
  Widget build(BuildContext context) {
    
    var ranNUm2 = ranNUm;
    return Scaffold(
      appBar: AppBar(
       
        title: Text(widget.title),
      ),
      body: Center(
   
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Text('2 colors',
              style: styleText ? TextStyle(color: Colors.black) : TextStyle(color: Colors.lightBlue),
              ),
              
            ),
            ElevatedButton(onPressed:()=>{ 
              print(ranNUm),
                changeStyle()
               
                

                
              }, child: Text('click me'),),
            
             Container(
              child: Text('multiple colors',
              style: multipleColors ? TextStyle(color: myColor[ranNUm]) :  TextStyle(color: myColor[ranNUm]),
              ),
              
            ),
            ElevatedButton(onPressed:()=>{ 
                changeMultiple()
               
                             
              }, child: Text('click me'),),
            
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: changeStyle,
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
