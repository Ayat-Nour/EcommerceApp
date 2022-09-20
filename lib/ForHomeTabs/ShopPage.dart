import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({Key? key}) : super(key: key);

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  List<String> specialHeading = [
    "Smartphone",
    "Fashion"
  ];
  List<String> specialDetails = [
    "18 Brands",
    "24 Brands"
  ];
  List<String> specialImgs = [
    "lib/assets/Image_Banner_2.png",
    "lib/assets/Image_Banner_3.png"
  ];

  List<String> popularImgs = [
    "lib/assets/Image_Popular_Product_1.png",
    "lib/assets/Image_Popular_Product_2.png",
    "lib/assets/Image_Popular_Product_3.png",
  ];
  List<String> popularName = [
    "Wireless Controller for PS4",
    "Nike Sport White-Men Pant",
    "Bicycle Protection Helmet  "
  ];
  List<String> popularPrice = [
    "\$65.99",
    "\$50.99",
    "\$36.99",
  ];

  @override
  Widget build(BuildContext context) {
    var width= MediaQuery.of(context).size.width;
    var height= MediaQuery.of(context).size.height;
    return SafeArea(
      child: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.only(left:width*0.05 ,right:  width*0.05,top:height*0.01,bottom:height*0.01),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children:  [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: width*0.6,
                    height: height*0.07,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Search item",
                        prefixIcon: const Icon(Icons.search,size: 30,),
                        prefixIconColor: Colors.black54,
                        filled: true,
                        fillColor: Color(0xfff0f0f0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide.none,
                        ),

                      ),
                    ),
                  ),
                   const CircleAvatar(
                    radius: 25,
                    backgroundColor: Color(0xfff0f0f0),
                    child: Icon(Icons.shopping_cart_outlined,color: Colors.black54,size: 30,),
                  ),
                  const CircleAvatar(
                    radius: 25,
                    backgroundColor: Color(0xfff0f0f0),
                    child: Icon(Icons.notifications_none,color: Colors.black54,size: 30),
                  ),
                ],
              ),
              Padding(
                padding:  EdgeInsets.only(top:height*0.04),
                child: Container(
                  height: height*0.13,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xff4b3298),
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                         Text("A Summer Surprise",style: TextStyle(color: Colors.white,fontSize: 15),),
                         Text("Cashback 20%",style: TextStyle(color: Colors.white,fontSize: 25),),
                      ],
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding:  EdgeInsets.only(top:height*0.04),
                    child: Column(
                      children: [
                        Container(
                          width: width*0.15,
                          height: width*0.15,
                          decoration: BoxDecoration(
                            color: Color(0xfffdecdc),
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child:const Icon(Icons.flash_on_rounded,color: Color(0xffff885b),size: 30,),
                        ),
                        SizedBox(
                            width: width*0.15,
                            height: width*0.15,
                            child: const Center(child: Text("Flash Deal",style: TextStyle(color: Colors.black54),textAlign: TextAlign.center,),)),
                      ],
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(top:height*0.04),
                    child: Column(
                      children: [
                        Container(
                          width: width*0.15,
                          height: width*0.15,
                          decoration: BoxDecoration(
                              color: Color(0xfffdecdc),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child:const Icon(FontAwesomeIcons.solidMoneyBill1,color: Color(0xffff885b),size: 30,),
                        ),
                        SizedBox(
                            width: width*0.15,
                            height: width*0.15,
                            child: const Center(child: Text("Bills",style: TextStyle(color: Colors.black54),textAlign: TextAlign.center,),)),
                      ],
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(top:height*0.04),
                    child: Column(
                      children: [
                        Container(
                          width: width*0.15,
                          height: width*0.15,
                          decoration: BoxDecoration(
                              color: Color(0xfffdecdc),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child:const Icon(FontAwesomeIcons.playstation,color: Color(0xffff885b),size: 30,),
                        ),
                        SizedBox(
                            width: width*0.15,
                            height: width*0.15,
                            child: const Center(child: Text("Game",style: TextStyle(color: Colors.black54),textAlign: TextAlign.center,),)),
                      ],
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(top:height*0.04),
                    child: Column(
                      children: [
                        Container(
                          width: width*0.15,
                          height: width*0.15,
                          decoration: BoxDecoration(
                              color: Color(0xfffdecdc),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child:const Icon(FontAwesomeIcons.gift,color: Color(0xffff885b),size: 30,),
                        ),
                        SizedBox(
                            width: width*0.15,
                            height: width*0.15,
                            child: const Center(child: Text("Daily gifts",style: TextStyle(color: Colors.black54),textAlign: TextAlign.center,),)),
                      ],
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(top:height*0.04),
                    child: Column(
                      children: [
                        Container(
                          width: width*0.15,
                          height: width*0.15,
                          decoration: BoxDecoration(
                              color: Color(0xfffdecdc),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child:const Icon(Icons.more_horiz,color: Color(0xffff885b),size: 30,),
                        ),
                        SizedBox(
                            width: width*0.15,
                            height: width*0.15,
                            child: const Center(child: Text("More",style: TextStyle(color: Colors.black54),textAlign: TextAlign.center,),)),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding:  EdgeInsets.only(top:height*0.02),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:const  [
                    Text("Special for you",style: TextStyle(fontSize: 20,color: Colors.black),),
                    Text("See more",style: TextStyle(fontSize: 15,color: Colors.black54),)
                  ],
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(top:height*0.04),
                child: SizedBox(
                  height: height*0.13,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                    itemCount: 2,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding:  EdgeInsets.only(right: width*0.03),
                        child: Container(
                          height: height*0.13,
                          width: width*0.7,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(specialImgs[index]),
                              fit: BoxFit.cover,
                              opacity: 100
                            ),
                              color: Colors.black54,
                              borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding:  EdgeInsets.only(left: width*0.03,top: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(specialHeading[index],style: TextStyle(color: Colors.white,fontSize: 25),),
                                Text(specialDetails[index],style: TextStyle(color: Colors.white,fontSize: 15)),
                              ],
                            ),
                          ),
                        ),
                      );
            }
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(top:height*0.02),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:  [
                    Text("Popular products",style: TextStyle(fontSize: 20,color: Colors.black),),
                    Text("See more",style: TextStyle(fontSize: 15,color: Colors.black54),)
                  ],
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(top:height*0.05),
                child: SizedBox(
                  height: height*0.35,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 3,
                      shrinkWrap: true,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding:  EdgeInsets.only(right: width*0.03),
                          child: GestureDetector(
                            onTap: (){
                              Navigator.pushNamed(context, "/productDetails");
                            },
                            child: Container(
                              height: height*0.35,
                              width: width*0.45,
                              decoration: BoxDecoration(
                                //color: Color(0xfff0f0f0),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                      child: Image.asset(popularImgs[index],height: height*0.2),
                                    height:height*0.2 ,
                                     width: width*0.45,
                                    decoration: BoxDecoration(
                                      color: Colors.grey[300],
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: width*0.03,right: width*0.03),
                                    child:  Text(popularName[index],style: TextStyle(color: Colors.black,fontSize: 15),),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: width*0.03,right: width*0.03,bottom: width*0.03),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                         Text(popularPrice[index],style: TextStyle(color: Colors.orange,fontSize: 18,fontWeight: FontWeight.bold)),
                                        CircleAvatar(
                                          radius: 17,
                                          backgroundColor: Colors.red[100],
                                          child: Icon(Icons.favorite,color: Colors.red,),
                                        )

                                      ],
                                    ),
                                  )

                                ],
                              )
                            ),
                          ),
                        );
                      }
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
