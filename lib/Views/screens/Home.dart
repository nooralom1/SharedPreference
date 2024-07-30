import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sharedpreference/global_widgets/global_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 0;
  loadCounter() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    setState(() {
      counter = pref.getInt("counter")??0;
    });
  }
  increment() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    setState(() {
      counter++;
      pref.setInt("counter", counter);
    });
  }
  @override
  void initState() {
    loadCounter();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CustomGlobalText(text: 'Home',textColor: Colors.white,),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("You have clicked $counter times",style: const TextStyle(fontSize: 30),)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: "Increment",
          onPressed: increment,
          child: const Icon(Icons.add),
      ),
    );
  }
}
