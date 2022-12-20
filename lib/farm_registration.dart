import 'package:flutter/material.dart';
import 'package:orora/input_dec.dart';

class FarmRegistration extends StatefulWidget{
  const FarmRegistration({super.key});

  @override
  State<FarmRegistration> createState() => _FarmRegistrationState();
}

class _FarmRegistrationState extends State<FarmRegistration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Farm Registration"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: TextFormField(decoration: iDecoration(hint: "Farm name"),),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: DropdownButtonFormField<String>(items: ["Category 1","Category 2"].map((e) => DropdownMenuItem(value: e,child: Text(e),)).toList(), onChanged: (val){

            },decoration: iDecoration(hint: "Category"),),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 8),
            child: Text("Address"),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: DropdownButtonFormField<String>(items: ["Southern","Northern"].map((e) => DropdownMenuItem(value: e,child: Text(e),)).toList(), onChanged: (val){

            },decoration: iDecoration(hint: "Province"),),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: DropdownButtonFormField<String>(items: ["Rubavu","Huye"].map((e) => DropdownMenuItem(value: e,child: Text(e),)).toList(), onChanged: (val){

            },decoration: iDecoration(hint: "District"),),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: DropdownButtonFormField<String>(items: ["Mbazi","Ngoma"].map((e) => DropdownMenuItem(value: e,child: Text(e),)).toList(), onChanged: (val){

            },decoration: iDecoration(hint: "Sector"),),
          ),
          ElevatedButton(onPressed: (){}, child: Text("Register"))
        ],
      ),
    );
  }
}