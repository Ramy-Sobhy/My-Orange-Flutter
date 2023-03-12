// ignore_for_file: non_constant_identifier_names, avoid_types_as_parameter_names
import 'package:flutter/material.dart';


Widget defaultFormField({
  required TextEditingController controller ,
  required TextInputType type,
  required String lable,
  required IconData prefix,
  IconData ? suffix,
  bool obsecure=false,
  Function ?onpress,
  required FormFieldValidator validator,
  double radius = 0,
  Color borderSide = Colors.deepOrangeAccent,
  Color IconColor = Colors.deepOrangeAccent,
  Color LableColor = Colors.deepOrangeAccent,
})=>TextFormField(
  controller: controller,
  keyboardType: type,
  obscureText: obsecure,

  decoration: InputDecoration(

    label: Text(lable),
    labelStyle:  TextStyle(
      color: LableColor,
      //fontWeight: FontWeight.bold,
    ),
    focusColor: Colors.black,
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(radius),
      borderSide:  BorderSide(
        color:borderSide,
        width: 1,
      ),
    ),
    border: OutlineInputBorder(
      borderSide: const BorderSide(
      ),
      borderRadius: BorderRadius.circular(radius),

    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(radius),
      borderSide:  BorderSide(
        color:borderSide,
        width: 1,
      ),
    ),
    prefixIcon:Icon
      (
      prefix,
      color: IconColor,
    ),
    suffixIcon:IconButton(
      onPressed: (){
        onpress!();
      },
      icon: Icon(
        suffix,
        color: IconColor,
      ),
    ),
  ),
  validator:validator,
);




Widget defaulttextbutton({
  required String text,
  Color textcolor = Colors.deepOrangeAccent,
  double fontsize = 15,
  required Function onpressed,
})=>TextButton(
  onPressed: (){
    onpressed();
  },
  child:Text(
    text,
    textAlign: TextAlign.end,
    style: TextStyle(
      color: textcolor,
      //fontWeight: FontWeight.bold,
      fontSize:fontsize,
    ),
  ),
);



Widget defaultButton({
  double width = double.infinity,
  double height  = 40,
  Color background = Colors.deepOrangeAccent,
  required String text,
  required Function onpress,
  Color textcolor = Colors.white,
  double radius = 15,
  double fontsize = 20,
  Color borderColor = Colors.deepOrangeAccent,
})=> Container(
  width:width,
  height: height,
  decoration: BoxDecoration(
    borderRadius:  BorderRadius.circular(radius),
    border: Border.all(
      color:borderColor,
    ),
    color: background,
  ),
  child: MaterialButton(
    onPressed:(){
      onpress();
    },
    child:Text(
      text,
      style: TextStyle(
        fontSize: fontsize,
        color: textcolor,
      ),
    ),
  ),
);




Widget defalutListDrawer({
  required IconData listIcon,
  required String title,
  required Function ontap,
})=>ListTile(
  leading: Icon(
    listIcon,
    color: Colors.white,

  ),
  title: Text(
    title,
    style:const TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 15
    ),
  ),
  onTap:(){
    ontap();
  },
);






Widget defalutListMoreDrawer({
  required IconData listIcon,
  required String title,
  required Function ontap,
})=>ListTile(
  leading: Icon(
    listIcon,
    color: Colors.black,

  ),
  title: Text(
    title,
    style:const TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: 15
    ),
  ),
  onTap:ontap(),
);










Widget defaultUnits({
  required String title,
  required Function onclick,
  width = double.infinity,
  int height = 120,
  Color containerColor = Colors.white,

}) => Container(
  width: width,
  height: 120,
  color: containerColor,
  child: Padding(
    padding: const EdgeInsets.all(20.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:[
         Expanded(
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,

            ),
          ),
        ),
        defaultButton(
          text:'My Consumption',
          onpress: onclick,
          radius: 0,
          background: Colors.white,
          textcolor: Colors.deepOrangeAccent,
          fontsize: 15,
        )
      ],
    ),
  ),
);



Widget defaultInternet({
  required String title,
  String ?body,
  required Function onclick,
  width = double.infinity,
  int height = 120,
  Color containerColor = Colors.white,

}) => Container(
  width: width,
  height: 130,
  color: containerColor,
  child: Padding(
    padding: const EdgeInsets.all(20.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,

                ),
              ),
              const SizedBox(height: 5,),
              Text(
                body!,
                style: const TextStyle(
                  fontSize: 12,
                  //fontWeight: FontWeight.bold,

                ),
              ),
            ],
          ),
        ),
        defaultButton(
          text:'Subscribe or check your consumption',
          onpress: onclick,
          radius: 0,
          background: Colors.white,
          textcolor: Colors.deepOrangeAccent,
          fontsize: 13,
        )
      ],
    ),
  ),
);



Widget defaultRoaming({
  required String title,
  required Function onclick,
  width = double.infinity,
  int height = 120,
  Color containerColor = Colors.white,

}) => Container(
  width: width,
  height: 130,
  color: containerColor,
  child: Padding(
    padding: const EdgeInsets.all(20.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:[
        Expanded(
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,

            ),
          ),
        ),
        defaultButton(
          text:'Manage',
          onpress: onclick,
          radius: 0,
          background: Colors.white,
          textcolor: Colors.deepOrangeAccent,
          fontsize: 13,
        )
      ],
    ),
  ),
);






