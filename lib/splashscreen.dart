import 'package:celebrare/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({super.key});

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(Duration(seconds: 2),(){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (index)=>Home_screen()));
    });
  }
  @override
  void dispose() {
    super.dispose();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,overlays: SystemUiOverlay.values);
  }


  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
             children: [
            Image(
              image: AssetImage('assets/celebrare1.jpg'),
            ),
            //Text('Celebrare',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)
          ])),
    ));
  }
}
