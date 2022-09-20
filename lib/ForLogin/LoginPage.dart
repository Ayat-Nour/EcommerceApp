import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

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
  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }
  void initState() {
    super.initState();
    emailNode = FocusNode();
  }

  bool isCheck = false;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        //leading: const Icon(Icons.arrow_back ,color: Colors.black,),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding:EdgeInsets.only(top:height*0.01,),
              child: const Text("Welcome Back",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
            ),
            Padding(
              padding: EdgeInsets.only(left:width*0.1,right: width*0.1,bottom: width*0.05),
              child: const Text("Sign in with your email and password or continue with social media",
                style: TextStyle(fontSize: 15,color: Colors.black45),textAlign: TextAlign.center,),
            ),
            Padding(
              padding:  EdgeInsets.only(left:width*0.05,right: width*0.05,top: width*0.05),
              child: FocusScope(
                canRequestFocus: true,
                onFocusChange: (bool x){
                  if(!x){
                    setState(() {
                      _emailController.value.text.contains("@")&&_emailController.value.text.contains(".")||_emailController.value.text==""?"": emailError(context);
                    },);
                  }},
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
            ),
            Padding(
              padding:  EdgeInsets.only(left:width*0.05,right: width*0.05,top: width*0.08),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  label: const Text("Password"),
                  alignLabelWithHint: true,
                  hintText: "Enter your Password",
                  suffixIcon: const Padding(
                    padding:  EdgeInsets.all(15),
                    child: Icon(Icons.lock_outline),
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50)
                  ),
                ),
              ),
            ),
            Padding(
              padding:EdgeInsets.only(left:width*0.05,right: width*0.05,top: width*0.02,bottom: width*0.02),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Checkbox(
                      checkColor: Colors.white,
                      value:isCheck,
                    onChanged:(bool? x){
                       setState(() {
                         isCheck=x!;
                       });
                    }
                  ),
                 const Text("Remember me", style: TextStyle(color: Colors.black45,fontSize: 15),),
                  SizedBox(
                    width: width*0.17,
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, "/forgotPassword");
                    }
                    ,
                    child:const  Text("forgot password", style: TextStyle(color: Colors.black45,fontSize: 15,decoration: TextDecoration.underline,),),
                  ),
                ],

              ),
            ),
            GestureDetector(
              onTap: (){
              Navigator.pushNamed(context, "/HomePage");
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
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
              padding:  EdgeInsets.only(left:width*0.29,right:width*0.29,top: height*0.05),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  CircleAvatar(
                      backgroundColor: Color.fromRGBO(238, 238, 238,0.6),
                      radius: 20,
                      child: Center(child: Icon(FontAwesomeIcons.google, size: 20,color: Colors.green,))),
                  CircleAvatar(
                      backgroundColor: Color.fromRGBO(238, 238, 238,0.6),
                      radius: 20,
                      child: Center(child: Icon(FontAwesomeIcons.facebookF, size: 20,color: Colors.deepPurple,))),
                  CircleAvatar(
                      backgroundColor: Color.fromRGBO(238, 238, 238,0.6),
                      radius: 20,
                      child: Center(child: Icon(FontAwesomeIcons.twitter, size: 20,color: Colors.blue,))),

                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left:width*0.1,right: width*0.1,top: height*0.05),
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
                        )
                      ]
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
