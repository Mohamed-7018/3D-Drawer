import 'package:animation/page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.blue,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 50.0, left: 3.0, right: 3.0),
            child: Column(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage("assets/samir.jpeg"),
                  ),
                  title: Text(
                    "Friend name ",
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: (18),
                    ),
                  ),
                  subtitle: Row(
                    children: [
                      Text("Today at 19:33    "),
                      Icon(Icons.public),
                    ],
                  ),
                  trailing: Icon(Icons.more_horiz),
                ),
                Padding(
                  padding:
                  const EdgeInsets.only(top: 8.0, right: 8.0, left: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("I want this mockup so bad!"),
                      Row(
                        children: [
                          Text(" Found it at "),
                          Text(
                            'http://marinad.com.ar',
                            style: TextStyle(
                              color: Colors.blue,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 16.0,
                      ),
                      Text(
                        "See translation",
                        style: TextStyle(color: Colors.blue),
                      ),
                      SizedBox(
                        height: 16.0,
                      ),
                      FlatButton(
//                          width: MediaQuery.of(context).size.width,
//                          height: 300,
                          color: Colors.white,
                          child: Hero(
                              tag: 'to',
                              child: Image.asset("assets/samir.jpeg")),
                        onPressed: ()=>Navigator.push(context, MaterialPageRoute (
                          builder: (_) =>FlutterPage()
                        )),

                      ),
                      SizedBox(
                        height: 16.0,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 0.0, right: 16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // Row(
                            //   children: [

                            FlatButton.icon(
                              onPressed: () {},
                              icon: Icon(Icons.thumb_up),
                              label: Text("Like"),
                              color: Colors.white,
                            ),

                            FlatButton.icon(
                              onPressed: () {},
                              icon: Icon(Icons.comment),
                              label: Text("Comment"),
                              color: Colors.white,
                            ),
                            FlatButton.icon(
                              onPressed: () {},
                              icon: Icon(Icons.mobile_screen_share),
                              label: Text("Share"),
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // Divider(),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 2.0,
            color: Colors.black12,
          ),
          Container(
            color: Colors.grey[200],
            child: Padding(
              padding: const EdgeInsets.only(left: 20, top: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset('assets/like.png',
                          width: 20.0, height: 20.0, fit: BoxFit.fill),
                      SizedBox(
                        width: 5,
                      ),
                      Image.asset('assets/love.png',
                          width: 20.0, height: 20.0, fit: BoxFit.fill),
                      SizedBox(
                        width: 5,
                      ),
                      Image.asset('assets/wow.png',
                          width: 20.0, height: 20.0, fit: BoxFit.fill),
                      Text('  1,035'),
                      SizedBox(
                        width: 5,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 16.0),
                    child: Row(
                      children: [
                        Container(
                          height: 35.0,
                          width: 35.0,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.all(
                              Radius.circular(50.0),
                            ),
                          ),
                        ),
                        SizedBox(width: 8.0),
                        Expanded(
                          child: Container(
                            height: 35.0,
                            decoration: BoxDecoration(
                              color: Colors.grey[100],
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.horizontal(
                                  right: Radius.circular(15.0),
                                  left: Radius.circular(15.0)),
                            ),
                            child: Row(
                              children: [
                                Text(
                                  '  Write something...',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                Spacer(),
                                Icon(Icons.work,
                                    color: Colors.grey),
                                SizedBox(width: 4.0),
                                Icon(Icons.camera_alt,
                                    color: Colors.grey),
                                SizedBox(width: 4.0),
                                Icon(Icons.add_a_photo,
                                    color: Colors.grey),
                                SizedBox(width: 4.0),
                                Icon(Icons.adjust, color: Colors.grey),
                                SizedBox(width: 4.0),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16.0,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
