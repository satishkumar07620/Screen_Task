// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, camel_case_types, sort_child_properties_last, sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:day4task2/login.dart';
import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({super.key, required String title});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 23, 59, 89),
        body: Center(
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color.fromARGB(255, 21, 92, 151),
                Color.fromARGB(255, 147, 138, 138),
              ],
            )),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 100,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: Text(
                        'MOMENTUM',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 40,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Text(
                        'GROWTH*',
                        style: TextStyle(
                          //  fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        'HAPPENS*',
                        style: TextStyle(
                          //  fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        'TODAY',
                        style: TextStyle(
                          //  fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 80,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 50,
                      width: 150,
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => login(
                                        title: '',
                                      )));
                        },
                        child: Text(
                          'SIGN IN ',
                          style: TextStyle(
                              color: Color.fromARGB(255, 222, 207, 207),
                              fontSize: 20),
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 150,
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => home(
                                        title: '',
                                      )));
                        },
                        child: Text(
                          'SIGN UP ',
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    decoration: const InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      labelText: "Enter Your Email",
                      prefixIcon: Icon(
                        Icons.email,
                        color: Colors.white,
                      ),
                      hintStyle:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      labelStyle: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    decoration: const InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      labelText: "Enter a Password",
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.white,
                      ),
                      hintStyle:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      labelStyle: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 50,
                  width: 400,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(8),
                  margin: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 125, 126, 128),
                  ),
                  child: Text(
                    'SIGN UP',
                    style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 25),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ));
  }
}
