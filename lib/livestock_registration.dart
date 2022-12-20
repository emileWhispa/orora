import 'package:flutter/material.dart';

import 'input_dec.dart';

class LivestockRegistration extends StatefulWidget{
  const LivestockRegistration({super.key});

  @override
  State<LivestockRegistration> createState() => _LivestockRegistrationState();
}

class _LivestockRegistrationState extends State<LivestockRegistration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Livestock Registration"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: TextFormField(decoration: iDecoration(hint: "Livestock ID"),),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: DropdownButtonFormField<String>(items: ["Category 1","Category 2"].map((e) => DropdownMenuItem(value: e,child: Text(e),)).toList(), onChanged: (val){

            },decoration: iDecoration(hint: "Category"),),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: DropdownButtonFormField<String>(items: ["Male","Female"].map((e) => DropdownMenuItem(value: e,child: Text(e),)).toList(), onChanged: (val){

            },decoration: iDecoration(hint: "Gender"),),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: DropdownButtonFormField<String>(items: ["Rubavu","Huye"].map((e) => DropdownMenuItem(value: e,child: Text(e),)).toList(), onChanged: (val){

            },decoration: iDecoration(hint: "Breed"),),
          ),
          ElevatedButton(onPressed: (){}, child: const Text("Register"))
        ],
      ),
    );
  }
}