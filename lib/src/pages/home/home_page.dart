import 'package:flutter/material.dart';

import '../../components/gridview_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: Stack(children: [
      Container(
        height: size.height * .3,
        decoration: const BoxDecoration(color: Colors.white),
      ),
      SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(25.0, 0, 25.0, 25.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(width: 100, 'assets/images/logo_ceos.png'),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          IconButton(
                              onPressed: () => {},
                              icon: Icon(Icons.search, color: Colors.green)),
                          IconButton(
                              onPressed: () => {},
                              icon: Icon(
                                Icons.more_vert,
                                color: Colors.green,
                              )),
                        ],
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              const Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Olá, UserName",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 26,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "06/06/2023",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 3,
                  shrinkWrap: true,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5,
                  children: [
                    GridViewItem("assets/images/stock_icon.png", "/stock"),
                    GridViewItem("assets/images/stock_icon.png", "/stock"),
                  ],
                ),
              )
            ],
          ),
        ),
      )
    ]));
  }
}
