import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Color favcolor;
  int favvalue;
  final ctrlNama = TextEditingController();

  hexColor(String colorhexcode) {
    String colornew = "0xff" + colorhexcode;
    colornew = colornew.replaceAll('#', '');
    int colorint = int.parse(colornew);
    return colorint;
  }

  @override
  void initState() {
    super.initState();
    favcolor = Colors.white;
    favvalue = 0;
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(hexColor('#8360FE')),
        title: Text("Flutter-Cat"),
      ),
      body: Stack(
        children: <Widget>[
          Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Colors.white,
                      Color(hexColor('#8360FE')),
                    ]),

                // child: Row(
                //   crossAxisAlignment: CrossAxisAlignment.start,
                //   mainAxisAlignment: MainAxisAlignment.end,
                //   children: <Widget>[
                //     FloatingActionButton(
                //       backgroundColor: Colors.white,
                //       onPressed: () {
                //         setState(() {
                //           if (favcolor == Colors.white) {
                //             favcolor = Colors.red;
                //           } else if (favcolor == Colors.red) {
                //             favcolor = Colors.white;
                //           }
                //         });
                //       },
                //       child: Icon(
                //         Icons.favorite,
                //         color: favcolor,
                //       ),
                //     )
                //   ],
                // ),
              ))
        ],
      ),
    );
  }
}
