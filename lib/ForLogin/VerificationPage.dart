import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class VerificationPage extends StatefulWidget {
  const VerificationPage({Key? key}) : super(key: key);

  @override
  State<VerificationPage> createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {

  late  FocusNode node1 ;
  late  FocusNode node2 ;
  late  FocusNode node3 ;
  late  FocusNode node4 ;
  final _node1Controller = TextEditingController();
  final _node2Controller = TextEditingController();
  final _node3Controller = TextEditingController();
  final _node4Controller = TextEditingController();


  void initState() {
    node1 = FocusNode();
    node2 = FocusNode();
    node3 = FocusNode();
    node4 = FocusNode();
    super.initState();
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
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding:EdgeInsets.only(top:width*0.13,),
              child: const Text("OTP Verification",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
            ),
            Padding(
              padding: EdgeInsets.only(left:width*0.1,right: width*0.1),
              child: const Text("We sent your code to +009627977*****12",
                style: TextStyle(fontSize: 15,color: Colors.black45),textAlign: TextAlign.center,),
            ),
            Padding(
              padding: EdgeInsets.only(left:width*0.1,right: width*0.1,bottom: width*0.05),
              child: const Text.rich(
                TextSpan(
                    text: "this code will expire in",
                    style: TextStyle(color: Colors.black45,fontSize: 15,),
                    children: <InlineSpan>[
                      TextSpan(
                        text: ' 00:15',
                        style: TextStyle(color: Colors.deepOrange,fontSize: 15),
                      )]
                ),
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(top:width*0.15,bottom: width*0.15,left: width*0.1,right: width*0.1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: width*0.15,
                    height: width*0.15,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 2, // changes position of shadow
                        ),
                      ],
                    ),
                    child:  TextField(
                      controller: _node1Controller,
                      focusNode: node1,
                      textAlign: TextAlign.center,
                      maxLength: 1,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        counterText: "",
                      ),
                      onChanged: (String x){
                        if(x.length==1) node2.requestFocus();
                      },

                    ),
                  ),
                  Container(
                    width: width*0.15,
                    height: width*0.15,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 2, // changes position of shadow
                        ),
                      ],
                    ),
                    child:  TextField(
                      focusNode: node2,
                      controller: _node2Controller,
                      textAlign: TextAlign.center,
                      maxLength: 1,
                      decoration:const InputDecoration(
                        border: InputBorder.none,
                        counterText: "",
                      ),
                      onChanged: (String x){
                        if(x.length==1) node3.requestFocus();
                      },

                    ),
                  ),
                  Container(
                    width: width*0.15,
                    height: width*0.15,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 2, // changes position of shadow
                        ),
                      ],
                    ),
                    child:  TextField(
                      focusNode: node3,
                      controller: _node3Controller,
                      textAlign: TextAlign.center,
                      maxLength: 1,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        counterText: "",
                      ),
                      onChanged: (String x){
                        if(x.length==1) node4.requestFocus();
                      },

                    ),
                  ),
                  Container(
                    width: width*0.15,
                    height: width*0.15,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 2, // changes position of shadow
                        ),
                      ],
                    ),
                    child:  TextField(
                      focusNode: node4,
                      textAlign: TextAlign.center,
                      maxLength: 1,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        counterText: "",
                      ),

                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, "/loginSuccess",);
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
              padding:EdgeInsets.only(left:width*0.1,right: width*0.1,top: height*0.1),
              child: Text("Resnend OTP code",style: TextStyle(color: Colors.black45,fontSize: 15,decoration: TextDecoration.underline,)),
            )
          ],
        ),
      ),
    );
  }
}
