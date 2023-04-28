import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:health_tracker/screens/login_Reg/registration.dart';
import 'package:http/http.dart';
import '../main_pages/bottom_bar.dart';


class Login extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<Login> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void login(String email , password) async {
    try{
      Response response = await post(
          Uri.parse('https://api.jobfid.com/api/login'),
          body: {
            'email': email,
            'password': password,
          }
      );

      if(response.statusCode == 200){
        var data = jsonDecode(response.body.toString());
        print(data['token']);

        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => Nav()),
        );

        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('Login Successful'),
          duration: Duration(seconds: 2),
          backgroundColor: Colors.green,
        ));
      }else {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('Login Failed'),
          duration: Duration(seconds: 2),
          backgroundColor: Colors.redAccent,
        ));
      }
    }catch(e){
      print(e.toString());
    }
  }

  @override
  void initState(){
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(25.h),
                  child: Column(
                    children: [
                      Container(
                        width: 320.w,
                        height: 290.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.h),
                          image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                                "images/Doctor's office.gif"
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                    ],
                  ),
                ),
                Text(
                  "Health Tracker",
                  style: TextStyle(
                    fontSize: 36.sp,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Rajdhani',
                  ),
                ),
                SizedBox(height: 10.h,),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.w),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      border: Border.all(color: Colors.blue),
                      borderRadius: BorderRadius.circular(12.h),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 20.w),
                      child: TextField(
                        controller: emailController,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Email",
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10.h,),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.w),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      border: Border.all(color: Colors.blue),
                      borderRadius: BorderRadius.circular(12.h),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 20.w),
                      child: TextField(
                        controller: passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Password",
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.w),
                  child: GestureDetector(
                    onTap: () {
                      login(emailController.text.toString(), passwordController.text.toString());
                    },
                    child: Container(
                      padding: EdgeInsets.all(20.h),
                      decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(12.h),
                      ),
                      child: Center(
                        child: Text(
                          "SIGN IN",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 12.h,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 25.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Not a member?",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(context,
                          MaterialPageRoute(builder:
                              (context)=>Register(),
                          ),
                        );
                      },
                      child: Text(" Register now",
                        style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5.h),
                Text("Forgot Password?",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
