
// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_orange/Screens/Login/cubit/cubit.dart';
import 'package:my_orange/Screens/Login/cubit/states.dart';
import '../../Drawer/drawer_screen.dart';
import '../../Layout/home_layout.dart';
import '../../shared/component.dart';
import '../Register/register_screen.dart';


class LoginScreen extends StatelessWidget {
    LoginScreen({Key? key}) : super(key: key);

  var phoneController =TextEditingController();
   var passwordController =TextEditingController();
   var formKey = GlobalKey<FormState>();

   @override
   Widget build(BuildContext context) {
     return BlocProvider(
       create: (BuildContext context)=>LoginCubit(),
       child: BlocConsumer<LoginCubit,LoginStates>(
         listener: (context,state){},
         builder: (context ,state){
           return  Scaffold(
             drawer:const DrawerScreen(),
             appBar: AppBar(
               title: const Text('My Account'),
               actions: [
                 IconButton(
                   onPressed: (){},
                   icon:const Icon(
                     Icons.more_vert_sharp,
                   ),
                 ),
               ],
             ),
             body: SingleChildScrollView(
               child: Padding(
                 padding: const EdgeInsets.all(20.0),
                 child: Form(
                   key: formKey,
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.end,
                     children:[
                       const SizedBox(height: 20),
                       const Center(
                         child: CircleAvatar(
                           backgroundColor: Colors.deepOrangeAccent,
                           radius: 40,
                           child: Icon(
                             size: 70,
                             color: Colors.white,
                             Icons.person,
                           ),
                         ),
                       ),
                       const SizedBox(height:15),
                       const Center(
                         child:  Text(
                           'Login with your www.orange.eg account',
                           style: TextStyle(
                             fontWeight: FontWeight.bold,
                           ),
                         ),
                       ),
                       const SizedBox(height: 15),
                       const Text(
                         'it is easy to use no need to register / sign up just open it from line internet '
                             'connection also no need for data bucket it is totally free! ',
                         style: TextStyle(
                           color: Colors.black,
                           fontSize: 10,
                         ),
                       ),
                       const SizedBox(height: 20),
                       defaultFormField(
                           controller: phoneController,
                           lable: 'Mobile number',
                           type: TextInputType.phone,
                           prefix: Icons.phone_iphone_outlined,
                           validator: (value){
                             if(value.isEmpty){
                               return 'Please enter your phone number';
                             }
                             return null;
                           }
                       ),
                       const SizedBox(height: 10),
                       defaultFormField(
                           controller: passwordController,
                           lable: 'Password',
                           type: TextInputType.visiblePassword,
                           prefix: Icons.lock_outline,
                           suffix:LoginCubit.get(context).suffix,
                           obsecure:LoginCubit.get(context).isPassword,
                           onpress: (){
                             LoginCubit.get(context).changePasswordVisibility();
                           },
                           validator: (value){
                             if(value.isEmpty){
                               return 'Please enter your password';
                             }
                             return null;
                           }
                       ),
                       defaulttextbutton(
                           text: 'Forgot Password ?,',
                           fontsize: 13,
                           onpressed: (){
                             showDialog(
                                 context: context,
                                 builder: (BuildContext context){
                                   return Dialog(
                                     child: SizedBox(
                                       height: 150,
                                       child: Padding(
                                         padding: const EdgeInsets.all(10.0),
                                         child: Column(
                                           children: [
                                             TextFormField(
                                               decoration: const InputDecoration(
                                                 hintText: 'Mobile Number',
                                               ),
                                               keyboardType: TextInputType.phone,
                                             ),
                                             const SizedBox(height: 30,),
                                             Row(
                                               mainAxisAlignment: MainAxisAlignment.end,
                                               children:[
                                                 MaterialButton(
                                                   onPressed: (){
                                                     Navigator.pop(context);
                                                   },
                                                   child: const Text(
                                                     'cancel',
                                                     style: TextStyle(
                                                       fontSize: 20,
                                                     ),
                                                   ),
                                                 ),
                                                 MaterialButton(
                                                   onPressed: (){
                                                     Navigator.pop(context);
                                                   },
                                                   child: const Text(
                                                     'ok',
                                                     style: TextStyle(
                                                       fontSize: 20,
                                                     ),
                                                   ),
                                                 ),

                                               ],
                                             ),
                                           ],
                                         ),
                                       ),
                                     ),
                                   );
                                 });
                           }
                       ),
                       defaultButton(
                         text: 'login',
                         onpress: (){
                           if(formKey.currentState!.validate()){

                             // LoginCubit.get(context).userLogin(
                             //     phone: phoneController.text,
                             //     password: passwordController.text,
                             // );

                             Navigator.push(context,MaterialPageRoute(
                               builder: (context) => const HomeLayout(),));
                           }

                         },
                       ),
                       const SizedBox(height:5),
                       Center(
                         child: defaulttextbutton(
                           fontsize: 14,
                           text: 'Create one now',
                           onpressed: (){
                             Navigator.push(context, MaterialPageRoute(
                                 builder: (context) => RegisterScreen(),));
                           },
                         ),
                       ),
                       const SizedBox(height:5),
                       Row(
                         children: [
                           Expanded(
                             child: Column(
                               children:const [
                                 Text(
                                   'Change to Orange with your number',
                                   style: TextStyle(
                                     fontWeight: FontWeight.bold,
                                     fontSize: 15,

                                   ),
                                 ),
                                 SizedBox(height: 10,),
                                 Text(
                                   'Change to Orange PREMIER with your number'
                                       ' within 24 hours and enjoy with the fast network in Egypt ',
                                   style: TextStyle(
                                     color: Colors.grey,
                                     fontSize: 10,
                                   ),
                                 ),
                               ],
                             ),
                           ),
                           defaultButton(
                             radius: 10,
                             fontsize: 14,
                             text:'port in',
                             width: 100,
                             background: Colors.white,
                             textcolor: Colors.deepOrangeAccent,
                             onpress: (){},
                           ),
                         ],
                       ),
                     ],
                   ),
                 ),
               ),
             ),
           );
         },
       ),
     );
   }



}
