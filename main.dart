import 'package:flutter/material.dart';
import 'package:nice_button/nice_button.dart';
void main() => runApp(new MyApp());
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    Color hexToColor(String code) {
      return new Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
    }
    return MaterialApp(

        debugShowCheckedModeBanner: false,
        title: "Welcome to Flutter",
        home: new Material(
            child: new Container (
                padding: const EdgeInsets.all(30.0),
                color: Colors.white,
                child: new Container(
                  child: new Center(
                      child: new Column(
                          children : [
                            new Padding(padding: EdgeInsets.only(top: 60.0)),
                            new Text('DROP YOUR ARTICLE!',
                              style: new TextStyle(color: Colors.indigo[700], fontSize: 25.0,fontWeight: FontWeight.bold),),
                            new Padding(padding: EdgeInsets.only(top: 40.0)),

                            new Card(

                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),

                              ),

                              color: Colors.grey[100],

                              elevation: 10,

                              child: new Container(
                                padding: new EdgeInsets.all(15.0),
                                child: new Column(
                                  children: <Widget>[
                                    new IconButton(
                                      icon: Icon(Icons.camera_alt),
                                      iconSize: 50.0,
                                      color: Colors.indigo[900],
                                      onPressed: () {

                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ),




                            SizedBox(height: 30),
                            new TextFormField(

                              decoration: new InputDecoration(
                                labelText: "Title",
                                labelStyle: TextStyle(
                                    color:  Colors.indigo[600]
                                ),
                                filled: true,
                                fillColor: Colors.grey[100],

                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                  borderSide: BorderSide(color: Colors.indigo),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                                  borderSide: BorderSide(color: Colors.indigo),
                                ),
                                //fillColor: Colors.green
                              ),
                              validator: (val) {
                                if(val.length==0) {
                                  return "Title must not be empty";
                                }else{
                                  return null;
                                }
                              },
                              keyboardType: TextInputType.text,
                              style: new TextStyle(
                                fontFamily: "Poppins",
                              ),
                            ),
                            SizedBox(height: 30),


                            TextField(
                              style: TextStyle(

                                  height: 0.8,
                                  color: Colors.indigo[600]
                              ),
                              minLines: 10,
                              maxLines: 15,
                              autocorrect: false,
                              decoration: InputDecoration(
                                hintText: 'Content',
                                hintStyle
                                    : TextStyle(
                                    color:  Colors.indigo[600]
                                ),

                                filled: true,
                                fillColor: Colors.grey[100],
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                  borderSide: BorderSide(color: Colors.indigo),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                  borderSide: BorderSide(color: Colors.indigo),
                                ),
                              ),

                            ),
                            SizedBox(height: 30),
              NiceButton(
              radius: 50,
              width: 180,

              text: "SUBMIT",

              gradientColors: [Colors.indigo[900], Colors.blueAccent],
              onPressed: () {},

            )

                          ]
                      )
                  ),

                )

            )
        )

    );
  }
}