import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  int teamAPoints=0;
  int teamBPoints=0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.orange,
        title: Text('Points Counter',style: TextStyle(fontSize: 22.sp),),
      ),

      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 30.h,left: 1.w,right: 1.w,bottom: 5.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Left side column
                Expanded(
                  child: Column(
                    children: [
                      Text('Team A',style: TextStyle(fontSize: 28.sp,fontFamily: 'Pacifico'),),
                      Text('$teamAPoints',style: TextStyle(fontSize: 100.sp),),
                      Text('Add points',style: TextStyle(fontSize: 22.sp, color: Colors.black,fontFamily: 'Pacifico'),),
                      Container(
                        width: 100.w,
                        child: Divider(
                          thickness: 3.sp,
                          height: 30.h,
                          color: Colors.orange,
                        ),
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.orange,
                        ),
                        child: Text(' 1 point   ',style: TextStyle(color: Colors.black,fontSize: 20.sp,fontFamily: 'Pacifico'),),
                        onPressed: (){
                          setState(() {
                            teamAPoints++;
                          });
                        },
                      ),
                      SizedBox(height: 10.h,),
                      TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.orange,
                        ),
                        child: Text(' 2 points ',style: TextStyle(color: Colors.black,fontSize: 20.sp,fontFamily: 'Pacifico'),),
                        onPressed: (){
                          setState(() {
                            teamAPoints+=2;
                          });
                        },
                      ),
                      SizedBox(height: 10.h,),
                      TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.orange,
                        ),
                        child: Text(' 3 points ',style: TextStyle(color: Colors.black,fontSize: 20.sp,fontFamily: 'Pacifico'),),
                        onPressed: (){
                          setState(() {
                            teamAPoints+=3;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                // Vertical Divider
                Container(
                  height: 400.h,
                  child: VerticalDivider(
                    thickness: 1.sp,
                    width: 10.w,
                    color: Colors.grey[400],
                  ),
                ),

                // Right side column
                Expanded(
                  child: Column (
                    children: [
                      Text('Team B',style: TextStyle(fontSize: 28.sp,fontFamily: 'Pacifico'),),
                      Text('$teamBPoints',style: TextStyle(fontSize: 100.sp),),
                      Text('Add points',style: TextStyle(fontSize: 22.sp, color: Colors.black,fontFamily: 'Pacifico'),),
                      Container(
                        width: 100.w,
                        child: Divider(
                          thickness: 3.sp,
                          height: 30.h,
                          color: Colors.orange,
                        ),
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.orange,
                        ),
                        child: Text(' 1 point   ',style: TextStyle(color: Colors.black,fontSize: 20.sp,fontFamily: 'Pacifico'),),
                        onPressed: (){
                          setState(() {
                            teamBPoints+=1;
                          });
                        },
                      ),
                      SizedBox(height: 10.h,),
                      TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.orange,
                        ),
                        child: Text(' 2 points ',style: TextStyle(color: Colors.black,fontSize: 20.sp,fontFamily: 'Pacifico'),),
                        onPressed: (){
                          setState(() {
                            teamBPoints+=2;
                          });
                        },
                      ),
                      SizedBox(height: 10.h,),
                      TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.orange,
                        ),
                        child: Text(' 3 points ',style: TextStyle(color: Colors.black,fontSize: 20.sp,fontFamily: 'Pacifico'),),
                        onPressed: (){
                          setState(() {
                            teamBPoints+=3;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 40.h,),
            // Reset button
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.orange,
              ),
              child: Text('    Reset    ',style: TextStyle(fontSize: 28.sp,color: Colors.black,fontFamily: 'Pacifico'),),
              onPressed: (){
                setState(() {
                  teamAPoints=0;
                  teamBPoints=0;
                });
              }, )
          ],
        ),
      ),
    );
  }
}
