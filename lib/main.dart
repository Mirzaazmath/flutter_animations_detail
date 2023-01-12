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
  bool _update=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        /*

        * */
        child:AnimatedDefaultTextStyle(
          style: TextStyle(
            fontSize:_update?30: 100,
              fontWeight:_update?FontWeight.w300: FontWeight.bold,
              color:_update?Colors.red :Colors.blue),
        duration: Duration(seconds: 2),
        child: Text("Flutter "),) ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        // here we are changing the state as well as the value
        setState(() {
          if(_update){
            _update=false;
          }else{
            _update=true;

          }

        });

      },
        child: const Icon(Icons.play_circle),

      ),
    );
  }
}
