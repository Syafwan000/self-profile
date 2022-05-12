import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/background.jpg"),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.5), BlendMode.darken))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                  alignment: Alignment.center,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        CircleAvatar(
                          radius: 60.0,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            radius: 54.0,
                            backgroundImage: AssetImage("images/ShaWann.png"),
                          ),
                        ),
                        Text(
                          "Muhammad Syafwan Ardiansyah",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 24,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  )),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                padding: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0)),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 8),
                      child: Text(
                        "About",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 8),
                      child: Text(
                          "I'm a student, I live in Indonesia, I like about technology especially Programming, I'm interested in web and mobile development"),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 8),
                      child: Text(
                        "History",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 8),
                      child: Text(
                          "Lorem ipsum dolor sit, amet consectetur adipisicing elit. Dolore pariatur nobis optio. Necessitatibus impedit minima totam non, officia perferendis aliquid?"),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 8),
                      child: Text(
                        "Skill",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Text(
                        "HTML, CSS, JavaScript, PHP, MySQL, Bootstrap, React, Laravel, Livewire, Composer, NPM, Visual Studio Code and more"),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
