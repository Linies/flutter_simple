import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {

  @override
  LoginState createState() => LoginState();
}

class LoginState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        height: 450,
        child: Material(
          // 圆角矩形背景
//          borderRadius: BorderRadius.circular(20.0),
          color: Colors.blue,
          shadowColor: Colors.grey,
          elevation: 5,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text(
                'Login View',// 登陆标题
                textScaleFactor: 1.8,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 30.0, right: 30.0),
                child: Column(
                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'User',
                        hintText: "Entet user name...",
                        prefixIcon: Icon(Icons.person)
                      ),
                      maxLength: 10,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Password',
                        hintText: "Entet user password...",
                        prefixIcon: Icon(Icons.lock)
                      ),
                      obscureText: true,//  隐藏密码
                    ),
                  ],

                ),
              ),
              RaisedButton(
                onPressed: (){
                },
                disabledColor: Colors.white,
                disabledTextColor: Colors.blue,
                splashColor: Colors.blue,
                elevation: 5,
                child: Text("Sign In"),
              ),
            ],
          )
        ),
      ),

    );
  }
}
