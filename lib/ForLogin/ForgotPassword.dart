import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {

  final _emailController = TextEditingController();
  late  FocusNode emailNode ;

  void emailError(BuildContext context){
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text("Invalid Email Address"),
        content: const Text("Please enter a valid email address in the form of \nexample@domin.jo"),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(ctx).pop();
              emailNode.requestFocus();
            },
            child: Container(
              color: Colors.deepOrangeAccent,
              padding: const EdgeInsets.all(14),
              child: const Text("ok",style: TextStyle(color: Colors.white),),
            ),
          ),
        ],
      ),
    );
  }
  void initState() {
    super.initState();
    emailNode = FocusNode();
  }


  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back ,color: Colors.black,)),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding:EdgeInsets.only(top:width*0.13,),
              child: const Text("Forgot Password",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
            ),
            Padding(
              padding: EdgeInsets.only(left:width*0.1,right: width*0.1,bottom: width*0.05),
              child: const Text("Please enter your email and we will send you a link to return your account",
                style: TextStyle(fontSize: 15,color: Colors.black45),textAlign: TextAlign.center,),
            ),
            Padding(
              padding:  EdgeInsets.only(left:width*0.05,right: width*0.05,top: height*0.1),
              child: TextField(
                focusNode: emailNode,
                controller: _emailController,
                decoration: InputDecoration(
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  label: const Text("Email"),
                  alignLabelWithHint: true,
                  hintText: "Enter your Email",
                  suffixIcon: const Padding(
                    padding:  EdgeInsets.all(15),
                    child: Icon(Icons.email),
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50)
                  ),
                ),
                onEditingComplete: (){
                  setState(() {
                    _emailController.value.text.contains("@")&&_emailController.value.text.contains(".")||_emailController.value.text==""?"": emailError(context);
                  },);
                },
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, "/loginSuccess",);
              },
              child: Padding(
                padding:  EdgeInsets.only(left:width*0.05,right: width*0.05,top: height*0.1),
                child: Container(
                  width: width*0.9,
                  height: height*0.06,
                  decoration: BoxDecoration(
                    color: Colors.deepOrangeAccent,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: const Center(child:  Text("Continue",style: TextStyle(color: Colors.white,fontSize: 20),)),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left:width*0.1,right: width*0.1,top: height*0.1),
              child: GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, "/registerPage");
                },
                child: const Text.rich(
                  TextSpan(
                      text: "Don't have an account?",
                      style: TextStyle(color: Colors.black45,fontSize: 15),
                      children: <InlineSpan>[
                        TextSpan(
                          text: ' Sign Up',
                          style: TextStyle(color: Colors.deepOrange,fontSize: 15),
                        )]
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
