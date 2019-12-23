import 'package:contador_pessoa/my_bacground.dart';
import 'package:contador_pessoa/my_text.dart';
import 'package:flutter/material.dart';

class Home_Page extends StatefulWidget {
  @override
  _Home_PageState createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {

  int _pessoas = 0;
void _atualizarpessoas(int delta){
  setState((){
  _pessoas += delta;
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        MyBackground(),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 100),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.7),
                    borderRadius: BorderRadius.circular(30)),
                child: Column(children: <Widget>[
                  MyText(
                    label: "Qt. de pessoas: $_pessoas",
                    ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          _bottonAction(Icons.perm_identity, () {_atualizarpessoas(-1);}),
                          _bottonAction(Icons.people_outline, () {_atualizarpessoas(1);}),
                        ]),
                  ),
                  MyText(label: "",)
                ]),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}

Widget _bottonAction(IconData icon, Function callback) {
  return InkWell(
    child: Padding(
      padding: const EdgeInsets.all(15.0),
      child: Icon(icon, size: 45, color: Colors.indigo),
    ),
    onTap: callback,
  );
}
