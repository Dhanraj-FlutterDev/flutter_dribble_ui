import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dribble_ui/screens/profile_page.dart';

class QuizPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo.shade700,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              margin: EdgeInsets.only(top: 30),
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.indigo.shade500),
                      )),
                  Text(
                    'Live Quiz',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProfilePage()));
                    },
                    icon: Icon(
                      Icons.person_pin_rounded,
                      color: Colors.pinkAccent.shade100,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Colors.indigo.shade500,
                        borderRadius: BorderRadius.circular(10)),
                    padding: EdgeInsets.only(left: 10, top: 10),
                    height: 36,
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      'Search',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Positioned(
                      right: 0,
                      child: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              gradient: LinearGradient(colors: [
                                Colors.pink,
                                Colors.pinkAccent.shade100,
                              ]),
                              borderRadius: BorderRadius.circular(10)),
                          margin: EdgeInsets.only(right: 2, top: 2),
                          height: 34,
                          width: 35,
                          child: Icon(
                            Icons.search,
                            color: Colors.white,
                          ))),
                ],
              ),
            ),
            SizedBox(height: 5,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.lightBlue.shade300),
              height: 110,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                'assets/image5.png',
              ),
            ),
            SizedBox(height: 5,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              alignment: Alignment.topLeft,
              child: Text(
                'Javascript Quiz',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    letterSpacing: 0.5),
              ),
            ),
            SizedBox(height: 5,),
            Container(
              //margin: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    child: Text('1',style: TextStyle(color: Colors.white),),
                    backgroundColor: Colors.pinkAccent.shade100,
                  ),
                  CircleAvatar(
                    child: Text('2',style: TextStyle(color: Colors.white),),
                    backgroundColor: Colors.indigo.shade500,
                  ),
                  CircleAvatar(
                    child: Text('3',style: TextStyle(color: Colors.white),),
                    backgroundColor: Colors.indigo.shade500,
                  ),
                  CircleAvatar(
                    child: Text('4',style: TextStyle(color: Colors.white),),
                    backgroundColor: Colors.indigo.shade500,
                  ),
                  CircleAvatar(
                    child: Text('5',style: TextStyle(color: Colors.white),),
                    backgroundColor: Colors.indigo.shade500,
                  ),
                  CircleAvatar(
                    child: Text('6',style: TextStyle(color: Colors.white),),
                    backgroundColor: Colors.indigo.shade500,
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Where is the Correct path in Javascript located?',textAlign: TextAlign.center,style: TextStyle(
                      color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500
                  ),),
                  SizedBox(height: 20,),
                  Text('Select as many as correct option',textAlign: TextAlign.center,style: TextStyle(
                      color: Colors.white,fontSize: 12,fontWeight: FontWeight.w400
                  ),)
                ],
              ),
            ),
            Container(
                height: MediaQuery.of(context).size.height / 3,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        QuizOption(
                          color: Colors.indigo.shade500,
                          text: 'The <Body>',
                        ),
                        QuizOption(
                          color: Colors.indigo.shade500,
                          text: 'The <Path>',
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        QuizOption(
                          color: Colors.indigo.shade500,
                          text: 'Both',
                        ),
                        QuizOption(
                          color: Colors.pinkAccent.shade100,
                          text: 'Entry',
                        ),
                      ],
                    ),
                  ],
                )
            ),
            Container(
              padding: EdgeInsets.symmetric(
                  vertical: 16
              ),
              margin: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.lightBlue.shade300,
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Center(
                child: Text('Next',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class QuizOption extends StatelessWidget {

  final String text;
  final Color color;

  const QuizOption({Key key, this.text, this.color}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      height: 50,
      width: MediaQuery.of(context).size.width / 2.5,
      child: Center(
        child: Text(text,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),),
      ),
    );
  }
}










