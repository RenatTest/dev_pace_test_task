import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyListPage(),
    );
  }
}

class MyListPage extends StatelessWidget {
  final items = 15;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.all(30.0),
            child: Image.asset(
              'assets/logo.png',
            ),
          ),
          items == 0
              ? Text(
                  'No items',
                  style: TextStyle(fontSize: 18.0),
                )
              : Expanded(
                  child: RawScrollbar(
                    radius: Radius.circular(5),
                    thumbColor: Colors.black,
                    thickness: 5,
                    isAlwaysShown: true,
                    child: GridView.count(
                      physics: BouncingScrollPhysics(),
                      childAspectRatio: 2.0,
                      padding: const EdgeInsets.only(
                        left: 10,
                        right: 10,
                      ),
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      crossAxisCount: 2,
                      children: List.generate(items, (index) {
                        return Container(
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.black, width: 5)),
                          child: Center(
                            child: Text(
                              'Item ${index + 1}',
                              style: TextStyle(fontSize: 18.0),
                            ),
                          ),
                        );
                      }),
                    ),
                  ),
                )
        ],
      ),
    );
  }
}
