import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'ZapShare'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title,style: TextStyle(color: Colors.purple),),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.file_upload_outlined)),
              Tab(icon: Icon(Icons.code_sharp)),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(child: Text("Share Files Here")),
            Center(child: Text("Paste Code Here")),
          ],
        ),
      ),
    );
  }
}
