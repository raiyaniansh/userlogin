import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget txtfiled(String a,TextEditingController b)
{
  return TextField(
    controller: b,
    style: TextStyle(color: Colors.white),
    decoration: InputDecoration(
      label: Text("$a",style: TextStyle(color: Colors.white

      )),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
      ),
    ),
  );
}

Widget txtfiledpass(String a,TextEditingController b)
{
  return TextField(
    obscureText: true,
    controller: b,
    style: TextStyle(color: Colors.white),
    decoration: InputDecoration(
      label: Text("$a",style: TextStyle(color: Colors.white

      )),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
      ),
    ),
  );
}