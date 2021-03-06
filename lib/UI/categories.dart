import 'package:covidist/UI/NoncontactDelivery.dart';
import 'package:covidist/UI/checkout.dart';
import 'package:covidist/UI/new_donation.dart';
import 'package:covidist/UI/request_donation.dart';
import 'package:covidist/UI/vegetable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'yourcart.dart';

class categories extends StatefulWidget {
  @override
  _categoriesState createState() => _categoriesState();
}

class _categoriesState extends State<categories> {
  var names = [
    'Vegetables',
    'Fruits',
    'Bread',
    'Sweets',
    'Beverages',
    "Clothes",
    "Medicines",
    "Books"
  ];

  var img = [
    'https://images.unsplash.com/photo-1518843875459-f738682238a6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1926&q=80',
    'https://images.unsplash.com/photo-1437750769465-301382cdf094?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1055&q=80',
    'https://images.unsplash.com/photo-1556471013-0001958d2f12?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=823&q=80',
    'https://images.unsplash.com/photo-1545015451-f05567aa6bcc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80',
    'https://images.unsplash.com/photo-1495474472287-4d71bcdd2085?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80',
    'https://images.unsplash.com/photo-1484502249930-e1da807099a5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=967&q=80',
    'https://images.unsplash.com/photo-1584362917165-526a968579e8?ixlib=rb-1.2.1&auto=format&fit=crop&w=1082&q=80',
    'https://images.unsplash.com/photo-1531988042231-d39a9cc12a9a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80'
  ];

  int _index = 0;
  final List<Widget> _children = [RequestDonation()];

  void _onTapped(int index) {
    setState(() {
      _index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(246, 245, 245, 1),
      body: Stack(
        children: <Widget>[
          Container(
            alignment: Alignment.topRight,
            padding: EdgeInsets.only(right: 20),
            child: Container(
              width: 55,
              height: 55,
              margin: EdgeInsets.only(top: 45, left: 260),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(50.0)),
                  color: Color(0xff524236)),
              child: new IconButton(
                icon: new Icon(
                  Icons.person_outline,
                  color: Colors.white,
                  size: 35,
                ),
                onPressed: () {},
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 40, left: 10),
                alignment: Alignment.topLeft,
                child: new IconButton(
                  icon: new Icon(
                    Icons.arrow_back_ios,
                    color: Color(0xFF2D0C57),
                  ),
                  onPressed: () {
                    Navigator.pop(
                        context,
                        MaterialPageRoute(
                            builder: (context) => noncontactdelivery()));
                  },
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  "Categories",
                  style: TextStyle(
                    fontFamily: 'OpenSans',
                    color: Color(0xFF2D0C57),
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                height: 80,
                padding: EdgeInsets.only(top: 30, right: 20, left: 20),
                child: new TextFormField(
                  decoration: new InputDecoration(
                    border: new OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(50.0),
                      ),
                    ),
                    contentPadding: EdgeInsets.only(top: 10),
                    filled: true,
                    prefixIcon:
                        new Icon(Icons.search, color: Color(0xFF2D0C57)),
                    hintStyle: new TextStyle(
                      color: Colors.grey[600],
                      fontFamily: 'OpenSans',
                      fontWeight: FontWeight.normal,
                    ),
                    hintText: "Search",
                    fillColor: Colors.white70,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              new Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  children: List.generate(8, (index) {
                    return Center(
                      child: Container(
                        padding: EdgeInsets.only(top: 10),
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Stack(
                            children: <Widget>[
                              Container(
                                height: 200,
                                width: 170,
                                color: Colors.white,
                                child: InkWell(
                                  splashColor: Colors.grey,
                                  onTap: () {
                                    Navigator.of(context)
                                        .pushNamed('/vegetables');
                                  },
                                  child: Container(
                                    height: 130,
                                    alignment: Alignment.topCenter,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    child: Image.network(img[index],
                                        width: 170,
                                        height: 140,
                                        fit: BoxFit.fill),
                                  ),
                                ),
                              ),
                              Container(
                                //alignment: Alignment.bottomLeft,
                                margin: EdgeInsets.only(top: 145, left: 5),
                                child: new Text(
                                  "  " + names[index],
                                  style: TextStyle(
                                    fontFamily: 'OpenSans',
                                    color: Color(0xFF2D0C57),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color.fromRGBO(114, 3, 255, 0.5),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.dashboard), title: Text("")),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), title: Text("")),
          BottomNavigationBarItem(icon: Icon(Icons.add), title: Text("")),
        ],
        onTap: (int index) => moveto(index, context),
        backgroundColor: Color.fromRGBO(246, 245, 245, 1),
      ),
    );
  }
}

moveto(index, cont) {
  if (index == 1) {
    Navigator.push(cont, MaterialPageRoute(builder: (context) => YourCart()));
  } else if (index == 2) {
    Navigator.push(
      cont,
      MaterialPageRoute(
        builder: (context) => RequestDonation(),
      ),
    );
  }
}
