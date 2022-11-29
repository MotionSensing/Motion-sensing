import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  List<Widget> pageChildren(double width) {
    return <Widget>[
      Container(
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Motion \nSensing",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 40.0,
              color: Colors.white
            ),),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Text("We use IMU measurements to analyse how you are moving in real time!",style: TextStyle(
                fontSize: 16.0,
                color: Colors.white
              ),),
            ),
            MaterialButton(
              color: Color.fromARGB(255, 12, 203, 250),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0)) 
              ),
              onPressed: (){},
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
                child: Text(
                  "Learn More",
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255)
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 40.0),
        child: Image.asset(
          "assets/images/iot-gif.gif",
          width: width,
        ),
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: pageChildren(constraints.biggest.width/2),
          );
        } else {
          return Column(
            children: pageChildren(constraints.biggest.width),
          );
        }
      },
    );
  }
}
