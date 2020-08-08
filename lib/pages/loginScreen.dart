import 'package:flutter/material.dart';


class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController email;
  TextEditingController password;
  bool visible;
  @override
  @override
  void initState() { 
    super.initState();
    email = TextEditingController();
    password = TextEditingController();
    visible = false;
  }
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black,) ,onPressed: () => Navigator.pop(context)),
      ),
      backgroundColor: Color(0xFFF6F6F6),
      body: Padding(
        padding: EdgeInsets.only(left: 25.0, right: 25.0,),
         child: Column(
           mainAxisAlignment: MainAxisAlignment.start,
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Padding(
              padding: EdgeInsets.only(top: 25.0),
              child: Text(
                "Chat App",
                style: TextStyle(
                  color: Color(0xFFE5352A),
                  fontSize: 23.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 15.0),
              child: Text(
                "Create new account",
                softWrap: true,
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 20.0,),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:[
                    TextFormField(
                      keyboardType: TextInputType.name,
                      cursorColor: Colors.black,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                      ),
                      decoration: InputDecoration(
                        alignLabelWithHint: true,
                        hintText: "Your Name",
                        hintStyle: TextStyle(
                          fontSize: 11.0,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                        focusColor: Colors.black,
                        prefixIcon: Icon(Icons.email),
                        //border: InputBorder()
                      ),
                      controller: email,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 15.0,
                      ),
                      child: TextFormField(
                        keyboardType: TextInputType.name,
                        cursorColor: Colors.black,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                        ),
                        obscureText: visible == false ? true : false,
                        decoration: InputDecoration(
                          
                          alignLabelWithHint: true,
                          hintText: "Email Address",
                          hintStyle: TextStyle(
                            fontSize: 11.0,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                          focusColor: Colors.black,
                          prefixIcon: Icon(Icons.lock),
                          
                          suffixIcon: visible == true ?   
                          IconButton(
                            icon: Icon(Icons.visibility_off),
                            onPressed: (){
                              setState(() {
                                visible = false;
                              });
                            } 
                          )
                          : 
                          IconButton(
                            icon: Icon(Icons.visibility),
                            onPressed: (){
                              setState(() {
                                visible = true;
                              });
                            } 
                          ),
                          //border: InputBorder()
                        ),
                        controller: password,
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 20.0, left: 15.0, right: 15.0),
                      child: Ink(
                        width: width,
                        height: 50.0,
                        decoration: BoxDecoration(
                          color: Color(0xFFE5352A),
                          borderRadius: BorderRadius.circular(25.0),
                          
                        ),
                        child: InkWell(
                          onTap: (){},
                          borderRadius: BorderRadius.circular(25.0),
                          child: Center(
                            child: Text("Continue", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 20.0,),),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 25.0,),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Don't have an account?", style: TextStyle(color: Colors.black45, fontSize: 14.0, fontWeight: FontWeight.w500,),),
                          Ink(
                            child: InkWell(
                              child: Text(" Create Account", style: TextStyle(color: Color(0xFFE5352A), fontSize: 14.0, fontWeight: FontWeight.w500,),),
                              onTap: (){
                                Navigator.pushNamed(context, '/createAccount');
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                  ]
                ),
              ),
            ),
           ],
         ),
        ),
    );
  }
}