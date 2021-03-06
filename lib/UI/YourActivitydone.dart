import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'YourActivity.dart';

class youractivitydone extends StatelessWidget {
  var location=["Airport Road, Kolkata", "Lake Gardens, Kolkata", "Nazeerabad, Kolakata"];
  var names=["Padmini Singh","Arghya Biswas","Ganga Nair","Gaurav S"];
  var links=["https://images.unsplash.com/photo-1563114773-84221bd62daa?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80",
  "https://images.unsplash.com/photo-1520467795206-62e33627e6ce?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80",
  "https://images.unsplash.com/photo-1457386335663-6115e304bd29?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=967&q=80"];
  var obj=["Watermelon","Books","Muesli"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(246, 245, 245, 1),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 20, top: 60),
            child: Text("Your Activity",
                style: TextStyle(
                    fontFamily: 'OpenSans',
                    color: Color(0xFF2D0C57),
                    fontSize: 30,
                    fontWeight: FontWeight.bold)),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 3,
              itemBuilder: (context, position) {
                return Card(
                  elevation: 0,
                  color: Color.fromRGBO(246, 245, 245, 1),
                  margin: EdgeInsets.all(20),
                  child: Stack(
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Delivered To:",
                              style: TextStyle(
                                  fontFamily: 'OpenSans',
                                  color: Color(0xFF2D0C57),
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(
                            height: 10,
                          ),
                          Text(location[position],
                              style: TextStyle(
                                  fontFamily: 'OpenSans',
                                  color: Colors.grey,
                                  fontSize: 17)),
                          Text(names[position],
                              style: TextStyle(
                                  fontFamily: 'OpenSans',
                                  color: Colors.grey,
                                  fontSize: 17)),
                        
                        ],
                      ),
                      //Divider(color: Colors.black,height: 200,),
                      Row(
                        children: <Widget>[
                          SizedBox(width: 280),
                          Column(
                            children: <Widget>[
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 60,
                                width: 80,
                                decoration: BoxDecoration(
                                    color: Color.fromRGBO(246, 245, 245, 1),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10.0)),
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            links[position]),
                                        fit: BoxFit.cover)),
                              ),
                              Text(
                                obj[position],
                                style: TextStyle(
                                    fontFamily: 'OpenSans',
                                    color: Color(0xFF2D0C57),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w300),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Container(
                          padding: EdgeInsets.only(top: 100),
                          child: Divider(
                            color: Colors.black,
                          ))
                    ],
                  ),
                );
              },
            ),
          ),

          ////////////////////////////
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color.fromRGBO(114, 3, 255, 0.5),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("")),
          BottomNavigationBarItem(icon: Icon(Icons.dashboard), title: Text("")),
          BottomNavigationBarItem(icon: Icon(Icons.person), title: Text("")),
        ],
        onTap: (int index) => moveto(index, context),
        backgroundColor: Color.fromRGBO(246, 245, 245, 1),
      ),
    );
  }
}

moveto(index, cont) {
  if (index == 0) {
    Navigator.push(
        cont, MaterialPageRoute(builder: (context) => youractivity()));
  } else if (index == 2) {
    // Navigator.push(
    //     cont, MaterialPageRoute(builder: (context) => NewDonation()));
  }
}
