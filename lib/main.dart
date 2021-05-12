import 'package:flutter/material.dart';
import 'package:mongol/mongol.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image(
                image: AssetImage('assets/img/mori.jpg'),
              ),
              Container(
                height: 400,
                width: 400,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: MongolText(
                    'ᠰᠠᠶᠢᠨ ᠪᠠᠶᠢᠨ᠎ᠠ ᠤᠤ? ᠮᠢᠨᠦ ᠨᠡᠷ᠎ᠡ ᠶᠢ ᠫᠦᠷᠪᠦᠳᠣᠷᠵᠢ ᠭᠡᠳᠡᠭ᠃ ᠣᠳᠣ 24 ᠨᠠᠰᠤᠲᠠᠢ᠃ ᠮᠠᠨ ᠤ ᠭᠡᠷ ᠪᠦᠯᠢ 4 ᠬᠦᠮᠦᠨ ᠪᠠᠶᠢᠳᠠᠭ᠃ ᠡᠵᠢ᠂ ᠠᠪᠤ᠂ ᠳᠡᠭᠦᠦ 3 ᠲᠠᠶᠢᠭ᠎ᠠ ᠪᠠᠨ ᠴᠤᠭ ᠠᠮᠢᠳᠤᠷᠠᠳᠠᠭ᠃ ᠪᠢ ᠡᠨᠡ ᠠᠫᠫ ᠢ ᠠᠰᠢᠭᠯᠠᠵᠤ ᠰᠠᠶᠢᠨ ᠰᠤᠷᠠᠭ᠎ᠠ ᠦᠭᠡᠢ ᠪᠠᠶᠢᠭ᠎ᠠ᠃ ᠡᠨᠡ ᠪᠣᠯ ᠮᠢᠨᠦ ᠭᠡᠷ ᠦᠨ ᠳᠠᠭᠠᠭᠠᠯᠭᠠᠪᠤᠷᠢ᠃',
                    style:
                        TextStyle(fontFamily: 'MongolianScript', fontSize: 25),
                  ),
                ),
              ),
            ],
          ),
        ),
    );
  }
}
