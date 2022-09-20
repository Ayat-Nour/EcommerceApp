
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

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
  void passwordNotMatch(BuildContext context){
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text("Invalid Password"),
        content: const Text("The password did not match!"),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(ctx).pop();
              passwordNode.requestFocus();
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
  final _emailController = TextEditingController();
  final _passController1 = TextEditingController();
  final _passController2 = TextEditingController();
  late  FocusNode emailNode ;
  late  FocusNode passwordNode ;
  void initState() {
    super.initState();
    emailNode = FocusNode();
    passwordNode = FocusNode();
  }
  @override
  Widget build(BuildContext context) {
    var width= MediaQuery.of(context).size.width;
    var height= MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back,color: Colors.black,)),
      ),

      body: Container(
        width: width,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:  [
            const Padding(
              padding:  EdgeInsets.all(0),
              child: Text("Register Account",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: EdgeInsets.only(right:width*0.2,left: width*0.2,bottom: 10),
              child: const Text("complete your details or sign up with social media",style: TextStyle(color: Colors.black45,fontSize: 15,),
                textAlign: TextAlign.center,),
            ),
            Padding(
              padding:  EdgeInsets.all(width*0.05),
              child: FocusScope(
                onFocusChange: (bool x){
                  if(!x){
                    setState(() {
                      _emailController.value.text.contains("@")&&_emailController.value.text.contains(".")?"": _emailController.value.text==""?"":emailError(context);
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
                      _emailController.value.text.contains("@")&&_emailController.value.text.contains(".")?"": _emailController.value.text==""?"":emailError(context);
                    },);
                  },
                ),
              ),
            ),
            Padding(
              padding:  EdgeInsets.all(width*0.05),
              child: TextField(
                controller: _passController1,
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
              padding:  EdgeInsets.all(width*0.05),
              child: FocusScope(
                onFocusChange: (bool x){
                  if(!x){
                    setState(() {
                      _passController1.value.text==_passController2.value.text || _passController2.value.text==""?"":passwordNotMatch(context);
                    });
                  }
                },
                child: TextField(
                  focusNode: passwordNode,
                  controller: _passController2,
                  obscureText: true,
                  decoration: InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    label: const Text("Confirm Password"),
                    alignLabelWithHint: true,
                    hintText: "Re-enter your Password",
                    suffixIcon: const Padding(
                      padding:  EdgeInsets.all(15),
                      child: Icon(Icons.lock_outline),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50)
                    ),
                  ),
                  onEditingComplete: (){
                    setState(() {
                      _passController1.value.text==_passController2.value.text || _passController2.value.text==""?"":passwordNotMatch(context);
                    });
                  },
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, "/completeProfile",);
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
              padding: EdgeInsets.only(right:width*0.17,left: width*0.17,top: height*0.05),
              child: const Text("By completing this process you agree with our terms and conditions",style: TextStyle(color: Colors.black45),
                textAlign: TextAlign.center,),
            )

          ]
        ),
      ),

    );
  }
}
