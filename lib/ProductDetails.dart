import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({Key? key}) : super(key: key);

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  String selectedImg="one";
  @override
  Widget build(BuildContext context) {
    var width= MediaQuery.of(context).size.width;
    var height= MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xfff0f0f0),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left:width*0.05 ,right:  width*0.05,top:height*0.01),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children:  [
                 GestureDetector(
                   onTap: (){
                     Navigator.pop(context);
                   },
                   child: const  CircleAvatar(
                    radius: 17,backgroundColor: Colors.white,
                      child: Center(child: Padding(
                        padding: EdgeInsets.only(left:6),
                        child: Icon(Icons.arrow_back_ios,color: Colors.black,size: 18,),
                      )),
                ),
                 ),
                Container(
                  width: width*0.17,
                  height: width*0.07,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Center(child: Text("4.5 ",style: TextStyle(fontSize: 14),)),
                      Icon(Icons.star,color: Colors.yellow,size: 20,)
                    ],
                  ),
                )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Image.asset(selectedImg=="one"?"lib/assets/Image_Popular_Product_1.png":selectedImg=="two"?"lib/assets/ps4_console_white_2.png":selectedImg=="three"?"lib/assets/ps4_console_white_3.png":"lib/assets/ps4_console_white_4.png",height: height*0.2,),
            ),
            Padding(
              padding:  EdgeInsets.only(left: width*0.12,right: width*0.12,top: width*0.1,bottom:width*0.07 ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    child: Container(
                      width: width*0.15,
                      height: width*0.15,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: selectedImg=="one"?Colors.deepOrangeAccent:Colors.white,
                        )
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(7),
                        child: Image.asset("lib/assets/Image_Popular_Product_1.png",width: width*0.01,height:width*0.01 ,),
                      ),
                    ),
                    onTap: (){
                      setState(() {
                        selectedImg="one";
                      });
                    },
                  ),
                  GestureDetector(
                    child: Container(
                      width: width*0.15,
                      height: width*0.15,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: selectedImg=="two"?Colors.deepOrangeAccent:Colors.white,
                          )
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(7),
                        child: Image.asset("lib/assets/Image_Popular_Product_1.png",width: width*0.01,height:width*0.01 ,),
                      ),
                    ),
                    onTap: (){
                      setState(() {
                        selectedImg="two";
                      });
                    },
                  ),
                  GestureDetector(
                    child: Container(
                      width: width*0.15,
                      height: width*0.15,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: selectedImg=="three"?Colors.deepOrangeAccent:Colors.white,
                          )
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(7),
                        child: Image.asset("lib/assets/Image_Popular_Product_1.png",width: width*0.01,height:width*0.01 ,),
                      ),
                    ),
                    onTap: (){
                      setState(() {
                        selectedImg="three";
                      });
                    },
                  ),
                  GestureDetector(
                    child: Container(
                      width: width*0.15,
                      height: width*0.15,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: selectedImg=="four"?Colors.deepOrangeAccent:Colors.white,
                          )
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(7),
                        child: Image.asset("lib/assets/Image_Popular_Product_1.png",width: width*0.01,height:width*0.01 ,),
                      ),
                    ),
                    onTap: (){
                      setState(() {
                        selectedImg="four";
                      });
                    },
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              decoration:const BoxDecoration(
                color:Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                )
                ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:  EdgeInsets.only(left:width*0.05,top: width*0.07),
                    child: Text("Wireless Controller for PS4",style: TextStyle(fontSize: 20,),),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(left:width*0.85),
                    child: Container(
                      height: height*0.05,
                      width: width*0.15,
                      decoration: BoxDecoration(
                        color: Colors.red[100],
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(15),
                          bottomLeft: Radius.circular(15),
                        )
                      ),
                      child: const Icon(Icons.favorite,color: Colors.red,),
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(left:width*0.05,right:width*0.15 ),
                    child: const Text("Wireless Controller for PS4 gives you what you want in your gaming from over precision control your games to sharing ... ",style: TextStyle(color: Colors.black54,fontSize: 16),textAlign: TextAlign.start,),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(left:width*0.05,top: width*0.01,right:width*0.15,bottom: width*0.08 ),
                    child: Row(
                      children: const [
                        Text("See More Details  ",style: TextStyle(color: Colors.deepOrangeAccent,fontSize: 16),),
                        Icon(Icons.arrow_forward_ios,color: Colors.deepOrangeAccent,size: 14,),
                      ],
                    ),
                  ),

                ],
              ),
              ),
            Container(
              width: double.infinity,
              height: height*0.12,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child:  Container(
                decoration: const BoxDecoration(
                  color: Color(0xfff0f0f0),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                ),
                  ),
                child: Padding(
                  padding:  EdgeInsets.only(left:width*0.03,right:width*0.03 ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:  [
                     const  CircleAvatar(
                        radius: 21,
                        backgroundColor:false? Colors.deepOrangeAccent:Color(0xfff0f0f0),
                        child: CircleAvatar(
                          radius: 20,
                          backgroundColor: Color(0xfff0f0f0),
                          child: CircleAvatar(
                            radius: 12,
                            backgroundColor: Color(0xfff6625e),
                          ),
                        ),
                      ),
                     const  CircleAvatar(
                        radius: 21,
                        backgroundColor:false? Colors.deepOrangeAccent:Color(0xfff0f0f0),
                        child: CircleAvatar(
                          radius: 20,
                          backgroundColor: Color(0xfff0f0f0),
                          child: CircleAvatar(
                            radius: 12,
                            backgroundColor: Color(0xff836db8),
                          ),
                        ),
                      ),
                     const CircleAvatar(
                        radius: 21,
                        backgroundColor:false? Colors.deepOrangeAccent:Color(0xfff0f0f0),
                        child: CircleAvatar(
                          radius: 20,
                          backgroundColor: Color(0xfff0f0f0),
                          child: CircleAvatar(
                            radius: 12,
                            backgroundColor: Color(0xffdecb9c),
                          ),
                        ),
                      ),
                     const CircleAvatar(
                        radius: 21,
                        backgroundColor: Colors.deepOrangeAccent,
                        child: CircleAvatar(
                          radius: 20,
                          backgroundColor: Color(0xfff0f0f0),
                          child: CircleAvatar(
                            radius: 12,
                            backgroundColor: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: width*0.1,
                      ),
                      FloatingActionButton(
                        onPressed: ()=>{},
                        backgroundColor: Colors.white,
                        elevation: 1,
                        child: Icon(FontAwesomeIcons.minus,color: Colors.deepOrangeAccent,size: 20,),

                      ),
                      SizedBox(
                        width: width*0.05,
                      ),
                      FloatingActionButton(
                        onPressed: ()=>{},
                        backgroundColor: Colors.white,
                        elevation: 1,
                        child: Icon(Icons.add,color: Colors.deepOrangeAccent,size: 25,),

                          )
                    ],
                  ),
                ),

              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color:Color(0xfff0f0f0),
                ),
                child:  Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                    color: Colors.white,
                  ),
                  child: Center(
                    child: Container(
                      width: width*0.7,
                      height: height*0.07,
                      decoration: BoxDecoration(
                        color: Colors.deepOrangeAccent,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: const Center(child:  Text("Add to Cart",style: TextStyle(color: Colors.white,fontSize: 20),)),
                    ),
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
