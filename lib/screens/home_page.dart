import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dribble_ui/screens/quiz_page.dart';

class HomePage extends StatelessWidget {
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
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Container(
                      child: Icon(Icons.arrow_back,color: Colors.white,),
                  height: 30,width: 30,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.indigo.shade500
                    ),
                  )),
                  Text('Live Quiz',style: TextStyle(color: Colors.white,
                      fontSize: 16,fontWeight: FontWeight.w600),),
                  IconButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> QuizPage()));
                    },
                    icon: Icon(Icons.play_arrow,color: Colors.pinkAccent.shade100,),),
                ],
              ),
            ),
            SizedBox(height: 5,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.indigo.shade500,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    padding: EdgeInsets.only(left: 10,top: 10),
                    height: 36,
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      'Search',style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Positioned(
                    right: 0,
                      child: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        gradient: LinearGradient(
                          colors: [
                            Colors.pink,
                            Colors.pinkAccent.shade100,
                          ]
                        ),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    margin: EdgeInsets.only(right: 2,top: 2),
                    height: 34,
                    width: 35,
                    child: Icon(Icons.search,color: Colors.white,)
                  )),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Following',style: TextStyle(color: Colors.white,
                  fontWeight: FontWeight.w700,fontSize: 16,letterSpacing: 0.5),),
                  Text('89 LiveQuiz',style: TextStyle(color: Colors.white,
                      fontSize: 16),),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BuildContainer(
                    widthOne: 180,
                    newColor: Colors.lightGreen.shade100,
                    color: Colors.lightBlue.shade400,
                    imageString: 'assets/image1.png',
                    titleText: 'Javascript Quiz',
                    textStyle: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.w700),
                    subText: 'Mr Mark Zues',
                    textStyleOne: TextStyle(fontSize: 12,color: Colors.white,fontWeight: FontWeight.w600),
                    subTextTwo: ' -12min 3sec',
                    textStyleTwo: TextStyle(fontSize: 10,color: Colors.white),
                  ),
                  BuildContainer(
                    widthOne: 180,
                    newColor: Colors.deepOrangeAccent.shade100,
                    color: Colors.lightBlue.shade400,
                    imageString: 'assets/image2.png',
                    titleText: 'Javascript Quiz',
                    textStyle: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.w700),
                    subText: 'Mr Mark Zues',
                    textStyleOne: TextStyle(fontSize: 12,color: Colors.white,fontWeight: FontWeight.w600),
                    subTextTwo: ' -12min 3sec',
                    textStyleTwo: TextStyle(fontSize: 10,color: Colors.white),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Discovery',style: TextStyle(color: Colors.white,
                      fontWeight: FontWeight.w700,fontSize: 16,letterSpacing: 0.5),),
                  Text('19 LiveQuiz',style: TextStyle(color: Colors.white,
                      fontSize: 16),),
                ],
              ),
            ),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: BuildContainer(
                  newColor: Colors.yellow.shade100,
                  color: Colors.indigo.shade500,
              widthOne: MediaQuery.of(context).size.width,
              imageString: 'assets/image.png',
              titleText: 'Take this quiz if you can!',
              textStyle: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.w700),
              subText: 'Mr Mark Zeus',
              textStyleOne: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.w600),
              subTextTwo: ' -21min 3sec',
              textStyleTwo: TextStyle(fontSize: 12,color: Colors.white),
            )),
          ],
        ),
      ),
    );
  }
}

class BuildContainer extends StatelessWidget {

  final String titleText;
  final String subText;
  final String subTextTwo;
  final double widthOne;
  final String imageString;
  final TextStyle textStyle;
  final TextStyle textStyleOne;
  final TextStyle textStyleTwo;
  final Color color;
  final Color newColor;

  BuildContainer({Key key, this.titleText, this.subText, this.subTextTwo, this.widthOne, this.imageString, this.textStyle, this.textStyleOne, this.textStyleTwo, this.color, this.newColor});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
      ),
      width:widthOne,
      height: MediaQuery.of(context).size.height / 3,
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Image.asset(imageString,height: 150,width: 150,alignment: Alignment.center,),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(titleText,style: textStyle,),
            ),
            Container(
                padding: EdgeInsets.only(left: 10),
                child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: newColor,
                  backgroundImage: NetworkImage('https://i.imgur.com/DoOD71Z.png'),
                ),
                SizedBox(width: 5,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(subText,style: textStyleOne,),
                    Text(subTextTwo,style: textStyleTwo),
                  ],
                )
              ],
            )),
          ],
        ),
      ),
    );
  }
}

