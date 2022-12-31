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

Future<void>_displayDialog() async {  
    return showDialog(  
        context: context,  
        builder: (BuildContext context) {  
          return AlertDialog(  
            title: Text('TextField AlertDemo'),  
            content: TextField(  
              decoration: InputDecoration(hintText: "TextField in Dialog"),  
            ),  
            actions: <Widget>[  
              new ElevatedButton(  
                child: new Text('SUBMIT'),  
                onPressed: () {  
                  Navigator.of(context).pop();  
                },  
              )  
            ],  
          );  
        });  
  }  
  




  Future<void> showMyDialog() async {
  return showDialog<void>(
    context: context,
    // barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Imorit dialog'),
        content: SingleChildScrollView(
          child: ListBody(
            children: const <Widget>[
              Text('this is imorit dialog.'),
              Text('whould you want to work with us?'),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: const Text('Delete'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ), TextButton(
            child: const Text('Ok'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          )
          
        ],
      );
    },
  );
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

              ElevatedButton(onPressed:()=>{ 
                showMyDialog()
               
                

                
              }, child: Text('show dialog 1'),),
              ElevatedButton(onPressed:()=>{ 
                Container(color: Colors.red),
                showDialog(context: context,
                 builder: (ctx)=> AlertDialog(

                  title: const Text(' alert!'),
                  
                  content: Text ('are you shore to want to delete?'),
                  
                  actions: <Widget>[
                    TextButton(onPressed: (){
                      Navigator.of(ctx).pop();

                    },
                     child: Container(color: Colors.green,
                     padding: EdgeInsets.all(14),
                     child: const Text('okay')
                     
                     ,))


                  ],

                 )
                                
                 )
                
              
              }, child: Text('show simple Dialog'),),
              ElevatedButton(onPressed:()=>{ 
                Container(color: Colors.red),
                showDialog(context: context,
                 builder: (ctx)=> SimpleDialog(

                  title: const Text(' alert!'),
                  children:<Widget> [
                    SimpleDialogOption(onPressed: (){
                      
                      Navigator.of(context).pop();
                    },
                    child:const Text('easy'),
                    ),
                    SimpleDialogOption(onPressed: ()=>{
                       ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                       content: Text("easy"),
                           )),
                      Navigator.of(context).pop() 
                      },
                    child: Text('medium'),),
                     SimpleDialogOption(onPressed: ()=>{
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                       content: Text("medium"),
                           )),
                       ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                       content: Text("hard"),
                           )),
                      Navigator.of(context).pop()

                    },
                    child: Text('hard'),)


                  ],
                  
                    )
                                
                 )
                
              
              }, child: Text('show dialog 2'),), 

               ElevatedButton(onPressed:()=>{ 
                _displayDialog()

               
                 


   }, child: Text('text field dialog'), ),

   TextField(
        decoration: const InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue, width: 2.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.green, width: 2.0),
          ),
          hintText: 'Enter your name',
        ),
        // controller: _controller,
        onSubmitted: (String value) {
          debugPrint(value);
        },
      ),
               

        Center(
      child: Container(
       height: 150.0,
     width: 150.0,
     color: Color.fromARGB(255, 237, 17, 50),
     child: const Align(
      alignment: Alignment.topRight,
      child: Text(
        'mahsa',
      ),
    ),
  ),
),


// Center(
//   child: Container(
//     height: 120.0,
//     width: 120.0,
//     color: Colors.blue[50],
//     child: const Align(
//       alignment: Alignment(0.2, 0.6),
//       child: FlutterLogo(
//         size: 60,
//       ),
//     ),
//   ),
// ),

Center(
  child: Container(
    height: 120.0,
    width: 120.0,
    color: Colors.blue[100],
    child: const Align(
      alignment: FractionalOffset(0, 1),
      child: FlutterLogo(
        size: 60,
      ),
    ),
  ),
)
                  

                                
                  
                
              
              
            
             
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
