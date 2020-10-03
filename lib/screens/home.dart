import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'welcome',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              textDirection: TextDirection.ltr,
            ),
          ),
          flexibleSpace: Image(
            image: AssetImage('assets/images/wh.png'),
            fit: BoxFit.fill,
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/amg1.jpg'),
                  fit: BoxFit.fill)),
          child: Container(
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: Colors.transparent),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Material(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      elevation: 10,
                      child: MaterialButton(
                        minWidth: 200,
                        height: 50,
                        child: Text('Login',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                                color: Colors.black)),
                        onPressed: () {
                          Navigator.pushNamed(context, "login");
                        },
                      )),
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    child: Material(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        elevation: 10,
                        child: MaterialButton(
                          minWidth: 200,
                          height: 50,
                          child: Text('Registration',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                  color: Colors.black)),
                          onPressed: () {
                            Navigator.pushNamed(context, "reg");
                          },
                        )),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
