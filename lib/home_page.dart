import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text("shoes\n collection", style: TextStyle(fontFamily: 'Lato', fontWeight: FontWeight.bold,fontSize: 35),),
                  ),
                  Expanded(child: TextField(
                    decoration: InputDecoration(
                      hintText: "search",
                
                       prefix: Icon(Icons.search)
                    ),
                  ) )
                 
          
                ],
              )
            ],
          ),
        ) ),
      );
    
  }
}