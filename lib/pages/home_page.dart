import 'package:fake_store_pratice/data/apply/fake_store_apply.dart';
import 'package:fake_store_pratice/data/apply/fake_store_apply_impl.dart';
import 'package:fake_store_pratice/data/vo/fake_store_vo/fake_store_vo.dart';
import 'package:fake_store_pratice/pages/details_page.dart';
import 'package:fake_store_pratice/utils/generate_color.dart';
import 'package:fake_store_pratice/utils/string_extension.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final FakeStoreApply fakeStoreApply = FakeStoreApplyImpl();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Fake Store Product"),
      ),
      body: FutureBuilder<List<FakeStoreVO>?>(
        future: fakeStoreApply.getAllProduct(),
        builder: (context, snapShot) {
          if (snapShot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (snapShot.hasError) {
            return const Center(
              child: Text('Error Occur while fetching'),
            );
          }
          final listData = snapShot.data;
          return ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              itemBuilder: (context, index) => ListTile(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) =>
                              DetailsPage(fakeStoreVO: listData?[index])));
                    },
                    title: Text(listData?[index].title ?? ''),
                    subtitle: Text(listData?[index].description ?? ''),
                    leading: CircleAvatar(
                      backgroundColor: getRandomColor(),
                      radius: 30,
                      child: Text((listData?[index].title ?? '').getPrefix()),
                    ),
                    trailing: Text('${listData?[index].price}\$'),
                  ),
              separatorBuilder: (context, index) => const SizedBox(
                    height: 10,
                  ),
              itemCount: listData?.length ?? 0);
        },
      ),
    );
  }
}
