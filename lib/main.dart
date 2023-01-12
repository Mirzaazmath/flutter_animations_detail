import 'package:flutter/material.dart';
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Here we are creating the bool to use animation
  bool isalign=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Container(
        margin:const  EdgeInsets.all(30),
        height: 400,
      width: double.infinity,
      color: Colors.blue,
        // This is animated align used to align widget from one place to another
        child:  AnimatedAlign(
          // here we are defining the duration for how long it take perform animation
          duration:  const  Duration(seconds: 1),
          // here we are using curve there are different type of curve
          curve: Curves.ease,
          // whenever the the value change it shift its alignment  with animation
          alignment:isalign?Alignment.topRight: Alignment.bottomLeft,
          // This is the widget that is Alignment from one place to another
          child:const  CircleAvatar(
            backgroundColor: Colors.white,

          ),
        ),
      ),),
      floatingActionButton: FloatingActionButton(onPressed: () {
        // here we are changing the state as well as the value
        setState(() {
          if(isalign){
            isalign=false;
          }else{
            isalign=true;

          }

        });

      },
        child: const Icon(Icons.play_circle),

      ),
    );
  }
}
