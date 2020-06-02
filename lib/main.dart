import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => Scaffold(body: HomePage(),
        ),
        '/Nextpage': (context) => Scaffold(appBar: AppBar(title: Text("Gradient theme", style: TextStyle(color: Colors.white,fontSize: 25, fontWeight: FontWeight.bold))),body: Nextgradient(),),
         '/Secondpage': (context) => Scaffold(appBar: AppBar(title: Text("Gradient Theme", style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold))),body: Secondpage(),),
        '/Thirdpage': (context) => Scaffold(appBar: AppBar(title: Text("Gradient Theme", style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold))),body: Thirdpage(),),
        '/Fourthpage': (context) => Scaffold(appBar: AppBar(title: Text("Gradient Theme", style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold))),body: Fourthpage(),),
         '/Fifthpage': (context) => Scaffold(appBar: AppBar(title: Text("Gradient Theme", style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold))),body: Fifthpage(),),
        '/Sixthpage': (context) => Scaffold(appBar: AppBar(title: Text("Gradient Theme", style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold))),body: Sixthpage(),),
        
      },
    );
  }
}

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("Gradient theme", style: TextStyle(color: Colors.white),
      ),
      backgroundColor: Colors.purple,
      ),
      body: Container(
          height: 600,
          width: 500,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.green, Colors.blue]
        ),
      ),
      child: FlatButton(
        child: Text("Next", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
        onPressed: (){
          Navigator.pushReplacementNamed(context, '/Nextpage');
        },
      ),
      ),
    );
  }
}

class Nextgradient extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      height: 700,
      width:500,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.topRight,
          colors: [Colors.red, 
          Colors.orange],
          
        ),
      ),
      child: FlatButton(
        onPressed: (){
          Navigator.pushReplacementNamed(context, '/Secondpage');
        },
       child: Text("Next", style: TextStyle(color: Colors.white,fontSize: 25, fontWeight: FontWeight.bold)),
      ),
      ); 
  }
}

class Secondpage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      height: 700,
      width: 500,
      decoration: BoxDecoration(
        gradient: RadialGradient(
          colors: [Colors.green, Colors.blue, Colors.pinkAccent,
          Colors.purple[500]],
          stops: [0.2,0.5,0.7,2]
        ),
      ),
      
      child: FlatButton(
        onPressed: (){
          Navigator.pushReplacementNamed(context, '/Thirdpage');
        },
       child: Text("Next", style: TextStyle(color: Colors.white,fontSize: 25, fontWeight: FontWeight.bold)),
      ),
      ); 
  }
}



class Thirdpage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      height: 700,
      width:500,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0.1,0.1,0.1,0.1,1],
          colors: [Colors.purple, 
          Colors.indigo,
          Colors.blue,
          Colors.green,
          Colors.yellow
          ],
          
        ),
      ),
      child: FlatButton(
        onPressed: (){
          Navigator.pushReplacementNamed(context, '/Fourthpage');
        },
       child: Text("Next", style: TextStyle(color: Colors.white,fontSize: 25, fontWeight: FontWeight.bold)),
      ),
      ); 
  }
}


class Fourthpage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      height: 700,
      width:500,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0.3,1],
          colors: [Colors.orange, 
          Colors.yellow],
          
        ),
      ),
      child: FlatButton(
        onPressed: (){
          Navigator.pushReplacementNamed(context, '/Fifthpage');
        },
       child: Text("Next", style: TextStyle(color: Colors.white,fontSize: 25, fontWeight: FontWeight.bold)),
      ),
      ); 
  }
}


class Fifthpage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      height: 700,
      width:500,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Colors.red, 
          Colors.green
          ],
          
        ),
      ),
      
      child: FlatButton(
        onPressed: (){
          Navigator.pushReplacementNamed(context, '/Sixthpage');
        },
       child: Text("Next", style: TextStyle(color: Colors.white,fontSize: 25, fontWeight: FontWeight.bold)),
      ),
      ); 
  }
}


class Sixthpage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      height: 700,
      width:500,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Colors.pink, 
          Colors.red
          ],
          
        ),
      ),
      
      ); 
  }
}

