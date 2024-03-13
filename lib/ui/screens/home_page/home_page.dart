import 'package:flutter/material.dart';
import 'package:novindus/ui/screens/registration_page/registration_page.dart';

import '../../../util/app_color.dart';
import '../../../util/app_constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: (){},
          child: Image.asset(icArrowBack),
        ),
        actions: [
          InkWell(
            onTap: (){},
            child: Image.asset(icNotification),
          ),
          dividerW8()
        ],

      ),
      body: ListView(
        padding: commonPaddingAll20,
        children: [
          Row(

            children: [
              Container(
                height: 50,
                width: screenWidth(context)/1.5,
                color: Colors.grey.shade200,
                child: TextFormField(


                  decoration:  InputDecoration(
                      prefixIcon: Image.asset(icSearch),
                      hintText: "Search for treatments",
                      hintStyle: TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(

                      )
                  ),
                ),
              ),
              dividerW8(),
              InkWell(
                onTap: (){

                },
                child: Container(
                  height: 50,
                  width: 80,
                  decoration: BoxDecoration(
                    color: AppColor.green,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text("Search",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 20),),
                  ),
                ),
              ),
            ],
          ),
          dividerH30(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Sort by :"),
              Container(
                width: screenWidth(context)/3,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.grey)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text("Date"),
                    Image.asset(icArrowDown)
                  ],
                ),
              )
            ],
          ),
          dividerH30(),
          ListView.separated(
            primary: false,
            shrinkWrap: true,
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                padding: commonPaddingAll15,
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(12),
                ),
                child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("${index+1}.  Vikram Singh",style: const TextStyle(fontWeight: FontWeight.bold),),
                    dividerH8(),
                    const Text("   Couple combo package",style: TextStyle(fontWeight: FontWeight.bold,color: AppColor.green),),
                    dividerH8(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Spacer(),
                        Icon(Icons.calendar_month,color: Colors.red,),
                        Text("31/01/2024"),

                        Spacer(),
                        Icon(Icons.person_outline_outlined,color: Colors.red,),
                        Text("Jithesh"),
                        Spacer(),

                      ],
                    ),
                    dividerH8(),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("View Booking details"),
                        dividerW20(),
                        dividerW20(),
                        Image.asset(icArrowRight)
                      ],
                    ),

                  ],
                ),
              );
            }, separatorBuilder: (BuildContext context, int index) {
            return dividerH30();
          },),

        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>RegistrationPage()));
        
      }),
    );
  }
}
