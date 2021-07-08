import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

import 'Drawer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData (
        primarySwatch: Colors.blue
      ),
      home: HomePage(),
    );
  }
}


class Mine extends StatefulWidget {
  @override
  _MineState createState() => _MineState();
}

class _MineState extends State<Mine> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar ( title: Text(" Like button ")),
      body: Center (
        child: LikeButton(
         size:60,
          likeBuilder: (bool isLiked) {
           return Icon (
               Icons.thumb_up,
                   color: isLiked? Colors.deepPurple : Colors.grey,
           );

          },
          likeCount: 900,
          bubblesColor: BubblesColor(
            dotPrimaryColor: Colors.blue[400],
            dotSecondaryColor: Colors.blue[800]
          ),
          circleColor: CircleColor (
            start: Colors.blue[400],
            end: Colors.blue[800]
          ) ,
        )
      ),
    );
  }
}





///////////////////////////////////////////////////////////////////


class MyAppHome extends StatefulWidget {
  @override
  _MyAppHomeState createState() => _MyAppHomeState();
}

class _MyAppHomeState extends State<MyAppHome> with SingleTickerProviderStateMixin{

  AnimationController _controller;
  Animation <Size> _animation;


  @override
  void initState () {
    _controller = AnimationController (
      vsync: this,
      duration: Duration (milliseconds: 300)
    )..repeat();

    _animation = Tween <Size> (
      begin: Size (200, 150),
      end:Size (200, 250),
    ).animate(CurvedAnimation (
      parent: _controller,
      curve: Curves.bounceOut,
    ));
    _controller.addListener(() => setState ((){}));
  }


 @override
 void dispose () {
    _controller.dispose();
  }
  double  height = 150;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column (
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          AnimatedBuilder(
              builder: (ctx , child ) => FlutterLogo (size: _animation.value.height,),
              animation: _controller,

          ),

          Container(
            color: Colors.red,
            child: ListTile (
              trailing: Icon(Icons.arrow_forward),
              title: Text ("forward", style: TextStyle(color: Colors.white),),
              hoverColor: Colors.blue,
              onTap: ()=>_controller.forward()
            ),
          ),
          Container(
            color: Colors.green,
            child: ListTile (
              trailing: Icon(Icons.arrow_forward),
              title: Text ("backward", style: TextStyle(color: Colors.white),),
              hoverColor: Colors.grey,
              onTap: ()=> _controller.reverse()
            ),
          ),
        ],
      ),
    );
  }
}



