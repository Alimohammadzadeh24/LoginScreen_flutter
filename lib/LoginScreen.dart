import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _RememberMe = false;

  Widget _emailTextFaild() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "Email",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.amber[800],
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.black12, blurRadius: 6, offset: Offset(0, 2))
              ]),
          height: 60,
          child: TextField(
              keyboardType: TextInputType.emailAddress,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(top: 14),
                  prefixIcon: Icon(Icons.email, color: Colors.white),
                  hintText: 'Enter your email',
                  hintStyle: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'OpenSans'))),
        ),
      ],
    );
  }

  Widget _passwordTextFeild() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "Password",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.amber[800],
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.black12, blurRadius: 6, offset: Offset(0, 2))
              ]),
          height: 60,
          child: TextField(
              obscureText: true,
              keyboardType: TextInputType.visiblePassword,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(top: 14),
                  prefixIcon: Icon(Icons.lock, color: Colors.white),
                  hintText: 'Enter your password',
                  hintStyle: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'OpenSans'))),
        ),
      ],
    );
  }

  Widget _forgetPassword() {
    return Container(
      alignment: Alignment.centerRight,
      child: FlatButton(
          onPressed: () {},
          child: Text(
            'Forget PassWord?',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
            ),
          )),
    );
  }

  Widget _rememberMe() {
    return Container(
        child: Row(
      children: [
        Theme(
          data: ThemeData(unselectedWidgetColor: Colors.white),
          child: Checkbox(
              value: _RememberMe,
              checkColor: Colors.green,
              activeColor: Colors.white,
              onChanged: (value) {
                setState(() {
                  _RememberMe = value!;
                });
              }),
        ),
        Text(
          "RemmeberMe",
          style: TextStyle(color: Colors.white),
        )
      ],
    ));
  }

  Widget _loginButtun() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 13),
      width: double.infinity,
      child: RaisedButton(
        onPressed: () {},
        padding: EdgeInsets.all(16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        color: Colors.white,
        child: Text("Login",
            style: TextStyle(
              color: Colors.amber[800],
              letterSpacing: 1.5,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            )),
      ),
    );
  }

  Widget _signupButtontext() {
    return GestureDetector(
      onTap: () {},
      child: RichText(
          text: TextSpan(children: [
        TextSpan(
            text: "don\'t have an account ⬇",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            )),
      ])),
    );
  }

  Widget _signupButton2() {
    return GestureDetector(
      onTap: () {},
      child: RichText(
          text: TextSpan(children: [
        TextSpan(
            text: "SginUp",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                decoration: TextDecoration.underline))
      ])),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.amber[400],
            ),
          ),
          Container(
            height: double.infinity,
            child: SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 160.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Sign In",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 50.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 65,
                  ),
                  _emailTextFaild(),
                  SizedBox(
                    height: 20,
                  ),
                  _passwordTextFeild(),
                  SizedBox(
                    height: 5,
                  ),
                  _forgetPassword(),
                  _rememberMe(),
                  _loginButtun(),
                  SizedBox(
                    height: 15,
                  ),
                  _signupButtontext(),
                  SizedBox(
                    height: 4,
                  ),
                  _signupButton2()
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
