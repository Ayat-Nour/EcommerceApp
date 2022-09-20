import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final controller = PageController(viewportFraction: 0.8, keepPage: true);

  @override
  Widget build(BuildContext context) {
    var width= MediaQuery.of(context).size.width;
    var height= MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: height*0.1,
          ),
          Padding(
            padding:  EdgeInsets.all(width*0.02),
            child: const Text("TOKOTO",style: TextStyle(fontSize: 50,color: Colors.deepOrangeAccent),),
          ),
          Padding(
            padding: EdgeInsets.only(left:width*0.1,right: width*0.1,bottom: width*0.05),
            child: const Text("Welcome to Tokoto, let's shop!",
              style: TextStyle(fontSize: 15,color: Colors.black45),textAlign: TextAlign.center,),
          ),
          Padding(
            padding:  EdgeInsets.only(top: height*0.05,),
            child: Image.asset("lib/assets/splash_1.png",width: width*0.6,),
          ),
          Padding(
            padding: EdgeInsets.only(top: height*0.01,bottom: height*0.05,),
            child: SmoothPageIndicator(
              controller: controller,
              count: 3,
              effect: const ExpandingDotsEffect(
                dotHeight: 10,
                dotWidth: 10,
                dotColor: Colors.orange,
                activeDotColor: Colors.deepOrangeAccent
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, "/LoginPage");
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
        ],
      ),
    );
  }
}