Widget defaultcardwithtitle({
  required IconData icon,
  required String first_text,
  required String seconed_text,
  required Function OnPressed,

})=>Column(
  children: [
    Container(
      width: 70,
      height: 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      child:IconButton(
         icon: Icon(
          icon,
          size: 30,
          color: Colors.deepOrangeAccent,
        ),
        onPressed:(){
          OnPressed();
      },
      ),

    ),
    const SizedBox(height: 10,),
    Text(
      first_text,
      style: TextStyle(
        fontSize: 12,
        color: Colors.grey[700],

      ),
    ),
    Text(
      seconed_text,
      style: TextStyle(
        fontSize: 12,
        color: Colors.grey[700],

      ),
    ),
  ],
);












Widget defaultEntertainment({
  required String image,
  required String title,
  required String body,
}) =>Container(
  decoration: BoxDecoration(
    //color: Colors.white,
    borderRadius: BorderRadius.circular(15),
  ),
    child: Column(
      children:[
         Image(
            image: AssetImage(
              image,
            ),
           height: 200,
           width: 140,
        ),
        const SizedBox(height: 5,),
        Text(
          title,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 18,
          ),
        ),
        const SizedBox(height: 5,),
        Text(
          body,
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 10,),
      ],
    ),
);














Widget ContactUs({
  required String title,
  required String title1_button,
  required String title1_body,
  required Function function1,
  required String title2_button,
  required String title2_body,
  required Function function2,

})=>Card(
  elevation: 5,
  child:   Container(
    width: double.infinity,
    height: 130,
    decoration:  BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(15),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Center(
            child:  Text(
              title,
              style: const TextStyle(
                  fontSize: 18
              ),
            ),
          ),
        ),
        Row(
          children: [
            Container(
              height:40,
              child: TextButton(
                onPressed: (){
                  function1();
                },
                child: Text(
                  title1_button,
                  style: const TextStyle(
                      color: Colors.deepOrangeAccent,
                      fontSize: 16
                  ),
                ),
              ),
            ),
            Text(
              title1_body,
              style: const TextStyle(

                  fontSize: 16
              ),
            ),
          ],
        ),
        Row(
          children: [
            SizedBox(
              height: 40,
              child: TextButton(
                onPressed: (){
                  function2();
                },
                child: Text(
                  title2_button,
                  style: const TextStyle(
                      color: Colors.deepOrangeAccent,
                      fontSize: 16
                  ),
                ),
              ),
            ),
            Text(
              title2_body,
              style: const TextStyle(
                  fontSize: 16
              ),
            ),
          ],
        ),
      ],
    ),
  ),
);



Widget ContactUsOne({
  required String title,
  required String title1_button,
  required String title1_body,
  required Function function1,


})=>Card(
  elevation: 5,
  child:   Container(
    width: double.infinity,
    height: 130,
    decoration:  BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(15),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Center(
            child:  Text(
              title,
              style: const TextStyle(
                  fontSize: 18
              ),
            ),
          ),
        ),
        const Spacer(),
        Row(
          children: [
            SizedBox(
              height:40,
              child: TextButton(
                onPressed: (){
                  function1();
                },
                child: Text(
                  title1_button,
                  style: const TextStyle(
                      color: Colors.deepOrangeAccent,
                      fontSize: 16
                  ),
                ),
              ),
            ),
            Text(
              title1_body,
              style: const TextStyle(

                  fontSize: 16
              ),
            ),
          ],
        ),
        const SizedBox(height: 40,),
      ],
    ),
  ),
);






Widget cardOffer({
  required IconData icon,
  required String title,
  required String description,
  required Function subscribe,
})=>Container(
  width: double.infinity,
  height: 120,
  decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      color: Colors.white,
      border: Border.all(
        color: Colors.grey,
      )
  ),
  child: Padding(
    padding: const EdgeInsets.all(10.0),
    child: Column(
      children: [
        Row(
          children: [
            Icon(
             icon,
              color: Colors.deepOrange,
            ),
            Spacer(),
            Text(title),
            Spacer(),
            defaultButton(
              width: 90,
              height: 25,
              fontsize: 12,
              background: Colors.white,
              textcolor: Colors.deepOrange,
              borderColor: Colors.deepOrange,

              text: 'Subscribe',
              onpress: (){
                subscribe();
              },
            ),
          ],
        ),
        Spacer(),
        Text(description,),
        SizedBox(height: 5,),
      ],
    ),
  ),
);





Widget cardPayment({
  required IconData icon,
  required String text,
})=> Card(
  elevation: 2,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10),
  ),
  child: Container(
    width: double.infinity,
    height: 60,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
    ),
    child: Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.deepOrange,
            size: 30,
          ),
          SizedBox(width: 15,),
          Text(text),
        ],
      ),
    ),
  ),
);



