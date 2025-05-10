import 'package:flutter/material.dart';
import 'package:shopapp/global_variables.dart';
import 'package:shopapp/product_cart.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> filters = const [
    "addias"," puma ", " nike", " bata" , "luma ", 'tuma'
  ];
   late String  selectedFilter;
   @override
   void initState(){
    super.initState();
    selectedFilter = filters[0];
   }

  @override
  Widget build(BuildContext context) {
   const  border  = OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromRGBO(225,225, 225, 1)
                        ),
                        borderRadius: BorderRadius.horizontal(left: Radius.circular(50),
                       
                        )
                        
                       );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
                      hintText: "  search",
                
                       prefix: Icon(Icons.search),
                       border: border,
                        enabledBorder: border,
                    ),

                  ) )
                 
          
                ],
              ), 
               SizedBox( height: 120,
                 child: ListView.builder(itemCount: filters.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index){
                  final filter = filters[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                           selectedFilter = filter;
                        });
                      
                      },
                      child: Chip(
                        backgroundColor: selectedFilter == filter ? Theme.of(context).colorScheme.primary: const Color.fromRGBO(245,247,249,1) ,
                        label: Text(filter),)),
                  );
                 }
                 ),
               ),
               Expanded(
                 child: ListView.builder(
                  itemCount: products.length ,
                  itemBuilder: (context, index){
                    final product = products[index];
                    return ProductCart(title: 'hi');
                 
                  }),
               )
            ],
          ),
        ) ),
      );
    
  }
}