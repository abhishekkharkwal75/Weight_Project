import 'package:flutter/material.dart';
import 'package:weight_project/Screens/loginPage.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  bool isRemindMe = false;
  

 

  Widget builtLoginBtn() {
    return InkWell(
      onTap: () => print('SignUp Pressed'),
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 180,
        ),
        width: double.infinity,
        color: Colors.white54,
        height: 60,
        child: Text(
          'SignUp',
          style: TextStyle(
            color: Colors.black54,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget builtSignupBtn() {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => LoginPage()));
      },
      child: RichText(
        text: TextSpan(children: [
          TextSpan(
            text: 'Already have An Account?',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          TextSpan(
            text: 'LogIn',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ]),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green[400],
        body: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 120,
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 180, vertical: 50),
                color: Colors.green[400],
                child: Text(
                  'SignUp',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height:20
              ),
              Container(
                color: Colors.white54,
                child: TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    hintText: 'Enter your Name',
                    //errorText: 'wrong email',
                    labelText: 'Name',
                    hintStyle: TextStyle(color: Colors.black54),

                    prefixIcon: Icon(Icons.person),
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(30.0),
                      ),
                      borderSide: BorderSide(color: Colors.black54),
                    ),
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                color: Colors.white54,
                child: TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    hintText: 'Enter your email',
                    //errorText: 'wrong email',
                    labelText: 'Email',
                    hintStyle: TextStyle(color: Colors.black54),

                    prefixIcon: Icon(Icons.email),
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(30.0),
                      ),
                      borderSide: BorderSide(color: Colors.black54),
                    ),
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                color: Colors.white54,
                child: TextField(
                  controller: passwordController,
                  decoration: InputDecoration(
                    hintText: 'Enter your Password',
                    //errorText: 'wrong email',
                    labelText: 'PassWord',
                    labelStyle: TextStyle(color: Colors.black54),
                    hintStyle: TextStyle(color: Colors.black54),

                    prefixIcon: Icon(Icons.lock),
                    // fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                      borderSide: BorderSide(color: Colors.black54),
                    ),
                  ),
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                ),
              ),
              SizedBox(
                height: 20,
              ),
             
              
              SizedBox(
                height: 60,
              ),
              builtLoginBtn(),
              SizedBox(
                height: 30,
              ),
              builtSignupBtn(),
            ],
          ),
        ));
  }
}
