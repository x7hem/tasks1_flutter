import 'package:flutter/material.dart';
import 'package:tasks1_flutter/value/ValueColor.dart';

class CardWidget extends StatelessWidget {
 final String title;
 final String subtitle;
 final Icon leading;
 final Icon trailing;
 final VoidCallback onPressed;
 final GestureTapCallback onTap;

 CardWidget({required this.title,required this.subtitle, required this.leading,
   required this.trailing,
   required this.onPressed,
   required this.onTap
 });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: EdgeInsets.symmetric(horizontal: 20),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),

      ),
      child: ListTile(
        onTap: onTap,
        minLeadingWidth: 0,
        iconColor: Color(ValueColor.GREEN),
        leading: leading,
        title: Text(title,style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Color(ValueColor.GREEN)
        ),),
        subtitle: Text(subtitle,style: TextStyle(color: Color(ValueColor.GREEN)),),
        trailing: IconButton(
          onPressed: onPressed,
          icon: trailing,
          color: Color(ValueColor.GREEN),
        ),
      ),
    );
  }
}