//import 'dart:nativewrappers/_internal/vm/lib/ffi_patch.dart';
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
      debugShowCheckedModeBanner: false,
      title: 'First UI',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'First UI in NTI'),
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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            " Today Task ",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        leading: Icon(Icons.arrow_back),
        actions: [
          Container(
            //padding: EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 158, 216, 216),
                borderRadius: BorderRadius.circular(15)),
            child: Row(
              children: [
                Icon(Icons.add),
                Text('Add'),
              ],
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                  width: 60,
                  height: 20,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(50)),
                  child: Center(child: Text("All"))),
              Container(
                  width: 60,
                  height: 20,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(179, 179, 171, 171),
                      borderRadius: BorderRadius.circular(50)),
                  child: Center(child: Text("Future"))),
              Container(
                  width: 60,
                  height: 20,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(179, 179, 171, 171),
                      borderRadius: BorderRadius.circular(50)),
                  child: Center(child: Text("Missed"))),
              Container(
                  width: 60,
                  height: 20,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(179, 179, 171, 171),
                      borderRadius: BorderRadius.circular(50)),
                  child: Center(child: Text("Done")))
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Text("Results"),
                SizedBox(
                  width: 50,
                ),
                Container(
                  child: Text("5"),
                  color: Colors.cyanAccent,
                )
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 218, 216, 216),
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(padding: EdgeInsets.all(20)),
                          Icon(Icons.shopping_bag),
                          SizedBox(
                            width: 10,
                          ),
                          Text("World Task"),
                          SizedBox(
                            width: 150,
                          ),
                          Container(
                              width: 60,
                              height: 20,
                              decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 236, 229, 229),
                                  borderRadius: BorderRadius.circular(50)),
                              child: Center(child: Text("Future"))),
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                            //color: Colors.white60,
                            ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Padding(padding: EdgeInsets.all(20)),
                                Text("Go To superMarket to buy some milk &eggs")
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 218, 216, 216),
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(padding: EdgeInsets.all(20)),
                          Icon(Icons.shopping_bag),
                          SizedBox(
                            width: 10,
                          ),
                          Text("World Task"),
                          SizedBox(
                            width: 150,
                          ),
                          Container(
                              width: 60,
                              height: 20,
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(50)),
                              child: Center(child: Text("Done"))),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(padding: EdgeInsets.all(20)),
                          Text("Go To superMarket to buy some milk &eggs")
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 218, 216, 216),
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(padding: EdgeInsets.all(20)),
                          Icon(Icons.home),
                          SizedBox(
                            width: 10,
                          ),
                          Text("Home Task"),
                          SizedBox(
                            width: 150,
                          ),
                          Container(
                              width: 60,
                              height: 20,
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(50)),
                              child: Center(child: Text("Done"))),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(padding: EdgeInsets.all(20)),
                          Text("Add new feature for Do it app and commit it")
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 218, 216, 216),
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(padding: EdgeInsets.all(20)),
                          Icon(Icons.person),
                          SizedBox(
                            width: 10,
                          ),
                          Text("Personal Task"),
                          SizedBox(
                            width: 110,
                          ),
                          Container(
                              width: 80,
                              height: 20,
                              decoration: BoxDecoration(
                                  color: Colors.cyanAccent,
                                  borderRadius: BorderRadius.circular(50)),
                              child: Center(child: Text("In Progress"))),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(padding: EdgeInsets.all(20)),
                          Text("Improve my English skills by trying to speek")
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 218, 216, 216),
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(padding: EdgeInsets.all(20)),
                          Icon(Icons.home),
                          SizedBox(
                            width: 10,
                          ),
                          Text("Home Task"),
                          SizedBox(
                            width: 150,
                          ),
                          Container(
                              width: 60,
                              height: 20,
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(50)),
                              child: Center(child: Text("Done"))),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(padding: EdgeInsets.all(20)),
                          Text("Add new feature for Do it app and commit it")
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
