import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CompleteProfile extends StatefulWidget {
  const CompleteProfile({Key? key}) : super(key: key);

  @override
  State<CompleteProfile> createState() => _CompleteProfileState();
}

class _CompleteProfileState extends State<CompleteProfile> {
  TextEditingController selectedDate = TextEditingController();
  late  FocusNode phoneNode ;
  final _phoneController = TextEditingController();

  void phoneNumberError(BuildContext context){
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text("Invalid Phone number"),
        content: const Text("Please enter a valid phone number in the form of \n07********"),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(ctx).pop();
              phoneNode.requestFocus();
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
    selectedDate.text = ""; //set the initial value of text field
    phoneNode = FocusNode();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final bottom = MediaQuery.of(context).viewInsets.bottom;
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
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
      body: Center(
        child: SingleChildScrollView(
         padding: EdgeInsets.only(bottom:bottom),
          dragStartBehavior: DragStartBehavior.start,
          child: Container(
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                const Text("Complete Profile",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                Padding(
                  padding: EdgeInsets.only(left:width*0.1,right: width*0.1,bottom: width*0.05),
                  child: const Text("Please complete your details",
                    style: TextStyle(fontSize: 15,color: Colors.black45),textAlign: TextAlign.center,),
                ),
                Padding(
                  padding:  EdgeInsets.all(width*0.05),
                  child: TextField(
                    decoration: InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      label: const Text("First Name"),
                      alignLabelWithHint: true,
                      hintText: "Enter your first name",
                      suffixIcon: const Padding(
                        padding:  EdgeInsets.all(15),
                        child: Icon(Icons.person),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50)
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.all(width*0.05),
                  child: TextField(
                    decoration: InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      label: const Text("Last Name"),
                      alignLabelWithHint: true,
                      hintText: "Enter your last name",
                      suffixIcon: const Padding(
                        padding:  EdgeInsets.all(15),
                        child: Icon(Icons.person),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50)
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.all(width*0.05),
                  child: TextField(
                    readOnly: true,
                    controller: selectedDate,
                    decoration: InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      label: const Text("Date of Birth"),
                      alignLabelWithHint: true,
                      hintText: "Select your Date of Birth",
                      suffixIcon: const Padding(
                        padding:  EdgeInsets.all(15),
                        child: Icon(Icons.calendar_today),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50)
                      ),
                    ),
                    onTap: () async {
                      DateTime? pickedDate = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(1950),
                          lastDate: DateTime(2100));

                      if (pickedDate != null) {
                        print(pickedDate);
                        String formattedDate = DateFormat('dd-MM-yyyy').format(pickedDate);
                        print(formattedDate);
                        setState(() {
                          selectedDate.text = formattedDate;
                        });
                      } else {}
                    },

                  ),
                ),
                Padding(
                  padding:  EdgeInsets.all(width*0.05),
                  child: FocusScope(
                    onFocusChange: (bool x){
                      if(!x){
                        setState(() {
                          _phoneController.value.text.length==10 || _phoneController.value.text=="" ?"":phoneNumberError(context);
                        });
                      }
                    },
                    child: TextField(
                      focusNode: phoneNode,
                      controller: _phoneController,
                      decoration: InputDecoration(
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        label: const Text("Phone Number"),
                        alignLabelWithHint: true,
                        hintText: "Enter your phone number",
                        suffixIcon: const Padding(
                          padding:  EdgeInsets.all(15),
                          child: Icon(Icons.phone_android),
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50)
                        ),
                      ),
                      onEditingComplete: (){
                        setState(() {
                          _phoneController.value.text.length==10 || _phoneController.value.text=="" ?FocusScope.of(context).unfocus():phoneNumberError(context);
                        });
                      },
                    ),
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.all(width*0.05),
                  child: TextField(
                    decoration: InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      label: const Text("Address"),
                      alignLabelWithHint: true,
                      hintText: "Enter your address",
                      suffixIcon: const Padding(
                        padding:  EdgeInsets.all(15),
                        child: Icon(Icons.location_on_outlined),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50)
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, "/verification",);
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
                  padding: EdgeInsets.only(right:width*0.2,left: width*0.2),
                  child: const Text("By completing this process you agree with our terms and conditions",style: TextStyle(color: Colors.black45,fontSize: 10),
                    textAlign: TextAlign.center,),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
