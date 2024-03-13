import 'package:flutter/material.dart';

import '../../../util/app_color.dart';
import '../../../util/app_constants.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  bool isCashClicked=false;
  bool isCardClicked=false;
  bool isUpiClicked=false;
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
  children:  [
    const Text("Register",style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold) ,),
    const Divider(),
    const Text("Name",style: TextStyle(fontSize: 18),),
    dividerH8(),
    Container(
      color: Colors.grey.shade200,
      child: TextFormField(

        decoration: const InputDecoration(
            hintText: "Enter your full name",
            hintStyle: TextStyle(color: Colors.grey),
            border: OutlineInputBorder(

            )
        ),
      ),
    ),
    dividerH12(),
    const Text("Whatsapp Number",style: TextStyle(fontSize: 18),),
    dividerH8(),
    Container(
      color: Colors.grey.shade200,
      child: TextFormField(

        decoration: const InputDecoration(
            hintText: "Enter your Whatsapp Number",
            hintStyle: TextStyle(color: Colors.grey),
            border: OutlineInputBorder(

            )
        ),
      ),
    ),
    dividerH12(),
    const Text("Address",style: TextStyle(fontSize: 18),),
    dividerH8(),
    Container(
      color: Colors.grey.shade200,
      child: TextFormField(

        decoration: const InputDecoration(
            hintText: "Enter your address",
            hintStyle: TextStyle(color: Colors.grey),
            border: OutlineInputBorder(

            )
        ),
      ),
    ),
    dividerH12(),
    const Text("Location",style: TextStyle(fontSize: 18),),
    dividerH8(),
    Container(
      color: Colors.grey.shade200,
      child: TextFormField(

        decoration:  InputDecoration(
            hintText: "Choose your location",
            suffixIcon: Image.asset(icArrowDown,height: 10,width: 10,),
            hintStyle: const TextStyle(color: Colors.grey),
            border: const OutlineInputBorder(

            )
        ),
      ),
    ),
    dividerH12(),
    const Text("Branch",style: TextStyle(fontSize: 18),),
    dividerH8(),
    Container(
      color: Colors.grey.shade200,
      child: TextFormField(

        decoration:  InputDecoration(
            hintText: "select your branch",
            suffixIcon: Image.asset(icArrowDown,height: 10,width: 10,),
            hintStyle: const TextStyle(color: Colors.grey),
            border: const OutlineInputBorder(

            )
        ),
      ),
    ),
    dividerH12(),
    const Text("Treatments",style: TextStyle(fontSize: 18),),
    dividerH8(),
    Container(
      padding: commonPaddingAll15,
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(12),

      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("1."),
              Text("Couple Combo Package",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
              InkWell(
                onTap: (){},
                child: Image.asset(icClose),
              )

            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Spacer(),
              Text("Male"),
              dividerW3(),
              Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.grey)

                ),
                child: Center(child: Text("2")),
              ),
              Spacer(),
              Text("Female"),
              dividerW3(),
              Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.grey)

                ),
                child: Center(child: Text("2")),
              ),
              Spacer(),
              InkWell(
                onTap: (){},
                child: Image.asset(icEdit),
              )
            ],
          )
        ],
      ),
    ),
    dividerH8(),
    InkWell(
      onTap: (){
        addTreatment();

      },
      child: Container(
        height: 50,
        decoration: BoxDecoration(
            color: Colors.green.shade100,
            borderRadius: BorderRadius.circular(12)
        ),
        child:
        Row(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
            Icon(Icons.add),
            Text("Add Treatments",style: TextStyle(fontWeight: FontWeight.bold),)
          ],
        ),
      ),
    ),
    dividerH12(),
    const Text("Total Amount",style: TextStyle(fontSize: 18),),
    dividerH8(),
    Container(
      color: Colors.grey.shade200,
      child: TextFormField(

        decoration: const InputDecoration(
            hintStyle: TextStyle(color: Colors.grey),
            border: OutlineInputBorder(

            )
        ),
      ),
    ),
    dividerH12(),
    const Text("Discount Amount",style: TextStyle(fontSize: 18),),
    dividerH8(),
    Container(
      color: Colors.grey.shade200,
      child: TextFormField(

        decoration: const InputDecoration(
            hintStyle: TextStyle(color: Colors.grey),
            border: OutlineInputBorder(

            )
        ),
      ),
    ),
    dividerH12(),
    const Text("Payment Option",style: TextStyle(fontSize: 18),),
    dividerH8(),
    Row(
      children: [
        InkWell(
          onTap: (){
            setState(() {
              isCashClicked=true;
              isUpiClicked=false;
              isCardClicked=false;
            });
          },
          child: Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
                color: isCashClicked?Colors.lightGreenAccent:null,
                borderRadius:BorderRadius.circular(12),
                border: Border.all(color: isCashClicked?Colors.black:Colors.grey)
            ),
          ),
        ),
        dividerW3(),
        Text("Cash",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
        Spacer(),
        InkWell(
          onTap: (){
            setState(() {
              isCashClicked=false;
              isUpiClicked=false;
              isCardClicked=true;
            });
          },
          child: Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
                color: isCardClicked?Colors.lightGreenAccent:null,
                borderRadius:BorderRadius.circular(12),
                border: Border.all(color: isCardClicked?Colors.black:Colors.grey)
            ),
          ),
        ),
        dividerW3(),
        Text("Card",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
        Spacer(),
        InkWell(
          onTap: (){
            setState(() {
              isCashClicked=false;
              isUpiClicked=true;
              isCardClicked=false;
            });
          },
          child: Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
                color: isUpiClicked?Colors.lightGreenAccent:null,
                borderRadius:BorderRadius.circular(12),
                border: Border.all(color:isUpiClicked?Colors.black: Colors.grey)
            ),
          ),
        ),
        dividerW3(),
        Text("UPI",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)
      ],
    ),
    dividerH12(),
    dividerH12(),
    const Text("Advance Amount",style: TextStyle(fontSize: 18),),
    dividerH8(),
    Container(
      color: Colors.grey.shade200,
      child: TextFormField(

        decoration: const InputDecoration(
            hintStyle: TextStyle(color: Colors.grey),
            border: OutlineInputBorder(

            )
        ),
      ),
    ),
    dividerH12(),

    const Text("Balance Amount",style: TextStyle(fontSize: 18),),
    dividerH8(),
    Container(
      color: Colors.grey.shade200,
      child: TextFormField(

        decoration: const InputDecoration(
            hintStyle: TextStyle(color: Colors.grey),
            border: OutlineInputBorder(

            )
        ),
      ),
    ),
    dividerH12(), dividerH12(),
    const Text("Treatment Date",style: TextStyle(fontSize: 18),),
    dividerH8(),
    Container(
      color: Colors.grey.shade200,
      child: TextFormField(
        decoration:  InputDecoration(
            suffixIcon: InkWell(
              onTap: (){},
              child: Image.asset(icCalender),
            ),
            hintStyle: TextStyle(color: Colors.grey),
            border: OutlineInputBorder(

            )
        ),
      ),
    ),
    dividerH12(),
    const Text("Treatment Time",style: TextStyle(fontSize: 18),),
    dividerH8(),
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Container(
            //  width: 20,
            height: 50,
            color: Colors.grey.shade200,
            child: TextFormField(
              decoration:  InputDecoration(
                  hintText: "Hour",
                  suffixIcon: Image.asset(icArrowDown,height: 10,width: 10,),
                  hintStyle: const TextStyle(color: Colors.grey),
                  border: const OutlineInputBorder(

                  )
              ),
            ),
          ),
        ),
        dividerW8(),
        Expanded(
          child: Container(
            // width: 50,
            height: 50,
            color: Colors.grey.shade200,
            child: TextFormField(

              decoration:  InputDecoration(
                  hintText: "Minutes",
                  suffixIcon: Image.asset(icArrowDown,height: 10,width: 10,),
                  hintStyle: const TextStyle(color: Colors.grey),
                  border: const OutlineInputBorder(

                  )
              ),
            ),
          ),
        ),
      ],
    ),
    dividerH12(),
    InkWell(
      onTap: (){

      },
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          color: AppColor.green,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text("Save",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 20),),
        ),
      ),
    ),
    dividerH30(),



  ],
),
    );
  }
  void addTreatment(){
    showDialog(context: context, builder: (context){
      return  AlertDialog(
        backgroundColor: Colors.white,
        content: Container(height: screenHeight(context)/2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              Text("Choose Treatment"),
              dividerH8(),
              Container(
                color: Colors.grey.shade200,
                child: TextFormField(

                  decoration:  InputDecoration(
                      hintText: "choose prefered treatment",
                      suffixIcon: Image.asset(icArrowDown,height: 10,width: 10,),
                      hintStyle: const TextStyle(color: Colors.grey),
                      border: const OutlineInputBorder(

                      )
                  ),
                ),
              ),
              dividerH12(),
              Text("Add Patients"),
              dividerH8(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: Text("Male"),
                    ),
                  ),
                  InkWell(
                    onTap: (){},
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColor.green,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child:Icon(Icons.remove_sharp,color: Colors.white,weight:5,),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: Text("1"),
                    ),
                  ),
                  InkWell(
                    onTap: (){},
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColor.green,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child:Icon(Icons.add,color: Colors.white,weight:5,),
                      ),
                    ),
                  ),

                ],
              ),
              dividerH8(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: Text("Female"),
                    ),
                  ),
                  InkWell(
                    onTap: (){},
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColor.green,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child:Icon(Icons.remove_sharp,color: Colors.white,weight:5,),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: Text("1"),
                    ),
                  ),
                  InkWell(
                    onTap: (){},
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColor.green,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child:Icon(Icons.add,color: Colors.white,weight:5,),
                      ),
                    ),
                  ),

                ],
              ),
              dividerH30(),
              InkWell(
                onTap: (){

                },
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: AppColor.green,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text("Save",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 20),),
                  ),
                ),
              ),




            ],
          ),
        ),
      );



    });

  }
}
