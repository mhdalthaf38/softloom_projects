import 'package:dummy_app/someskelton/homepage.dart';
import 'package:dummy_app/someskelton/registerPage.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class loginpage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => loginpage_state();
}

class loginpage_state extends State {
  bool namevalidate = false;
  bool passvalidate = false;
  String eroormessage = "";
  var usernamae = "lucenstar";
  var password = "done123";
  var _userController = TextEditingController();
  var passController = TextEditingController();
  late bool eye = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/Untitled design1.png'),
              fit: BoxFit.cover),
        ),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 35, bottom: 10),
                    child: Text(
                      "Lovebirds",
                      style: TextStyle(
                          fontFamily: 'Playwrite',
                          fontSize: 25,
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 100),
                    child: Text(
                      "Welcome to Lovebirds",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                    ),
                  ),
                ],
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 40, right: 40, top: 30),
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        controller: _userController,
                        decoration: InputDecoration(
                          errorText: namevalidate ? eroormessage : null,
                          label: Text(
                            "Username Or Email",
                            style: TextStyle(
                              color: Color.fromARGB(255, 61, 110, 62),
                            ),
                          ),
                          labelStyle: TextStyle(fontWeight: FontWeight.w300),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color.fromARGB(199, 247, 167, 142),
                            ),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color.fromARGB(199, 247, 167, 142),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 40, right: 40),
                      child: TextField(
                        maxLength: 8,
                        obscureText: eye,
                        controller: passController,
                        decoration: InputDecoration(
                          errorText: passvalidate
                              ? "enter password , minimum 8 character"
                              : null,
                          suffixIcon: IconButton(
                            icon: Icon(
                              eye ? Icons.visibility : Icons.visibility_off,
                            ),
                            onPressed: () {
                              setState(() {
                                eye = !eye;
                              });
                            },
                          ),
                          label: Text(
                            "Password",
                            style: TextStyle(
                              color: Color.fromARGB(255, 61, 110, 62),
                            ),
                          ),
                          labelStyle: TextStyle(fontWeight: FontWeight.w300),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color.fromARGB(199, 247, 167, 142),
                            ),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color.fromARGB(199, 247, 167, 142),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 195, top: 15),
                      child: Text(
                        "Forget password?",
                        style: TextStyle(
                            color: Color.fromARGB(255, 61, 110, 62),
                            fontSize: 15,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    SizedBox(
                      width: 150,
                      child: ElevatedButton(
                        style: const ButtonStyle(
                          backgroundColor: WidgetStatePropertyAll(
                            Color.fromARGB(199, 247, 167, 142),
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            if (_userController.text.isEmpty) {
                              eroormessage = "enter email";
                              namevalidate = true;
                            } else if (!_userController.text.contains("@")) {
                              eroormessage = "Enter a valid email";
                              namevalidate = true;
                            } else {
                              namevalidate = false;
                            }
                            passController.text.isEmpty ||
                                    passController.text.length != 8
                                ? passvalidate = true
                                : passvalidate = false;
                          });
                          if (_userController.text == usernamae &&
                              passController.text == password) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Homepage(),
                                ));
                          } else {
                            Fluttertoast.showToast(msg: "invalid message");
                          }
                        },
                        child: const Text(
                          "Sign in",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 40),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Divider(
                              indent: 90,
                            ),
                          ),
                          Text(
                            "Or",
                            style: TextStyle(fontSize: 13),
                          ),
                          Expanded(
                            child: Divider(
                              endIndent: 90,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 75, top: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("New Lovebirds?",
                          style: TextStyle(fontSize: 13)),
                      GestureDetector(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Registerpage())),
                        child: const Text(
                          "Create Account",
                          style: TextStyle(
                              color: Color.fromARGB(255, 61, 110, 62),
                              fontSize: 15),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
