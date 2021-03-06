import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
// import 'package:fluttertoast/fluttertoast.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Color favcolor;
  int favvalue;

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
              )),
          Column(
            children: <Widget>[
              Flexible(
                  flex: 4,
                  child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image(
                            image: NetworkImage(
                                'https://cdn.dribbble.com/users/514552/screenshots/4144572/cats_are_lazyduplicate.gif')),
                      ))),
              Flexible(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Flexible(
                            flex: 2,
                            child: Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Lottie.asset("assets/cats.json"),
                              ),
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            child: Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Lottie.asset("assets/cats2.json"),
                              ),
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            child: Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Lottie.asset("assets/cats3.json"),
                              ),
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            child: Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Lottie.asset("assets/cat4.json"),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
              Container(
                  alignment: Alignment.center,
                  child: Text(
                    'CAT',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  )),
              Flexible(
                flex: 2,
                child: Container(
                  padding: EdgeInsets.all(10.85),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                    child: ListView(
                      children: <Widget>[
                        Text(
                          'The cat (Felis catus) is a domestic species of small carnivorous mammal. It is the only domesticated species in the family Felidae and is often referred to as the domestic cat to distinguish it from the wild members of the family. A cat can either be a house cat, a farm cat or a feral cat; the latter ranges freely and avoids human contact. Domestic cats are valued by humans for companionship and their ability to hunt rodents. About 60 cat breeds are recognized by various cat registries.',
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.justify,
                        ),
                        SizedBox(
                          height: 12,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.all(8),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                FloatingActionButton(
                  backgroundColor: Color(hexColor('#8360FE')),
                  onPressed: () {
                    setState(() {
                      if (favcolor == Colors.white) {
                        favcolor = Colors.red;
                      } else if (favcolor == Colors.red) {
                        favcolor = Colors.white;
                      }
                    });
                  },
                  child: Icon(
                    Icons.favorite,
                    color: favcolor,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
