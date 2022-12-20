import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:orora/farm_registration.dart';
import 'package:orora/livestock_list.dart';

class FarmListScreen extends StatefulWidget{
  const FarmListScreen({super.key});

  @override
  State<FarmListScreen> createState() => _FarmListScreenState();
}

class _FarmListScreenState extends State<FarmListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Farms"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: [
          Row(
            children: [
              Expanded(child: SizedBox(
                height: 200,
                child: Card(clipBehavior: Clip.antiAliasWithSaveLayer,color: const Color(0xffE5E4F9),shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                ),child: InkWell(
                  onTap: (){
                    Navigator.push(context, CupertinoPageRoute(builder: (context)=>const FarmRegistration()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                         Text("Add New Farm",style: TextStyle(
                            fontSize: 14,
                          fontWeight: FontWeight.bold
                        ),textAlign: TextAlign.center,),
                         Padding(
                           padding: EdgeInsets.all(10.0),
                           child: Icon(Icons.add,size: 80,),
                         )
                      ],
                    ),
                  ),
                ),),
              )),
              Expanded(child: SizedBox(
                height: 200,
                child: Card(clipBehavior: Clip.antiAliasWithSaveLayer,color: const Color(0xffD5EAE3),shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                ),child: InkWell(
                  onTap: (){
                    Navigator.push(context, CupertinoPageRoute(builder: (context)=>const LivestockList()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Beef Goat Farm",style: TextStyle(
                            fontSize: 14
                        ),textAlign: TextAlign.center,),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("215",style: TextStyle(
                              fontSize: 29,
                              fontWeight: FontWeight.w700
                          ),),
                        ),
                        Expanded(child: Image.asset("assets/goat.png")),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              style: Theme.of(context).textTheme.bodyLarge,
                              children: const [
                                WidgetSpan(child: Icon(Icons.cake,size: 15,)),
                                TextSpan(text: "Kayonza, Gahini")
                              ]
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),),
              )),
              Expanded(child: SizedBox(
                height: 200,
                child: Card(clipBehavior: Clip.antiAliasWithSaveLayer,color: const Color(0xffD5EAE3),shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                ),child: InkWell(
                  onTap: (){
                    Navigator.push(context, CupertinoPageRoute(builder: (context)=>const FarmListScreen()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Beef Cow Farm",style: TextStyle(
                            fontSize: 14
                        ),textAlign: TextAlign.center,),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("25",style: TextStyle(
                              fontSize: 29,
                              fontWeight: FontWeight.w700
                          ),),
                        ),
                        Expanded(child: Image.asset("assets/cow.png")),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              style: Theme.of(context).textTheme.bodyLarge,
                              children: const [
                                WidgetSpan(child: Icon(Icons.cake,size: 15,)),
                                TextSpan(text: "Kayonza, Gahini")
                              ]
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),),
              )),
            ],
          )
        ],
      ),
    );
  }
}