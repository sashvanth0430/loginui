import 'package:flutter/material.dart';
import 'package:loginui/colors.dart';
import 'constants.dart';

class LoginScreen extends StatelessWidget {

  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return  Scaffold(
      backgroundColor: Colors.white,
      body:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
       children: <Widget>[
         Stack(
          children: [
            Image.asset(
              bgImage,
              height: h * 0.42,
              width: w,
              fit: BoxFit.cover,
            ),
            Container(
              height: h * 0.42,
              width: w,
              // color: Colors.red.withOpacity(0.5),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.white
                  ]
                ),
              ),
            ),
          ],
         ),


         const Center(
           child: Text(
             appName,
             style: TextStyle(
               letterSpacing: 1.5,
               fontSize: 28.0,
               fontWeight: FontWeight.w700,
               fontFamily: 'Poppins',
               color: Colors.redAccent,
             ),
           ),
         ),

         const Center(
           child: Text(
             slogan,
             style: TextStyle(
               fontSize: 15.0,
               fontWeight: FontWeight.w300,
               fontFamily: 'Poppins',
               color: Colors.orange
             ),
           ),
         ),

         Padding(
           padding: const EdgeInsets.fromLTRB(8.0, 1, 0, 8),
           child: Container(
             child: const Text(
                 '  $loginString  ',
               style: TextStyle(fontFamily: 'Poppins',fontSize: 20.0,fontWeight: FontWeight.bold),
             ),
             decoration: BoxDecoration(
               gradient: LinearGradient(colors: [primaryColor.withOpacity(0.33),Colors.transparent]),
               border: const Border(left: BorderSide(color: primaryColor,width: 5))
             ),

           ),
         ),
         const TextField(
           decoration: InputDecoration(
             prefixIcon: Icon(Icons.email_outlined,color: Colors.redAccent,)
           ),
         ),
       ],
      ),
    );
  }
}
