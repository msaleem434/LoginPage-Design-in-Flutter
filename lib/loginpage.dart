import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(
      //     "Sky Eco Tech",
      //     style: TextStyle(
      //       letterSpacing: 2.0,
      //       color: Colors.white,
      //     ),
      //   ),
      //   leading: Icon(
      //     Icons.menu,
      //   ),
      //   backgroundColor: Colors.red,
      // ),
      body: SafeArea(
          child: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                backgroundImage: AssetImage('images/Logo.png'),
                backgroundColor: Colors.white,
                radius: 60.0,
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "Welcome",
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                width: 300.0,
                height: 20.0,
                child: Divider(
                  color: Colors.black38,
                  thickness: 2.0,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                    decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                )),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Container(
                      width: 300.0,
                      child: MaterialButton(
                        child: Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                          ),
                        ),
                        onPressed: () {},
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100.0),
                        color: Colors.amber,
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: 300.0,
                    child: MaterialButton(
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.amber,
                        ),
                      ),
                      onPressed: () {},
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100.0),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.amber,
                            blurRadius: 20.0, // soften the shadow
                            spreadRadius: 2.0, //extend the shadow
                            offset: Offset(
                              5.0, // Move to right 10  horizontally
                              5.0, // Move to bottom 10 Vertically
                            ),
                          )
                        ]),
                  ),
                ],
              )
            ]),
      )),
    );
  }
}
