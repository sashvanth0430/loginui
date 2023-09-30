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
      body:  SingleChildScrollView(
        child: Column(
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
               decoration: BoxDecoration(
                 gradient: LinearGradient(colors: [primaryColor.withOpacity(0.33),primaryColor.withOpacity(0.1)]),
                 border: const Border(left: BorderSide(color: primaryColor,width: 5))
               ),
               child: const Text(
                   '  $loginString  ',
                 style: TextStyle(color: Colors.white, fontFamily: 'Poppins',fontSize: 20.0,fontWeight: FontWeight.bold),
               ),

             ),
           ),

           const Padding(
             padding: EdgeInsets.symmetric(horizontal: 18,vertical: 5),
             child: TextField(
               style: TextStyle(fontSize: 24),
               cursorColor: Colors.redAccent,
               decoration: InputDecoration(
                 focusedBorder: UnderlineInputBorder(
                   borderSide: BorderSide(color: primaryColor),
                 ),
                 prefixIcon: Icon(
                     Icons.email_outlined,
                     color: Colors.redAccent
                 ),
                 labelText: 'Email Address',
                 labelStyle: TextStyle( color: primaryColor,fontFamily: 'Poppins', fontSize: 18,),

             ),
             ),
           ),

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 18,vertical: 5),
            child: TextField(
              obscureText: true,
              style: TextStyle(fontSize: 24),
              cursorColor: Colors.redAccent,
              decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: primaryColor),
                ),
                prefixIcon: Icon(
                    Icons.lock_outline_rounded,
                    color: Colors.redAccent
                ),
                labelText: 'Password',
                labelStyle: TextStyle( color: primaryColor,fontFamily: 'Poppins', fontSize: 18,),

              ),
            ),
          ),
        
        Align(
          alignment: Alignment.centerRight,
            child: TextButton(
                onPressed: (){},
                child: const Text(forgettext, style: TextStyle(fontFamily: 'Poppins',color: Colors.black),)
            ),
        ),
           Center(
             child: SizedBox(
               height: h * 0.08,
               width: w-18,
               child: TextButton(
                   onPressed: (){},
                   style: TextButton.styleFrom(
                   backgroundColor: primaryColor.withOpacity(0.7),
                     shape: const RoundedRectangleBorder(
                         borderRadius: BorderRadius.all(Radius.circular(15))
                     )
               ),
                   
                   child: const Text(LoginButton, style: TextStyle(fontFamily: 'Poppins',color: Colors.white,fontSize:24,fontWeight: FontWeight.w500,letterSpacing: 1,wordSpacing: 1),)
               ),
             ),
           ),


          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Dont' have an account?",
              style: TextStyle(fontFamily: 'Poppins',),
              ),
              TextButton(onPressed: (){}, child: const Text('Create an Account',style: TextStyle(fontFamily: 'Poppins',color: primaryColor,fontSize: 16),))
            ],
          )
     ],
        ),
      ),
    );
  }
}
