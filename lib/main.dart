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
  bool isupdate=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        // Here we are using the Animated Container so we can animate any property of container
        // such as height, width, alignment, gradient,radius,color etc
        child: AnimatedContainer(

        margin:const  EdgeInsets.all(30),
        height: isupdate ? 200:400,
      width:isupdate?200: 400,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(isupdate?50:5git ),
        gradient: LinearGradient(
          colors:isupdate?[Colors.pinkAccent,Colors.purple]:
           [Colors.blue,Colors.tealAccent]
        )
      ),

        duration:const  Duration(seconds: 2),
        alignment:isupdate?Alignment.center: Alignment.topRight,
        child:const CircleAvatar(
          backgroundColor: Colors.white,
        )



      ),),
      floatingActionButton: FloatingActionButton(onPressed: () {
        // here we are changing the state as well as the value
        setState(() {
          if(isupdate){
            isupdate=false;
          }else{
            isupdate=true;

          }

        });

      },
        child: const Icon(Icons.play_circle),

      ),
    );
  }
}
