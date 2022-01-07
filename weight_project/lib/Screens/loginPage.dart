import 'package:flutter/material.dart';
import 'package:weight_project/Screens/signUp.dart';
import 'package:weight_project/Screens/weightFoam.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool isRemindMe = false;
  Widget buildForgetPassBtn() {
    return Container(
      alignment: Alignment.centerRight,
      child: FlatButton(
        onPressed: () => print("Forget Password Pressed"),
        padding: EdgeInsets.only(right: 20),
        child: Text(
          'Forget Password',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget buildRemenberMeBtn() {
    return Container(
      //color: Colors.red,
      height: 20,
      child: Row(
        children: [
          Theme(
            data: ThemeData(unselectedWidgetColor: Colors.white),
            child: Checkbox(
                value: isRemindMe,
                checkColor: Colors.green,
                onChanged: (value) {
                  setState(() {
                    isRemindMe = value;
                  });
                }),
          ),
          Text(
            "Remember Me",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget builtLoginBtn() {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>WeightFoam(),),);
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 180,
        ),
        width: double.infinity,
        color: Colors.white54,
        height: 60,
        child: Text(
          'Login',
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
            context, MaterialPageRoute(builder: (context) => SignUpPage()));
      },
      child: RichText(
        text: TextSpan(children: [
          TextSpan(
            text: 'Dont have An Account?',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          TextSpan(
            text: 'SignUp',
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
                  'Login',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
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
              buildForgetPassBtn(),
              buildRemenberMeBtn(),
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
