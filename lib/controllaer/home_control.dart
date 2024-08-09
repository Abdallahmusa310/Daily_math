// ignore_for_file: non_constant_identifier_names

import 'package:daily_math/models/student_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  Rx<List<Studentmodel>>students= Rx<List<Studentmodel>>([]);
  TextEditingController name=TextEditingController();
  TextEditingController grade=TextEditingController();




  late Studentmodel studentmodel;
  var itemcount=0.obs;

  void oninit(){
    super.onInit();
  }
    void onready(){
    super.onReady();
  }
    void onclose(){
    super.onClose();
    name.dispose();
    grade.dispose();
  }
  Addstudent(String name,grade){
  studentmodel= Studentmodel(studentname: name);
  students.value.add(studentmodel);
  itemcount.value=students.value.length;
  }
  removeStudent(int index){
    students.value.removeAt(index);
    itemcount.value=students.value.length;
  }

  

  
  
}