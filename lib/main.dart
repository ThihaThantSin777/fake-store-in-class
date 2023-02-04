import 'package:fake_store_pratice/data/apply/fake_store_apply.dart';
import 'package:fake_store_pratice/data/apply/fake_store_apply_impl.dart';
import 'package:fake_store_pratice/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());

  // final FakeStoreApply _fake=FakeStoreApplyImpl();
  // _fake.getAllProduct().then((value) {
  //   print("Get Data====> $value");
  // }).catchError((error)=>print("Error====> $error"));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

