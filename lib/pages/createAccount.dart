import 'package:flutter/material.dart';

class CreateAccnt extends StatefulWidget {
  @override
  _CreateAccntState createState() => _CreateAccntState();
}

class _CreateAccntState extends State<CreateAccnt> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController email;
  TextEditingController password;
  TextEditingController username;
  @override

  @override
  void initState() { 
    super.initState();
    email = TextEditingController();
    password = TextEditingController();
    username = TextEditingController();
  }
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(icon: Icon(Icons.arrow_back_ios, color: Colors.black), onPressed: (){Navigator.pop(context);}),
      ),
      backgroundColor: Color(0xFFF6F6F6),
      body: Padding(
        padding: const EdgeInsets.only(left: 15.0, right: 15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:<Widget>[
            Padding(
              padding: EdgeInsets.only(top: 25.0),
              child: Text("Chat App", style: TextStyle(color: Color(0xFFE5352A), fontSize: 23.0, fontWeight: FontWeight.w600,),),
            ),
            Padding(padding: EdgeInsets.only(top: 15.0),
              child: Text("Create new account", softWrap: true, style: TextStyle(fontSize: 30.0, color: Colors.black, fontWeight: FontWeight.w600,),),
            ),
            Padding(padding: EdgeInsets.only(top: 20.0),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:<Widget>[
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
                        prefixIcon: Icon(Icons.person_outline),
                        //border: InputBorder()
                      ),
                      controller: username,
                    ),
                  ]
                )
              ),
            ),
          ]
        ),
      ),
    );
  }
}