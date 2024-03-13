import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:novindus/provider/login_provider/login_provider.dart';

import 'package:provider/provider.dart';

import '../../../util/app_color.dart';
import '../../../util/app_constants.dart';

class LoginPage extends StatelessWidget {
   LoginPage({Key? key}) : super(key: key);

  @override
  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();


  Widget build(BuildContext context) {
    final loginProvider=Provider.of<LoginProvider>(context,listen: false);

    return  Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image.asset(icBackground,width: screenWidth(context),fit: BoxFit.cover,),
              Positioned(top: 70, left: 150, child: Image.asset(icLogo)),
            ],
          ),
          dividerH30(),
         Padding(
           padding: commonPaddingAll20,
           child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               const Text(
                 "Login Or Register To Book Your Appointments",
                 style: TextStyle(
                     color: AppColor.black,
                     fontWeight: FontWeight.bold,
                     fontSize: 25),
               ),
               dividerH30(),
               const Text("Email",style: TextStyle(color: AppColor.black),),
               dividerH8(),
               Container(
                 color: Colors.grey.shade200,
                 child: TextFormField(
                   controller: emailController,

                   decoration:const InputDecoration(
                       hintText:"Enter your email",
                       hintStyle: TextStyle(color: Colors.grey),

                       border: OutlineInputBorder()
                   ),
                 ),
               ),
               dividerH30(),
               const Text("Password",style: TextStyle(color: AppColor.black),),
               dividerH8(),
               Container(
                 color:  Colors.grey.shade200,
                 child: TextFormField(
                   controller: passwordController,
                   decoration:const InputDecoration(
                       hintText:"Enter  password",
                       hintStyle: TextStyle(color: Colors.grey),

                       border: OutlineInputBorder(
                           borderSide: BorderSide(
                               color: AppColor.green,width:0
                           )
                       )
                   ),
                 ),
               ),

               dividerH40(),
               InkWell(
                 onTap: ()async{

                   try {
                     if (emailController.text.isNotEmpty && passwordController.text.isNotEmpty) {
                       await loginProvider.login(emailController.text.toString(), passwordController.text.toString());

                       if (loginProvider.isLoggedIn) {
                        log("navigation success");
                       }
                     } else {
                       log("empty fields");
                     }
                   } catch (error) {

                   }

                 },
                 child: Container(
                   margin: commonPaddingAll20,
                   height: 50,
                   decoration: BoxDecoration(
                     color: AppColor.green,
                     borderRadius: BorderRadius.circular(12) ,
                   ),
                   child: const Center(child: Text("Login",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),)),
                 ),
               ),
               dividerH40(),

               RichText(
                 text: const TextSpan(
                   text: 'By creating or logging into an account you are agreeing with our  ',
                   style: TextStyle(color: AppColor.black,fontSize:15),
                   children: <TextSpan>[
                     TextSpan(text: 'Terms and Conditions ', style: TextStyle(fontWeight: FontWeight.bold,color: AppColor.blue)),
                     TextSpan(text: 'and '),
                     TextSpan(text: 'Privacy Policy',style: TextStyle(color: AppColor.blue,fontWeight: FontWeight.bold)),
                   ],
                 ),
               )
             ],
           ),
         )


        ],
      )

      ),
    );
  }
}
