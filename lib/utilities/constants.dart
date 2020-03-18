import 'package:flutter/material.dart';

const kMiddleTitleTextStyle = TextStyle (
  fontSize: 20.0 ,
  fontWeight: FontWeight.w700,
  fontFamily: 'Spartan MB' ,

  );

const kMidleSubTextStyle = TextStyle (
  fontSize: 12.0 ,
  color: Colors.grey,
  fontWeight: FontWeight.w400,
  );

const kTextFieldInputDecoration = InputDecoration (
  filled: true ,
  fillColor: Colors.white ,
  icon: Icon (
    Icons.location_city ,
    color: Colors.white ,
    ) ,
  hintText: '지역을 입력해주세요' ,
  hintStyle: TextStyle (
    color: Colors.grey ,
    ) ,
  border: OutlineInputBorder (
    borderRadius: BorderRadius.all (
      Radius.circular (
          10.0
          ) ,
      ) ,
    borderSide: BorderSide.none ,
    ) ,
  );