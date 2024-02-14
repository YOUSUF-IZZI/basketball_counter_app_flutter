import 'package:basketball_counter/cubit/counter_cubit.dart';
import 'package:basketball_counter/cubit/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
      builder: (BuildContext context, state) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.orange,
            title: Text('Points Counter',style: TextStyle(fontSize: 22.sp),),
          ),

          body: Padding(
            padding: EdgeInsets.only(top: 30.h,left: 1.w,right: 1.w,bottom: 5.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  flex: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // Left side column
                      Expanded(
                        child: Column(
                          children: [
                            Text('Team A',style: TextStyle(fontSize: 28.sp,fontFamily: 'Pacifico'),),
                            Text(
                              '${BlocProvider.of<CounterCubit>(context).counterA}',
                              style: TextStyle(fontSize: 100.sp),
                            ),
                            Text('Add points',style: TextStyle(fontSize: 22.sp, color: Colors.black,fontFamily: 'Pacifico'),),
                            SizedBox(
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
                                BlocProvider.of<CounterCubit>(context).incrementA(value: 1, team: 'A');
                              },
                            ),
                            SizedBox(height: 10.h,),
                            TextButton(
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.orange,
                              ),
                              child: Text(' 2 points ',style: TextStyle(color: Colors.black,fontSize: 20.sp,fontFamily: 'Pacifico'),),
                              onPressed: (){
                                BlocProvider.of<CounterCubit>(context).incrementA(value: 2, team: 'A');
                              },
                            ),
                            SizedBox(height: 10.h,),
                            TextButton(
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.orange,
                              ),
                              child: Text(' 3 points ',style: TextStyle(color: Colors.black,fontSize: 20.sp,fontFamily: 'Pacifico'),),
                              onPressed: (){
                                BlocProvider.of<CounterCubit>(context).incrementA(value: 3, team: 'A');
                              },
                            ),
                          ],
                        ),
                      ),
                      // Vertical Divider
                      SizedBox(
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
                            Text('${BlocProvider.of<CounterCubit>(context).counterB}',style: TextStyle(fontSize: 100.sp),),
                            Text('Add points',style: TextStyle(fontSize: 22.sp, color: Colors.black,fontFamily: 'Pacifico'),),
                            SizedBox(
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
                                BlocProvider.of<CounterCubit>(context).incrementB(value: 1, team: 'B');
                              },
                            ),
                            SizedBox(height: 10.h,),
                            TextButton(
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.orange,
                              ),
                              child: Text(' 2 points ',style: TextStyle(color: Colors.black,fontSize: 20.sp,fontFamily: 'Pacifico'),),
                              onPressed: (){
                                BlocProvider.of<CounterCubit>(context).incrementB(value: 2, team: 'B');
                              },
                            ),
                            SizedBox(height: 10.h,),
                            TextButton(
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.orange,
                              ),
                              child: Text(' 3 points ',style: TextStyle(color: Colors.black,fontSize: 20.sp,fontFamily: 'Pacifico'),),
                              onPressed: (){
                                BlocProvider.of<CounterCubit>(context).incrementB(value: 3, team: 'B');
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                // Reset button
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.orange,
                    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5.0),
                  ),
                  child: Text('Reset',style: TextStyle(fontSize: 28.sp,color: Colors.black,fontFamily: 'Pacifico'),),
                  onPressed: (){
                    BlocProvider.of<CounterCubit>(context).reset();
                  },
                ),
                SizedBox(height: 30.h,),
              ],
            ),
          ),
        );
      },
      listener: (BuildContext context, Object? state) {},
    );
  }
}
