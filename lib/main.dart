import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scrollbarTheme: ScrollbarThemeData(
          thumbColor: MaterialStateProperty.all(Colors.red),
        ),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _uniqueKey = UniqueKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Demo CustomScrollView center ScrollBar'),
      ),
      body: CustomScrollView(
        center: _uniqueKey,
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              height: 250,
              color: Colors.white,
            ),
          ),
          SliverToBoxAdapter(
            key: _uniqueKey,
            child: Container(
              height: 250,
              color: Colors.blue,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 250,
              color: Colors.white,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 250,
              color: Colors.blue.withOpacity(.5),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 250,
              color: Colors.white,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 250,
              color: Colors.blue.withOpacity(.5),
            ),
          ),
        ],
      ),
    );
  }
}
