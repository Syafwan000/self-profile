import 'package:flutter/material.dart';
import 'package:profile_diri/Page2.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "ShaWann",
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/background.jpg"),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.5), BlendMode.darken)),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.shortestSide,
              padding: EdgeInsets.all(28.5),
              alignment: Alignment.center,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      bottomRight: Radius.circular(30.0)),
                ),
                color: Colors.white,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      CircleAvatar(
                        radius: 80.0,
                        backgroundColor: Colors.black,
                        child: CircleAvatar(
                          radius: 74.0,
                          backgroundImage: AssetImage("images/ShaWann.png"),
                        ),
                      ),
                      Text(
                        "Muhammad Syafwan Ardiansyah",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                          "Vocational High School Student at SMK Wikrama Bogor",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 16, color: Colors.black)),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Page2()),
                            );
                          },
                          child: Text('Read More'),
                          style: TextButton.styleFrom(
                              primary: Colors.white,
                              backgroundColor: Colors.black))
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
