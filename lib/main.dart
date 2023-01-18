import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homepage(),
    );
  }
}
class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> with SingleTickerProviderStateMixin {
  late AnimationController _controller=AnimationController(vsync: this,duration: const Duration(seconds: 4),lowerBound: 0.3)..repeat();

List<double>radiuslist=[200.0,250.0,300,0,350.0];


  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      // backgroundColor: Colors.black,
      body: Center(
        child: AnimatedBuilder(


          animation: _controller,
          builder: (BuildContext context, Widget? child) {

            return  Stack(
              alignment: Alignment.center,
              children: radiuslist.map((radius)=>
                  Container(
                    height: radius*_controller.value,
                    width: radius*_controller.value,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                     // gradient: LinearGradient(colors: [Colors.pink.withOpacity(1.0-_controller.value+0.2),Colors.indigo.withOpacity(1.0-_controller.value+0.2)])

                       color: Colors.blue.withOpacity(1.0-_controller.value+0.2),

                    ),
                  )

              ).toList(),
            );

          },

        ),
      ),
    );
  }
}

