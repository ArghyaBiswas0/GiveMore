import 'dart:io';

import 'package:camera/new/src/support_android/camera.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class NewDonation extends StatefulWidget {
  @override
  _NewDonationState createState() => _NewDonationState();
}

class _NewDonationState extends State<NewDonation> {
  File _image;
  Future getImage(bool isCamera) async {
    File image;
    if (isCamera) {
      image = ImagePicker.pickImage(source: ImageSource.camera) as File;
    } else {
      image = ImagePicker.pickImage(source: ImageSource.gallery) as File;
    }
    setState(() {
      _image = image;
    });
  }

  int _n = 0;
  @override
  Widget build(BuildContext context) {
    void add() {
      setState(() {
        _n++;
      });
    }

    void minus() {
      setState(() {
        if (_n != 0) _n--;
      });
    }

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Color.fromRGBO(246, 245, 245, 1.0),
        leading: IconButton(
          color: Colors.black54,
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      backgroundColor: Color.fromRGBO(246, 245, 245, 1.0),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child: Form(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'New Donation',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Color.fromRGBO(45, 12, 87, 1.0),
                        fontFamily: 'OpenSans',
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 1),
                    labelStyle: TextStyle(
                      color: Color.fromRGBO(45, 12, 87, 1.0),
                      fontFamily: 'OpenSans',
                      fontWeight: FontWeight.normal,
                    ),
                    labelText: "   Title",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  validator: (val) {
                    if (val.isEmpty) {
                      return "Enter a valid Title";
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 1),
                    labelStyle: TextStyle(
                      color: Color.fromRGBO(45, 12, 87, 1.0),
                      fontFamily: 'OpenSans',
                      fontWeight: FontWeight.normal,
                    ),
                    labelText: "   Tags",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  validator: (val) {
                    if (val.isEmpty) {
                      return "Enter a valid Tags";
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        'Quantity:',
                        style: TextStyle(
                          color: Color.fromRGBO(45, 12, 87, 1.0),
                          fontFamily: 'OpenSans',
                          fontWeight: FontWeight.normal,
                          fontSize: 25,
                        ),
                      ),
                    ),
                    Text(
                      '$_n',
                      style: TextStyle(
                        fontSize: 30,
                        fontFamily: 'OpenSans',
                        fontWeight: FontWeight.normal,
                        color: Color.fromRGBO(45, 12, 87, 1.0),
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Expanded(
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            FloatingActionButton(
                              heroTag: '1',
                              shape: RoundedRectangleBorder(
                                side: BorderSide(width: 1),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(50.0),
                                ),
                              ),
                              onPressed: add,
                              child: Icon(
                                Icons.add,
                                color: Color.fromRGBO(45, 12, 87, 1.0),
                              ),
                              backgroundColor: Colors.white,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            FloatingActionButton(
                              heroTag: '2',
                              shape: RoundedRectangleBorder(
                                side: BorderSide(width: 1),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(50.0),
                                ),
                              ),
                              onPressed: minus,
                              child: new Icon(
                                IconData(0xe15b, fontFamily: 'MaterialIcons'),
                                color: Color.fromRGBO(45, 12, 87, 1.0),
                              ),
                              backgroundColor: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  validator: (val) {
                    if (val.isEmpty && val.length < 10) {
                      return "Enter a valid Description";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    labelStyle: TextStyle(
                      color: Color.fromRGBO(45, 12, 87, 1.0),
                      fontFamily: 'OpenSans',
                      fontWeight: FontWeight.normal,
                      height: 5,
                    ),
                    labelText: "Description",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Upload photos',
                      style: TextStyle(
                        color: Color.fromRGBO(45, 12, 87, 1.0),
                        fontFamily: 'OpenSans',
                        fontWeight: FontWeight.normal,
                        fontSize: 25,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    FloatingActionButton(
                      heroTag: '3',
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1),
                        borderRadius: BorderRadius.all(
                          Radius.circular(50.0),
                        ),
                      ),
                      onPressed: () {
                        getImage(true);
                      },
                      child: Icon(
                        Icons.camera_alt,
                        color: Color.fromRGBO(45, 12, 87, 1.0),
                      ),
                      backgroundColor: Colors.white,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    FloatingActionButton(
                      heroTag: '4',
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1),
                        borderRadius: BorderRadius.all(
                          Radius.circular(50.0),
                        ),
                      ),
                      onPressed: () {
                        getImage(false);
                      },
                      child: Icon(
                        Icons.insert_drive_file,
                        color: Color.fromRGBO(45, 12, 87, 1.0),
                      ),
                      backgroundColor: Colors.white,
                    ),
                  ],
                ),
                SizedBox(
                  height: 60,
                ),
                _image == null
                    ? Container()
                    : Image.file(
                        _image,
                        height: 300,
                        width: 300,
                      ),
                RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                    side: BorderSide(
                      color: Color.fromRGBO(11, 206, 131, 1),
                    ),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 122, vertical: 15),
                  focusElevation: 10,
                  color: Color.fromRGBO(11, 206, 131, 1),
                  child: Text(
                    'PROCEED',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'OpenSans',
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushNamed('/pickup');
                  },
                ),
                SizedBox(height: 8.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
