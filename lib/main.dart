import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tech_App',
      home: Builder(
        builder: (context) => Scaffold(
          body: Center(
            child: Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                GestureDetector(
                  onTap: () {
                    _pressed(context);
                  },
                  child: CircleAvatar(
                    radius: 100,
                    backgroundImage: NetworkImage(
                        'https://www.horizont.net/news/media/23/Joko-Winterscheidt-220837-detailnp.png'),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    _pressed(context);
                  },
                  child: CircleAvatar(
                    radius: 30,
                    child: Icon(
                      Icons.add_a_photo,
                      color: Colors.white,
                      size: 25,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: InkWell(
            child: Text('ComeBack'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
    );
  }
}

void _pressed(context) {
  var builder = PageRouteBuilder(pageBuilder: (BuildContext context,
      Animation animation, Animation secondaryAnimation) {
    return Page2();
  }, transitionsBuilder: (
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return new SlideTransition(
      position: new Tween<Offset>(
        begin: const Offset(0.0, 1.0),
        end: Offset.zero,
      ).animate(animation),
      child: child,
    );
  });
  Navigator.of(context).push(builder);
}

