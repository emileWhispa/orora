

import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget{
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text("Your Profile"),
      ),
      extendBodyBehindAppBar: true,
      body: DefaultTextStyle.merge(
        style: const TextStyle(color: Colors.white),
        child: Container(
          decoration:  BoxDecoration(
              gradient: LinearGradient(begin: Alignment.topCenter,end: Alignment.bottomCenter,colors: [
                const Color(0xff617c0e),
                Theme.of(context).primaryColor,
                Theme.of(context).primaryColor,
                Colors.white,
                Colors.white,
                Colors.white,
              ])
          ),
          child: ListView(
            children: [
              const Center(
                child: CircleAvatar(
                  radius: 40,
                  child: Text("D H"),
                ),
              ),

              const Center(child: Padding(
                padding: EdgeInsets.all(15.0),
                child: Text("Dev Hubert",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
              )),
              Card(
                elevation: 0,
                margin: EdgeInsets.zero,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20)
                    )
                ),
                child: Padding(padding: const EdgeInsets.all(20),child: Column(
                  children: [
                    Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color: Color(0xffDADADA)
                                      )
                                  )
                              ),
                              padding: const EdgeInsets.symmetric(vertical: 5),
                              child: Row(
                                children: [
                                  const CircleAvatar(radius:20,child: Icon(Icons.business),),
                                  Expanded(child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.stretch,
                                      children: const [
                                        Text("Account Information",style: TextStyle(
                                            fontSize: 16
                                        ),),
                                        SizedBox(height: 5,),
                                        Text("Business Type",style: TextStyle(
                                            color: Color(0xff01A02D)
                                        ),),
                                      ],
                                    ),
                                  )),
                                  const Icon(Icons.arrow_forward_ios,color: Color(0xffB6ADAD),)
                                ],
                              ),
                            ),
                            Container(
                              decoration: const BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color: Color(0xffDADADA)
                                      )
                                  )
                              ),
                              padding: const EdgeInsets.symmetric(vertical: 5),
                              child: Row(
                                children: [
                                  const CircleAvatar(radius:20,child: Icon(Icons.person),),
                                  Expanded(child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.stretch,
                                      children: const [
                                        Text("Personal Information",style: TextStyle(
                                            fontSize: 16
                                        ),),
                                        SizedBox(height: 5,),
                                        Text("Profile, Address, Email, Phone",style: TextStyle(
                                            color: Color(0xff403939)
                                        ),),
                                      ],
                                    ),
                                  )),
                                  const Icon(Icons.arrow_forward_ios,color: Color(0xffB6ADAD),)
                                ],
                              ),
                            ),
                            Container(
                              decoration: const BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color: Color(0xffDADADA)
                                      )
                                  )
                              ),
                              padding: const EdgeInsets.symmetric(vertical: 5),
                              child: Row(
                                children: [
                                  const CircleAvatar(radius:20,child: Icon(Icons.lock),),
                                  Expanded(child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.stretch,
                                      children: const [
                                        Text("Security & Access",style: TextStyle(
                                            fontSize: 16
                                        ),),
                                        SizedBox(height: 5,),
                                        Text("Login and access details",style: TextStyle(
                                            color: Color(0xff403939)
                                        ),),
                                      ],
                                    ),
                                  )),
                                  const Icon(Icons.arrow_forward_ios,color: Color(0xffB6ADAD),)
                                ],
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(vertical: 5),
                              child: Row(
                                children: [
                                  const CircleAvatar(radius:20,child: Icon(Icons.question_mark),),
                                  Expanded(child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.stretch,
                                      children: const [
                                        Text("Help & Support",style: TextStyle(
                                            fontSize: 16
                                        ),),
                                        SizedBox(height: 5,),
                                        Text("Search for help topics or get in touch",style: TextStyle(
                                            color: Color(0xff403939)
                                        ),),
                                      ],
                                    ),
                                  )),
                                  const Icon(Icons.arrow_forward_ios,color: Color(0xffB6ADAD),)
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Card(
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)
                        ),child:
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 15.0),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                            children: [
                              const CircleAvatar(radius:20,backgroundColor: Colors.redAccent,child: Icon(Icons.logout,color: Colors.white,),),
                              Expanded(child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.stretch,
                                  children: const [
                                    Text("Log out",style: TextStyle(
                                        fontSize: 16
                                    ),),
                                    SizedBox(height: 5,),
                                  ],
                                ),
                              )),
                              const Icon(Icons.arrow_forward_ios,color: Color(0xffB6ADAD),)
                            ],
                          ),
                        ),
                      ),),
                    )
                  ],
                ),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}