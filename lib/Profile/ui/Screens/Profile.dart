import 'package:caterme_v2/utils/style/colors.dart';
import 'package:flutter/material.dart';

class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  State<profile> createState() => _profile();
}

class _profile extends State<profile> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:BackgroundColor,

      appBar: AppBar(
        backgroundColor:PrimaryColor,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back,color: Colors.white,),),
        title: Text(
            'Profile',style: TextStyle(color: Colors.white),
        ),
      ),
      body:
      Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.white),


                height: 400.0,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsetsDirectional.only(
                    start: 12.0,
                    end: 12.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        height: 15.0,
                      ),
                      Card(
                        elevation: 3,
                        child: TextField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            labelText: 'First name',
                            labelStyle:TextStyle(color: Colors.black),
                            fillColor: Colors.white,
                            filled: true,

                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Card(
                        elevation: 3,
                        child: TextField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            labelText: 'Last name',
                            labelStyle:TextStyle(color: Colors.black),
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Card(
                        elevation: 3,
                        child: TextField(

                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            labelText: 'Gender',
                            labelStyle:TextStyle(color: Colors.black),
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            suffixIcon: IconButton(onPressed: () {
                              showModalBottomSheet(context: context,builder:(context)=>Container(
                                height: 200.0,
                                width: double.infinity,
                                color: Colors.white,
                              )
                              );


                            }, icon: Icon(Icons.arrow_downward),),


                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Card(
                        elevation: 3,
                        child: TextField(
                          keyboardType: TextInputType.datetime,
                          decoration: InputDecoration(
                            labelText: 'Date Of birth',
                            labelStyle:TextStyle(color: Colors.black),
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.only(
                          bottom: 15.0,
                        ),
                        child: Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
                          height: 50,
                          width: MediaQuery.of(context).size.width * 0.95,
                          child: ElevatedButton(

                            style: ElevatedButton.styleFrom(
                              primary: PrimaryColor,
                              elevation: 2,
                              // minimumSize: const Size.fromHeight(50), // NEW
                            ),
                            onPressed: () {},
                            child: const Text(
                              'Save',style: TextStyle(color: Colors.white,fontSize: 25),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.white),

                height: 160.0,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsetsDirectional.only(
                    start: 12.0,
                    top: 10.0,
                    end: 12.0,
                    bottom: 10.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: 'Email address',
                          labelStyle:TextStyle(color: Colors.grey),
                          hintText: 'Example@gmail.com',
                          hintStyle: TextStyle(fontWeight: FontWeight.w900),
                          fillColor: Colors.white,
                          filled: true,
                          // border: OutlineInputBorder(
                          //   borderRadius: BorderRadius.circular(5),
                          //   borderSide: BorderSide(color: Colors.grey),
                          // ),
                          // focusedBorder: OutlineInputBorder(
                          //   borderSide: BorderSide(color: Colors.grey),
                          // ),
                        ),
                      ),

                      TextField(
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          hintText: '+96100000000',
                          hintStyle: TextStyle(fontWeight: FontWeight.w900),
                          labelText: 'Phone number',
                          labelStyle:TextStyle(color: Colors.grey),
                          fillColor: Colors.white,
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          suffixIcon: Icon(Icons.edit, color: PrimaryColor,),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.white),

                width: double.infinity,
                height: 50.0,
                child: Padding(
                  padding: const EdgeInsetsDirectional.only(
                    start: 12.0,
                    end: 12.0,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,

                    children: [
                      Icon(Icons.lock_outline),

                      TextButton(onPressed: (){}, child: Text(
                        "Change password",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.white),

                width: double.infinity,
                height: 50.0,
                child: Padding(
                  padding: const EdgeInsetsDirectional.only(
                    start: 12.0,
                    end: 12.0,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.delete_outline, color: Colors.red,),
                      TextButton(onPressed: (){}, child: Text(
                        "Delete my account",
                        style: TextStyle(
                          color: Colors.red,
                        ),
                      ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

    );



  }
}