import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:orora/livestock_registration.dart';

class LivestockList extends StatelessWidget{
  const LivestockList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Farm Livestock list"),
      ),
      body: GridView.builder(padding: const EdgeInsets.all(12),gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3), itemBuilder: (context,index){

        if(index == 0){
          return SizedBox(
            height: 200,
            child: Card(clipBehavior: Clip.antiAliasWithSaveLayer,color: const Color(0xffE5E4F9),shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
            ),child: InkWell(
              onTap: (){
                Navigator.push(context, CupertinoPageRoute(builder: (context)=>const LivestockRegistration()));
              },
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text("Add New Livestock",style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold
                    ),textAlign: TextAlign.center,),
                    Padding(
                      padding: EdgeInsets.only(top: 0.0),
                      child: Icon(Icons.add,size: 50,),
                    )
                  ],
                ),
              ),
            ),),
          );
        }

        return SizedBox(
          height: 200,
          child: Card(clipBehavior: Clip.antiAliasWithSaveLayer,color: const Color(0xffD5EAE3),shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
          ),child: InkWell(
            onTap: (){

            },
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   Text("#OROOO021$index",style: const TextStyle(
                      fontSize: 14
                  ),textAlign: TextAlign.center,),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Image.asset("assets/goat.png"),
                  )
                ],
              ),
            ),
          ),),
        );
      }),
    );
  }

}