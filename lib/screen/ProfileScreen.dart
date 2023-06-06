import 'package:flutter/material.dart';
import 'package:tasks1_flutter/value/ValueColor.dart';
import 'package:tasks1_flutter/widget/CardWidget.dart';



class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text("Profile",style: TextStyle(color: Colors.black,fontSize: 25),),
        centerTitle: true,
      ),
      body:  Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(

              gradient: LinearGradient(
                  end: Alignment.bottomCenter,
                  colors: [Color(ValueColor.BEIGE), Color(ValueColor.GREEN)
              ])),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              Image.asset("images/65069802232.png",height: 150,width: 150,),
              SizedBox(height: 10,),
              Text("Ibrahim R Alegla",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold,),),
              Text("Palestine Gaza",style: TextStyle(color: Colors.black,fontSize: 14),),
              Divider(
                height: 50,
                thickness: 1,
                color: Colors.black87,
                indent: 30,
                endIndent: 30,
              ),
              CardWidget(
                title: "Mobile",
                subtitle:"0597080126",
                leading: Icon(Icons.phone_android),
                trailing: Icon(Icons.phone),
                onPressed: (){ _showMessage(message: "Call Naw");},
                onTap: (){},
              ),
              SizedBox(height: 15,),
              CardWidget(
                title: "Email",
                subtitle:"ibraheem@gmail.com",
                leading: Icon(Icons.email_outlined),
                trailing: Icon(Icons.send),
                onPressed: (){_showMessage(message: "Send Email");},
                onTap: (){},
              ),
              SizedBox(height: 15,),
              CardWidget(
                title: "Location",
                subtitle:"GAZA",
                leading: Icon(Icons.location_on_outlined),
                trailing: Icon(Icons.map_outlined),
                onPressed: (){_showMessage(message: "Open Map");},
                onTap: (){},
              ),
              Spacer(),
              Text("Instagram: x7hem",style: TextStyle(color: Colors.black87,fontSize: 16,fontStyle: FontStyle.italic),),
              SizedBox(height: 15,)


            ],
          )
        ),
    );
  }
  void _showMessage({required String message}){
    ScaffoldMessenger.of(context).showSnackBar(
     SnackBar(content:
      Text(message,style: TextStyle(color: Color(ValueColor.GREEN),fontSize: 17),),
       duration: Duration(seconds: 3),
       backgroundColor: Color(ValueColor.BEIGE),
       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
       behavior: SnackBarBehavior.floating,
       dismissDirection: DismissDirection.horizontal,
       padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
     ),

    );
  }
}



