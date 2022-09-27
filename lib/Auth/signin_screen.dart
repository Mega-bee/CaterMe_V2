import 'package:caterme_v2/Auth/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../utils/Images/Images.dart';
import '../utils/style/colors.dart';

class SigninScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image(
                    image: AssetImage(ImageAsset.logo),
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.4,
                  ),
                ),
                Container(
                    width: double.infinity,
                    height: 70,
                    padding: EdgeInsets.all(10.0),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Email',
                        prefixIcon: Icon(Icons.email_outlined, size: 20, color: Colors.grey),
                        hintStyle: TextStyle(color: Colors.grey),
                        filled: true,
                        fillColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12.0)),
                          borderSide: BorderSide(color: Colors.white, width: 0.5),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(color: Colors.black12, width: 2),
                        ),
                      ),)
                ),
                Container(
                    width: double.infinity,
                    height: 70,
                    padding: EdgeInsets.all(10.0),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Password',
                        prefixIcon: Icon(Icons.lock_outline_rounded, size: 20, color: Colors.grey),
                        hintStyle: TextStyle(color: Colors.grey),
                        filled: true,
                        fillColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12.0)),
                          borderSide: BorderSide(color: Colors.white, width: 0.5),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(color: Colors.black12, width: 2),
                        ),
                      ),)
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 45),
                  child: Row(
                    children: [
                      Spacer(),
                      TextButton(
                        child: Text(
                          'Forgot password?',
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey
                          ),
                        ),
                        onPressed: (){},
                      ),
                    ],
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(left: 14, top: 50),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(220, 45),
                        maximumSize: const Size(220, 50),
                        primary: PrimaryColor,
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(20.0),
                        ),
                      ),
                      onPressed: (){}, child: Text('Log In'),
                    )
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(
                    child: Text('Create a new account',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                      fontWeight: FontWeight.w400
                    ),
                      ),
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignupScreen()),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
