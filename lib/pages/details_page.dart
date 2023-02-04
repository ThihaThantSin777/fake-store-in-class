import 'package:fake_store_pratice/data/vo/fake_store_vo/fake_store_vo.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key,required this.fakeStoreVO}) : super(key: key);
  final FakeStoreVO ? fakeStoreVO;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Details Page'),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Image.network(fakeStoreVO?.image??''),
      ),
    );
  }
}
