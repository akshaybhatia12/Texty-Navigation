import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: TextyNav(),
    );
  }
}


class TextyNav extends StatefulWidget {
  const TextyNav({Key? key}) : super(key: key);

  @override
  _TextyNavState createState() => _TextyNavState();
}

class _TextyNavState extends State<TextyNav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text Navigation"),
      ),
      drawer: Drawer(
        child: Container(
          decoration: BoxDecoration(
            color: Color.fromRGBO(55, 113, 170, 1.0)
          ),
          child: Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 60.0,
                      backgroundImage: AssetImage("assets/profile_pic2.jpeg"),
                    ),
                    SizedBox(height: 20.0,),
                    Center(
                      child: Text("Akshay Bhatia", style: TextStyle(fontSize: 20.0, color: Colors.white, fontWeight: FontWeight.bold),),
                    ),
                    Center(
                      child: Text("Kanpur, INDIA", style: TextStyle(fontSize: 18.0, color: Colors.white70, fontWeight: FontWeight.normal),),
                    ),
                  ],
                ),
                flex: 1,
              ),
              Expanded(
                flex: 3,
                child: GridView.count(crossAxisCount: 2,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisSize: MainAxisSize.min,
                    verticalDirection: VerticalDirection.down,
                    children: [
                      Center(
                        child: Icon(Icons.message, size: 80.0, color: Colors.white,),
                      ),
                      SizedBox(height: 10.0,),
                      Center(
                        child: Text("Messages", style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.white), ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisSize: MainAxisSize.min,
                    verticalDirection: VerticalDirection.down,
                    children: [
                      Center(
                        child: Icon(Icons.phone_forwarded, size: 80.0, color: Colors.white,),
                      ),
                      SizedBox(height: 10.0,),
                      Center(
                        child: Text("Calls", style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.white), ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisSize: MainAxisSize.min,
                    verticalDirection: VerticalDirection.down,
                    children: [
                      Center(
                        child: Icon(Icons.dialpad, size: 80.0, color: Colors.white,),
                      ),
                      SizedBox(height: 10.0,),
                      Center(
                        child: Text("Dial", style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.white), ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisSize: MainAxisSize.min,
                    verticalDirection: VerticalDirection.down,
                    children: [
                      Center(
                        child: Icon(Icons.contacts, size: 80.0, color: Colors.white,),
                      ),
                      SizedBox(height: 10.0,),
                      Center(
                        child: Text("Contacts", style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.white), ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisSize: MainAxisSize.min,
                    verticalDirection: VerticalDirection.down,
                    children: [
                      Center(
                        child: Icon(Icons.more_horiz, size: 80.0, color: Colors.white,),
                      ),
                      SizedBox(height: 10.0,),
                      Center(
                        child: Text("More", style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.white), ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisSize: MainAxisSize.min,
                    verticalDirection: VerticalDirection.down,
                    children: [
                      Center(
                        child: Icon(Icons.settings, size: 80.0, color: Colors.white,),
                      ),
                      SizedBox(height: 10.0,),
                      Center(
                        child: Text("Settings", style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.white), ),
                      ),
                    ],
                  ),
                ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
