import 'package:flutter/material.dart';

void main() => runApp( const MyApp());

class MyApp extends StatelessWidget {


   const MyApp({super.key});
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Examen - Kedwin García',
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Examen2 - Kedwin García"),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              constraints: BoxConstraints(
                maxHeight: MediaQuery.of(context).size.height*0.85,
              ),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Haz una pregunta",
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.send),
                      onPressed: () {
                        final baseURL = "https://yesno.wtf/api";
                        
                      },
                      )
                  ),
                ),
              ),
            ),
          )
        ),
      );
  }
}