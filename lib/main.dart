import 'package:flutter/material.dart';

void main(){
  runApp(PointsCounter());
}
class PointsCounter extends StatefulWidget {
   PointsCounter({super.key});

  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  int countTeamA=0;
  int countTeamB=0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text('points counter'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      'Team A',
                      style: TextStyle(
                        fontSize: 35,
                      ),
                    ),
                    Text(
                      '$countTeamA',
                      style: TextStyle(
                        fontSize: 155,
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape:RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(15)),
                        backgroundColor: Colors.orange,
                        minimumSize: Size(80, 50),
                      ),
                      onPressed: (){
                        setState(() {
                          countTeamA++;
                        });
                      },
                      child: Text(
                        'Add 1 point',
                        style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape:RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(15)),
                        backgroundColor: Colors.orange,
                        minimumSize: Size(80, 50),
                      ),
                      onPressed: (){
                        setState(() {
                          countTeamA=countTeamA+2;
                        });
                      },
                      child: Text(
                        'Add 2 point',
                        style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape:RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(15)),
                        backgroundColor: Colors.orange,
                        minimumSize: Size(80, 50),
                      ),
                      onPressed: (){
                        setState(() {
                          countTeamA=countTeamA+3;
                        });
                         
                      },
                      child: Text(
                        'Add 3 point',
                        style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    )
                  ],
                ),
                const SizedBox(
                  height: 430,
                  child: VerticalDivider(
                    color: Colors.blueGrey,
                    thickness: 1,
                  ),
                ),
                Column(
                  children: [
                    Text(
                      'Team B',
                      style: TextStyle(
                        fontSize: 35,
                      ),
                    ),
                    Text(
                      '$countTeamB',
                      style: TextStyle(
                        fontSize: 155,
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape:RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(15)),
                        backgroundColor: Colors.orange,
                        minimumSize: Size(80, 50),
                      ),
                      onPressed: (){
                        setState((){
                          countTeamB++;
                        });
                      },
                      child: Text(
                        'Add 1 point',
                        style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape:RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(15)),
                        backgroundColor: Colors.orange,
                        minimumSize: Size(80, 50),
                      ),
                      onPressed: (){
                        setState((){
                          countTeamB=countTeamB+2;
                        });
                      },
                      child: Text(
                        'Add 2 point',
                        style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape:RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(15)),
                        backgroundColor: Colors.orange,
                        minimumSize: Size(80, 50),
                      ),
                      onPressed: (){
                        setState(() {
                          countTeamB=countTeamB+3;
                        });
                      },
                      child: Text(
                        'Add 3 point',
                        style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 90,
            ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange,
              shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(15)),
              minimumSize: Size(80, 50),
            ),
            onPressed: (){
              setState(() {
                countTeamA=0;
                countTeamB=0;
              });
            },
             child: Text(
              'Reset',
              style: TextStyle(
                color: Colors.black,
                fontSize:18, 
              ),
             ),
             ),
             const SizedBox(
              height: 150,
             )
          ],
        )
      ),
    );
  }
}