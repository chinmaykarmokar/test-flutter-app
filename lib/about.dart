import 'package:flutter/cupertino.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  List<dynamic>? jsonList;
  @override

  void initState() {
    // TODO: implement initState
    super.initState();
    fetchData();
  }

  void fetchData() async{
    var dio = Dio();

    var response = await dio.get("https://jsonplaceholder.typicode.com/users");
    setState(() {
      jsonList = response.data as List;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: jsonList == null ? 0 : jsonList!.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: ListTile(
              title: Text(jsonList?[index]['name'] ?? ''),
              subtitle: Text(jsonList?[index]['email'] ?? '')
            ),
          );
        },
      )
    );
  }
}