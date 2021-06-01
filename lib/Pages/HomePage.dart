import 'package:flutter/material.dart';
import "package:flutter30days/Utils/AppRoutes.dart";

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isClicked = false;
  final _formkey = GlobalKey<FormState>();
  bool moveToHome() {
    if (_formkey.currentState.validate()) {
      return true;
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(26.0),
        child: SingleChildScrollView(
          child: Form(
            key: _formkey,
            child: Column(children: [
              Image.asset("images/loginpage.png"),
              Text("Welcome", style: TextStyle(fontSize: 20)),
              TextFormField(
                validator: (value) {
                  if (value.isEmpty) {
                    return "Please Fill The Field";
                  }
                  return null;
                },
                decoration: InputDecoration(
                    hintText: "Enter Email", labelText: "Email"),
              ),
              TextFormField(
                validator: (value) {
                  if (value.isEmpty) {
                    return "Please Fill The Field";
                  }
                  else if(value.length < 6){
                    return "Password Should Be Greater Than Six Characters";
                  }
                  return null;
                },
                obscureText: true,
                decoration: InputDecoration(
                    hintText: "Enter Password", labelText: "Password"),
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                child: Material(
                  borderRadius: BorderRadius.circular(isClicked ? 40 : 4),
                  color: Colors.deepPurple,
                  child: InkWell(
                    splashColor: Colors.deepPurpleAccent,
                    onTap: () async {
                      if (moveToHome()) {
                        isClicked = true;
                        setState(() {});
                        await Future.delayed(Duration(milliseconds: 1500));
                        Navigator.pushNamed(context, AppRoutes.mainRoute);
                        await Future.delayed(Duration(milliseconds: 500));
                        setState(() {});
                        isClicked = false;
                      }
                    },
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 800),
                      curve: Curves.elasticInOut,
                      width: isClicked ? 40 : 120,
                      height: 40,
                      alignment: Alignment.center,
                      child: isClicked
                          ? Icon(
                              Icons.check_rounded,
                              color: Colors.white,
                            )
                          : Text("Login",
                              style: TextStyle(color: Colors.white)),
                    ),
                  ),
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
