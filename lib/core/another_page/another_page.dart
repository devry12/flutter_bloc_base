import 'package:flutter/material.dart';

class AnotherPage extends StatelessWidget {
  const AnotherPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Another Page"),
      ),
      body: WillPopScope(
          onWillPop: () {
            Navigator.of(context).pop("ini data dari pagi another");
            return Future<bool>.value(false);
          },
          child: Container(
            child: Center(
              child: Text("ini halaman another"),
            ),
          )),
    );
  }
}
