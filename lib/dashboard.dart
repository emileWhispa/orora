import 'package:flutter/material.dart';
import 'package:orora/line_chart.dart';

class Dashboard extends StatefulWidget{
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Stack(
            children: [
              Container(
                height: 260,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor
                ),
                height: 200,
              ),
              Positioned.fill(child: Padding(
                padding: const EdgeInsets.all(15.0).copyWith(top: MediaQuery.of(context).padding.top),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Hello, Hubert",style: Theme.of(context).textTheme.titleLarge?.copyWith(
                                color: Colors.white
                              ),),
                              Text("This is how your business is doing",style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                                  color: Colors.white
                              ),),
                            ],
                          ),
                        ),
                         Expanded(child: TextField(decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.black12,
                          contentPadding: const EdgeInsets.symmetric(horizontal: 15),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(35),
                            borderSide: BorderSide.none
                          ),
                          suffixIcon: const Icon(Icons.search)
                        ),))
                      ],
                    ),
                    Card(
                      margin: EdgeInsets.zero.copyWith(top: 20),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 35),
                        child: Row(
                          children: [
                            Expanded(child: Row(
                              children: [
                                Image.asset("assets/expenses.png"),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 4),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: const [
                                        Text("283,520 RWF",style: TextStyle(
                                          color: Color(0xffD80404),
                                          fontSize: 17,
                                          fontWeight: FontWeight.w700
                                        ),),
                                        Text("Expenses")
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            )),
                            Expanded(child: Row(
                              children: [
                                Image.asset("assets/sales.png"),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 4),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: const [
                                        Text("625,500 RWF",style: TextStyle(
                                          color: Color(0xffD80404),
                                          fontSize: 17,
                                          fontWeight: FontWeight.w700
                                        ),),
                                        Text("Sales")
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ))
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ))
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Expanded(child: SizedBox(
                  height: 200,
                  child: Card(color: const Color(0xffD5EAE3),child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("My Farms",style: TextStyle(
                          fontSize: 14
                        ),textAlign: TextAlign.center,),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("3",style: TextStyle(
                              fontSize: 40,
                            fontWeight: FontWeight.w700
                          ),),
                        ),
                        Image.asset("assets/cow.png")
                      ],
                    ),
                  ),),
                )),
                Expanded(child: SizedBox(
                  height: 200,
                  child: Card(color: const Color(0xffE5E4F9),child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("My Herds",style: TextStyle(
                          fontSize: 14
                        ),textAlign: TextAlign.center,),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("13",style: TextStyle(
                              fontSize: 40,
                            fontWeight: FontWeight.w700
                          ),),
                        ),
                        Image.asset("assets/clop.png")
                      ],
                    ),
                  ),),
                )),
                Expanded(child: SizedBox(
                  height: 200,
                  child: Card(color: const Color(0xffFDE9D0),child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Farm Production",style: TextStyle(
                          fontSize: 14
                        ),textAlign: TextAlign.center,),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("40",style: TextStyle(
                              fontSize: 40,
                            fontWeight: FontWeight.w700
                          ),),
                        ),
                        Image.asset("assets/production.png")
                      ],
                    ),
                  ),),
                )),
              ],
            ),
          ),
          const Padding(padding: EdgeInsets.all(15),child: SizedBox(height: 250,child: LineChartSample1()),),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Expanded(child: Card(
                  child: Image.asset("assets/ellipse.png"),
                )),
                Expanded(child: Card(child: Image.asset("assets/reports.png")))
              ],
            ),
          ),
        ],
      ),
    );
  }
}