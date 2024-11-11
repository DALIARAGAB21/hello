import 'package:flutter/material.dart';

void main(List<String> args) {
  return runApp(app());
}


class app extends StatefulWidget {
  const app({super.key});

  @override
  State<app> createState() => _appState();
}

class _appState extends State<app> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:MyHomeScreen(),
    );


  }
}

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({super.key});

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
   int _num=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor:Colors.white,
        title: Text("Egypt Devsssssssss"),
      ),
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            Text("Numbers",style: TextStyle(fontSize: 40,color: const Color.fromARGB(255, 42, 98, 43)),),
            Text(_num.toString(),style: TextStyle(fontSize: 40),),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: (){
          debugPrint("Hiiiiiiiiiii $_num");
          plusplus();
        },
        child: Icon(
            Icons.add,color: Colors.white,
        ),
      ),
    );
  }

  void plusplus() {
   setState(() {
      _num++;
   });
  }
}