import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'Recent.dart';
import 'fav.dart';

class HomeSceen extends StatefulWidget {
  const HomeSceen({super.key});

  @override
  State<HomeSceen> createState() => _HomeSceenState();
}

class _HomeSceenState extends State<HomeSceen> with SingleTickerProviderStateMixin {
  late TabController _tabController ;
  @override
  void initState() {
     _tabController = TabController(length: 2, vsync: this);
     _tabController.addListener(() { 
      setState(() {
        
      });
     });
     super.initState();
  }
  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: 200,
          child: SingleChildScrollView(
           child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(9)
                    ),
                    height: MediaQuery.of(context).size.height * 0.08,
                    
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                // color:Colors.blue,
                                height: MediaQuery.of(context).size.height * 0.06,
                                width: MediaQuery.of(context).size.width * 0.12,
                                child: const Stack(
                                  children: [
                                    CircleAvatar(
                                      radius: 20,
                                      child: Center(
                                        child: Icon(Icons.person),
                                      ),
                                    ),
                                    Positioned(
                                      top: 2,
                                      right: 1,
                                      child: CircleAvatar(
                                        
                                        radius: 9.5,
                                        child: Center(
                                          child: Text(
                                            "1",
                                            style: TextStyle(
                                              fontSize: 9,
                                              color: Colors.white,
                                            ),
                                            ),
                                        ),
                                        backgroundColor: Colors.blue,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const Text(
                              "Recent ",
                              style: TextStyle(color: Colors.white),
                            ),
                            
                          ],
                        ),
                        IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: TabBar(
                    controller: _tabController,
                    tabs:  [
                      Tab(child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:  [Icon(Icons.refresh),
                        const SizedBox(
                          width: 6,
                        ),
                        _tabController.index == 0 
                        ? const Text("Recent")
                        :const SizedBox(),
                        ]),),
                     
                       Tab(child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:  [Icon(Icons.favorite),
                        const SizedBox(
                          width: 6,
                        ),
                        _tabController.index == 1 
                        ? const Text("Favourite")
                        :const SizedBox(),
                        ]),),
                    ],
                  ),
                ),
                Container(
                 height:MediaQuery.of(context).size.height*1.2,
                  child: TabBarView(
                    controller: _tabController,
                    children: const [
                      SingleChildScrollView(child: Recent()),
                      FavoriteScreen(),
                    ],
                  ),
                ),
              
              ],
              
            ),
          ),
        ),
      ),
    );
  }
}
