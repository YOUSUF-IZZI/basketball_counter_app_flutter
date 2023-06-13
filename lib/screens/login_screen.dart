import 'package:basketball_counter/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(top: 50.h,left: 10.w,right: 10.w),
          child: Column(
            children: [
              Lottie.asset('assets/lottie_files/132660-basketball.json'),
              SizedBox(height: 30.h,),
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Color(0xFF905928)
                ),
                child: Text('   Let\'s Count   ',style: TextStyle(color: Colors.white,fontSize: 28.sp,fontFamily: 'Pacifico'),),
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage()), );
                }, )
            ],
          ),
        ),
      ),
    );
  }
}
