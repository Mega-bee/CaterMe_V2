import 'package:caterme_v2/Auth/signin_screen.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/style/colors.dart';

class SignupScreen extends StatefulWidget {

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {

  final List<String> items = [
    'Male',
    'Female'
  ];
  String? selectedValue;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Container(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
                Container(
                    width: MediaQuery.of(context).size.width * 1,
                    height: 60,

                    child: TextField(
                      decoration: InputDecoration(
                        hintText: '       Name',
                        hintStyle: TextStyle(color: Colors.grey),
                        filled: true,
                        fillColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12.0)),
                          borderSide: BorderSide(color: Colors.black12, width: 0.5),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(color: Colors.grey, width: 2),
                        ),
                      ),)
                ),
                SizedBox(height: 13,),
                Container(
                    width: MediaQuery.of(context).size.width * 1,
                    height: 60,

                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email_outlined,size: 20,),
                        hintText: 'Email',
                        hintStyle: TextStyle(color: Colors.grey),
                        filled: true,
                        fillColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12.0)),
                          borderSide: BorderSide(color: Colors.black12, width: 0.5),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(color: Colors.grey, width: 2),
                        ),
                      ),)
                ),
                SizedBox(height: 13,),
                Container(
                    width: MediaQuery.of(context).size.width * 1,
                    height: 60,

                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock_outline,size: 20,),
                        hintText: 'Password',
                        hintStyle: TextStyle(color: Colors.grey),
                        filled: true,
                        fillColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12.0)),
                          borderSide: BorderSide(color: Colors.black12, width: 0.5),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(color: Colors.grey, width: 2),
                        ),
                      ),)
                ),
                SizedBox(height: 13,),
                Container(
                    width: MediaQuery.of(context).size.width * 1,
                    height: 60,

                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock_outline,size: 20,),
                        hintText: 'Confirm Password',
                        hintStyle: TextStyle(color: Colors.grey),
                        filled: true,
                        fillColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12.0)),
                          borderSide: BorderSide(color: Colors.black12, width: 0.5),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(color: Colors.grey, width: 2),
                        ),
                      ),)
                ),
                SizedBox(height: 13,),
                Container(
                    width: MediaQuery.of(context).size.width * 1,
                    height: 60,

                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.phone,size: 20,),
                        hintText: 'Phone Number',
                        hintStyle: TextStyle(color: Colors.grey),
                        filled: true,
                        fillColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12.0)),
                          borderSide: BorderSide(color: Colors.black12, width: 0.5),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(color: Colors.grey, width: 2),
                        ),
                      ),)
                ),
                SizedBox(height: 13,),
                Container(
                    width: MediaQuery.of(context).size.width * 1,
                    height: 60,

                    child: TextField(
                      decoration: InputDecoration(
                        // prefixIcon: Icon(Icons.phone,size: 20,),
                        suffixIcon: Icon(Icons.keyboard_arrow_down_outlined,size: 20,),
                        hintText: 'Gender',
                        hintStyle: TextStyle(color: Colors.grey),
                        filled: true,
                        fillColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12.0)),
                          borderSide: BorderSide(color: Colors.black12, width: 0.5),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(color: Colors.grey, width: 2),
                        ),
                      ),)
                ),
                SizedBox(height: 13,),
                Container(
                    width: MediaQuery.of(context).size.width * 1,
                    height: 60,

                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Birthdate',
                        hintStyle: TextStyle(color: Colors.grey),
                        filled: true,
                        fillColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12.0)),
                          borderSide: BorderSide(color: Colors.black12, width: 0.5),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(color: Colors.grey, width: 2),
                        ),
                      ),)
                ),
                Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: SizedBox(
                      height: 40,
                      width:MediaQuery.of(context).size.width * 0.7,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(220, 45),
                          maximumSize: const Size(220, 50),
                          primary: PrimaryColor,
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(10.0),
                          ),
                        ),
                        onPressed: (){}, child: Text('Sign up', style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                      ),
                    )
                ),
                SizedBox(height: 8,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [


                    Text('Already Have An Account?', style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                        fontWeight: FontWeight.w300
                    ),),
                    TextButton(
                      child: Text(
                        'Login',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w600
                        ),
                      ),
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SigninScreen()),
                        );
                      },
                    ),

                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
