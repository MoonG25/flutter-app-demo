import 'package:bone_app/components/neon_text.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: screenHeight,
      width: screenWidth,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage('assets/images/club_image_5.jpg'),
//          colorFilter: ColorFilter.srgbToLinearGamma(),
          colorFilter: ColorFilter.mode(Color.fromARGB(155, 0, 0, 0), BlendMode.darken),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: NeonText('B.ONE', fontSize: 24,),
        ),
        body: Center(
          child: Container(
            height: 250.0,
            padding: EdgeInsets.only(left: 43.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () => Navigator.pushReplacementNamed(context, '/signin'),
                      child: Text(
                        'Sign in',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25.0),
                      child: Text(
                        'Sign up',
                        style: TextStyle(
                          color: Color(0xfff4e17a),
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  width: 330.0,
                  height: 50.0,
                  margin: EdgeInsets.only(top: 20.0),
                  child: TextField(
                    controller: new TextEditingController(),
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(3.0),
                      prefixIcon: Icon(Icons.email),
                      hintText: 'Email',
                      hintStyle: TextStyle(
                        color: Colors.deepPurple,
                      ),
                      border: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.deepPurple,
                          width: 1.5,
                        ),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    style: TextStyle(
                      color: Colors.deepPurple,
                      fontSize: 18,
                    ),
                  ),
                ),
                Container(
                  width: 330.0,
                  height: 50.0,
                  child: TextField(
                    controller: new TextEditingController(),
                    obscureText: true,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(3.0),
                      prefixIcon: Icon(Icons.lock),
                      hintText: 'Password',
                      hintStyle: TextStyle(
                        color: Colors.deepPurple,
                      ),
                      border: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.deepPurple,
                          width: 1.5,
                        ),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    style: TextStyle(
                      color: Colors.deepPurple,
                      fontSize: 18,
                    ),
                  ),
                ),
                ButtonTheme(
                  minWidth: 330.0,
                  height: 50.0,
                  child: OutlineButton(
                    child: Text(
                      'SIGN UP',
                      style: TextStyle(
                        color: Colors.deepPurple,
                        fontSize: 18,
                        fontWeight: FontWeight.w700
                      ),
                    ),
                    splashColor: Colors.deepPurple,
                    onPressed: () => print('pressed'),
                    borderSide: BorderSide(
                      color: Colors.deepPurple,
                      width: 1.5,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
