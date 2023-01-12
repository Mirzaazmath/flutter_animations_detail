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
  bool _first=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        /*
        This code fades between two representations of the Flutter widget. It depends on a boolean field _first; when _first is true, the first widget is shown, otherwise the second widget is shown. When the field changes state, the AnimatedCrossFade widget cross-fades between the two forms of the widget over three seconds.
        * */
        child: AnimatedCrossFade(

          duration: const Duration(seconds: 3),
          firstChild: Container(height: 300,width: 300,decoration:const  BoxDecoration(image: DecorationImage(image: AssetImage("assets/image.jpeg"),fit: BoxFit.fill)),),
          secondChild:Container(height: 300,width: 300,decoration :const BoxDecoration(image: DecorationImage(image: AssetImage("assets/image2.jpeg"),fit: BoxFit.fill)),),
          crossFadeState: _first ? CrossFadeState.showFirst : CrossFadeState.showSecond,
        )),
      floatingActionButton: FloatingActionButton(onPressed: () {
        // here we are changing the state as well as the value
        setState(() {
          if(_first){
            _first=false;
          }else{
            _first=true;

          }

        });

      },
        child: const Icon(Icons.play_circle),

      ),
    );
  }
}
