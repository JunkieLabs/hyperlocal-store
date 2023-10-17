import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:storefront_flutter/res/store_icons_icons.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key? key, this.title = 'Home'}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  late final HomeController store;

  @override
  void initState() {
    super.initState();
    store = Modular.get<HomeController>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
      ),
      body: StreamBuilder(
        stream: store.counterStream,
        builder: (context, snapshot) => Text('${snapshot.data}'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          store.increment();
        },
        child: Icon(StoreIcons.box),
      ),
    );
  }
}