import 'package:chatting_aap/services/model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late ApiData items;
  bool isloading=true;
  @override
  void initState() {
    super.initState();
    jsonresponse();
  }

  void jsonresponse()async{
    var response=await rootBundle.loadString("assets/json.json");
    setState(() {
      items=apiDataFromjson(response);
      isloading=false;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Local Json'),
      backgroundColor: Colors.amber[100],
      ),
      body:isloading?const Center(child: CircularProgressIndicator(),): Center(child: Column(children: [
        Text(items.name.toString()),
        Text(items.age.toString()),
        Text(items.ismarried.toString()),
        Text(items.hobbies[0].toString()),
      ]),)
    );
  }
}