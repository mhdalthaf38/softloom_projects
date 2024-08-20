import 'package:dummy_app/someskelton/homepage.dart';
import 'package:dummy_app/someskelton/login.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

var full_name;
var email;
var pass;

class Registerpage extends StatefulWidget {
  const Registerpage({super.key});

  @override
  State<Registerpage> createState() => _RegisterpageState();
}

class _RegisterpageState extends State<Registerpage> {
  var _nameController = TextEditingController();
  var _emailController = TextEditingController();
  var _passController = TextEditingController();
  var _repassController = TextEditingController();
  late bool eye = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              const Column(
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
                    child: Text("Be a Lovebirds",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w300)),
                  ),
                ],
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 40, right: 40, top: 50),
                      child: TextField(
                        controller: _nameController,
                        decoration: InputDecoration(
                          label: Text(
                            "Full Name",
                            style: TextStyle(
                                color: Color.fromARGB(255, 61, 110, 62)),
                          ),
                          labelStyle: TextStyle(fontWeight: FontWeight.w300),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(199, 247, 167, 142)),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(199, 247, 167, 142)),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 40, right: 40),
                      child: TextField(
                        controller: _emailController,
                        decoration: InputDecoration(
                          label: Text(
                            "Email Or Phone Number",
                            style: TextStyle(
                                color: Color.fromARGB(255, 61, 110, 62)),
                          ),
                          labelStyle: TextStyle(fontWeight: FontWeight.w300),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(199, 247, 167, 142)),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(199, 247, 167, 142)),
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
                        obscureText: eye,
                        controller: _passController,
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                eye = !eye;
                              });
                            },
                            icon: Icon(
                                eye ? Icons.visibility : Icons.visibility_off),
                          ),
                          label: Text(
                            "Password",
                            style: TextStyle(
                                color: Color.fromARGB(255, 61, 110, 62)),
                          ),
                          labelStyle: TextStyle(fontWeight: FontWeight.w300),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(199, 247, 167, 142)),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(199, 247, 167, 142)),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 40, right: 40),
                      child: TextField(
                        obscureText: eye,
                        controller: _repassController,
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                eye = !eye;
                              });
                            },
                            icon: Icon(
                                eye ? Icons.visibility : Icons.visibility_off),
                          ),
                          label: Text(
                            "Re Enter Password",
                            style: TextStyle(
                                color: Color.fromARGB(255, 61, 110, 62)),
                          ),
                          labelStyle: TextStyle(fontWeight: FontWeight.w300),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(199, 247, 167, 142)),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(199, 247, 167, 142)),
                          ),
                        ),
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
                                Color.fromARGB(199, 247, 167, 142))),
                        onPressed: () {
                          if (_passController.text == _repassController.text) {
                            full_name = _nameController.text;
                            email = _emailController.text;

                            pass = _passController.text;
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => loginpage(),
                              ),
                            );
                            print(email);
                          } else {
                            Fluttertoast.showToast(
                                msg: "Enter the password correctly");
                          }
                        },
                        child: const Text(
                          "Sign up",
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
                          )),
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
                      const Text("Are you a Lovebirds?",
                          style: TextStyle(fontSize: 13)),
                      GestureDetector(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => loginpage())),
                        child: const Text(
                          "Then Sign in",
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
      ),
    );
  }
}
