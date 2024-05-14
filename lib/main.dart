import 'package:flutter/material.dart';
import 'package:clippy_flutter/chevron.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Container(
              height: double.infinity,
              width: double.infinity,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    MyContainer(),
                  ])
          ),
          )

    );
  }
}

class MyContainer extends StatelessWidget {
  const MyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
//         color: Colors.grey,
      height: 200,
      width: 350,
      child: ClipPath(
          child: Stack(
              children: <Widget>[
                Center(
                  child:Container(
                    height: 180,
                    width: 330,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),
                ),

                Positioned(
                  top:0,
                  right:40,
                  child:Container(
                    height: 70,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.rectangle,
                    ),
                  ),
                ),

                Positioned(
                  top:25,
                  right:50,
                  child:const Text("Top 10",style: TextStyle(color:Colors.white,fontSize:12),),//Text

                )
              ],//children

          ) ,
      ),

    );
  }
  @override
  Path getClip(Size size) {

    Path path = Path()
      ..lineTo(0, size.height) // Add line p1p2
      ..lineTo(size.width*0.2, size.height)
      ..lineTo(size.width*0.3,size.height*0.5)
      ..lineTo(size.width*0.2,0)// Add line p2p3
      ..close();

    return path;
  }
}



// @override
// Widget build(BuildContext context) {
//   return Scaffold(
//     backgroundColor: Colors.grey,
//     body: Center(
//       child: ClipPath(
//         // clipper: MyCustomClipper(),
//         child: Container(
//           width: 200,
//           height: 200,
//           color: Colors.pink,
//         ),
//       ),
//     ),
//   );
// }
//
// @override
// Path getClip(Size size) {
//
//   Path path = Path()
//     ..lineTo(0, size.height) // Add line p1p2
//     ..lineTo(size.width, size.height) // Add line p2p3
//     ..close();
//
//   return path;
// }

