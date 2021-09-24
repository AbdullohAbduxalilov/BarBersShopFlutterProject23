import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'servicesPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade500,
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Container(
          child: Column(
            children: [
              Text("Awesome"),
              Container(
                width: MediaQuery.of(context).size.width / 2,
                child: Divider(
                  thickness: 4.0,
                  color: Colors.brown,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 2,
                    backgroundColor: Colors.white,
                  ),
                  Text(
                    "   Barber shop   ",
                    style: TextStyle(
                      fontSize: 24.0,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  CircleAvatar(
                    radius: 2,
                    backgroundColor: Colors.white,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 4.6,
                    child: Divider(
                      thickness: 4.0,
                      color: Colors.brown,
                    ),
                  ),
                  Icon(Icons.content_cut_sharp),
                  Container(
                    width: MediaQuery.of(context).size.width / 4.6,
                    child: Divider(
                      thickness: 4.0,
                      color: Colors.brown,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50.0,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.brown,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40.0),
                    topLeft: Radius.circular(40.0),
                    bottomLeft: Radius.circular(40.0),
                  ),
                ),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2.0,
                child: Center(
                  child: Text("Image"),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.brown,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        30.0,
                      ),
                    ),
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => ServicesPage(),
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: 12.0,
                  ),
                  child: Text(
                    "Get a serious haircut",
                    style: TextStyle(fontSize: 18.0),
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Text(
                "No, take me back to mommy",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
