import 'package:flutter/material.dart';

class LoginSuccess extends StatefulWidget {
  const LoginSuccess({Key? key}) : super(key: key);

  @override
  State<LoginSuccess> createState() => _LoginSuccessState();
}

class _LoginSuccessState extends State<LoginSuccess> {
  @override
  Widget build(BuildContext context) {
    var width= MediaQuery.of(context).size.width;
    var height= MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text("Login Success",style: TextStyle(color: Colors.black12,fontSize: 30),),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: height*0.05,
            ),
            SizedBox(
              width: width,
              height: height*0.4,
              child: Image.asset("lib/assets/success.png"),
            ),
           SizedBox(
             width: width,
             height: height*0.3,
             child: const Center(child: Text("Login Success", style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)),
           ),
            GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Container(
                width: width*0.5,
                height: height*0.05,
                decoration: BoxDecoration(
                  color: Colors.deepOrangeAccent,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: const Center(
                  child: Text("Back to Home" , style: TextStyle(color: Colors.white,fontSize: 20),),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
