import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    var width= MediaQuery.of(context).size.width;
    var height= MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: GestureDetector(
            child: const Icon(Icons.arrow_back_sharp,color: Colors.black,),
        onTap: (){
              Navigator.pop(context);
        },
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Center(
        child: Padding(
          padding:  EdgeInsets.only(left: width*0.05,right: width*0.05,bottom: width*0.1),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: double.infinity,
                height: height*0.22,
                child: Stack(
                  children:  [
                    Positioned(
                        child: Image.asset("lib/assets/Profile_Image.png",width: width*0.35,),
                      left: width*0.275,
                      top: height*0.048,
                    ),
                    Positioned(
                        top: height*0.15,
                        left: width*0.55,
                        child: const CircleAvatar(
                          radius: 25,
                          backgroundColor: Color(0xfff0f0f0),
                          child: Icon(Icons.camera_alt_outlined,color: Colors.grey,),
                        )),

                  ],
                ),
              ),
              const ListTile(
                tileColor: Color(0xfff0f0f0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                leading: Icon(Icons.person_outline,color: Colors.deepOrangeAccent,),
                title: Text("My Account",style: TextStyle(color: Colors.deepOrangeAccent),),
                trailing: Icon(Icons.arrow_forward_ios,color: Colors.deepOrangeAccent,),
              ),
              const ListTile(
                tileColor: Color(0xfff0f0f0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                leading: Icon(Icons.notifications_none,color: Colors.deepOrangeAccent,),
                title: Text("Notifications",style: TextStyle(color: Colors.deepOrangeAccent),),
                trailing: Icon(Icons.arrow_forward_ios,color: Colors.deepOrangeAccent,),
              ),
              const ListTile(
                tileColor: Color(0xfff0f0f0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                leading: Icon(Icons.settings_outlined,color: Colors.deepOrangeAccent,),
                title: Text("Settings",style: TextStyle(color: Colors.deepOrangeAccent),),
                trailing: Icon(Icons.arrow_forward_ios,color: Colors.deepOrangeAccent,),
              ),
              const ListTile(
                tileColor: Color(0xfff0f0f0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                leading: Icon(Icons.help_outline,color: Colors.deepOrangeAccent,),
                title: Text("Help Center",style: TextStyle(color: Colors.deepOrangeAccent),),
                trailing: Icon(Icons.arrow_forward_ios,color: Colors.deepOrangeAccent,),
              ),
              const ListTile(
                tileColor: Color(0xfff0f0f0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                leading: Icon(Icons.logout,color: Colors.deepOrangeAccent,),
                title: Text("Logout",style: TextStyle(color: Colors.deepOrangeAccent),),
                trailing: Icon(Icons.arrow_forward_ios,color: Colors.deepOrangeAccent,),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
