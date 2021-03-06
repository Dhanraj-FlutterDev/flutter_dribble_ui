import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo.shade700,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child:Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
                color: Colors.indigo.shade500
              ),
              height: MediaQuery.of(context).size.height /2,
              width: MediaQuery.of(context).size.width,
              child:  Column(
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
                                  color: Colors.white24
                              ),
                            )),
                        Opacity(opacity: 0,child: Text('Live Quiz',style: TextStyle(color: Colors.white,
                            fontSize: 16,fontWeight: FontWeight.w600),)),
                        Icon(Icons.settings,color: Colors.pinkAccent.shade100,),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleAvatar(
                          radius: 50,
                          backgroundColor: Colors.red.shade100,
                          backgroundImage: NetworkImage('https://i.imgur.com/DoOD71Z.png'),
                        ),
                        SizedBox(height: 5,),
                        Text('Dianne Russell',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 22),),
                        SizedBox(height: 2,),
                        Text('Indonesia',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 14),),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InfoWidget(
                          textOne: 'QP',
                          textTwo: ' 1329',
                          colorOne: Colors.black,
                          colorTwo: Colors.black,
                        ),
                        InfoWidget(
                          textOne: 'Following',
                          colorOne: Colors.pink,
                          colorTwo: Colors.pinkAccent.shade100,
                        ),
                        InfoWidget(textOne: 'Rank',
                          textTwo: ' 11',
                          colorOne: Colors.black,
                          colorTwo: Colors.black,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('Badge',style: TextStyle(color: Colors.white70,fontWeight: FontWeight.w600),),
                        Text('Stats',style: TextStyle(color: Colors.white70,fontWeight: FontWeight.w600),),
                        Text('Details',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),),
                      ],
                    ),
                  ),
                  SizedBox(height: 5,),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.lightBlue.shade400
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Ranked of\nMedal',style: TextStyle(fontWeight: FontWeight.w600,color: Colors.white,fontSize: 20),),
                  RichText(text: TextSpan(
                    text: 'Master',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),
                    children: [
                      TextSpan(
                        text: '1227',style: TextStyle(color: Colors.white,fontSize: 30)
                      ),
                    ],
                  )),
                  CircleAvatar(
                    backgroundColor: Colors.orangeAccent,
                    radius: 30,
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.orange,
                      child: Icon(Icons.ac_unit_rounded,color: Colors.white,),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.indigo.shade500
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Text('Recent Match',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 20),),
                    ),
                    RowWidget(
                      text: 'Win',
                      textNew: 'Javascript',
                      color: Colors.green,
                    ),
                    RowWidget(
                      text: 'Los',
                      textNew: 'Javascript',
                      color: Colors.red,
                    ),
                    RowWidget(
                      text: 'Win',
                      textNew: 'Javascript',
                      color: Colors.green,
                    ),
                  ],
                ),
              ),
            ),
          ],
        )
      ),
    );
  }
}

class RowWidget extends StatelessWidget {

  final String text;
  final String textNew;
  final Color color;

  const RowWidget({Key key, this.text, this.textNew, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
       Text(text,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),),
        CircleAvatar(radius: 10,backgroundColor: Colors.amber.shade100,backgroundImage: NetworkImage('https://i.imgur.com/DoOD71Z.png'),),
        Text('vs',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w300),),
       CircleAvatar(radius: 10,backgroundColor: Colors.deepPurpleAccent.shade100,backgroundImage: NetworkImage('https://i.imgur.com/DoOD71Z.png'),),
        Text(textNew,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w300),),
        SizedBox(width: 25,),
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: color,
            borderRadius: BorderRadius.circular(25),
          ),
          height: 20,
          width: 50,
          child: Center(
            child: Text('+QP 25',style: TextStyle(color: Colors.white,fontSize: 10),),
          ),
        ),
      ],
    );
  }
}


class InfoWidget extends StatelessWidget {

  final String textOne;
  final String textTwo;
  final Color colorOne;
  final Color colorTwo;

  const InfoWidget({Key key,@required this.textOne, this.textTwo, this.colorOne, this.colorTwo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: Colors.black,
        gradient: LinearGradient(
          colors: [
            colorOne,
            colorTwo,
          ]
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      height: 40,
      width: 90,
      child: Center(child: RichText(text:TextSpan(
        text: textOne,style: TextStyle(fontWeight: FontWeight.w500),
        children: [
          TextSpan(
            text: textTwo,style: TextStyle(fontWeight: FontWeight.w500,color: Colors.pinkAccent.shade100)
          )
        ]
      ),),),
    );
  }
}

