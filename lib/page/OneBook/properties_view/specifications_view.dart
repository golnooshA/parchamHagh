import 'package:flutter/material.dart';

class SpecificationsView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: EdgeInsets.only(bottom: 20),
      clipBehavior: Clip.antiAlias,
      color: Colors.white,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Padding(
        padding: EdgeInsets.all(20),
        child: SizedBox(
          height: 300,
          child: ListView.builder(
            itemCount: 20,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
                  children: [

                    GestureDetector(
                      child: Text("فصل 1",
                          style: TextStyle(
                              fontSize: 12,
                              color: Color.fromARGB(
                                  255, 54, 202, 218))),
                      onTap: (){},
                    ),
                    Text("12 min",
                        style: TextStyle(
                            fontSize: 12, color: Colors.black)),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
