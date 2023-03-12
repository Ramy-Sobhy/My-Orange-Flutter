
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_orange/Screens/Register/cubit/cubit.dart';
import 'package:my_orange/Screens/Register/cubit/states.dart';
import 'package:my_orange/shared/component.dart';

import '../../Layout/home_layout.dart';

class RegisterScreen extends StatelessWidget {
   RegisterScreen({Key? key}) : super(key: key);
  var phonecontroller =TextEditingController();
   var emailcontroller =TextEditingController();
   var passwordcontroller =TextEditingController();
   var formRegister=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context)=>RegisterCubit(),
      child: BlocConsumer<RegisterCubit,RegisterStates>(
        listener: (context ,state){},
        builder: (context, state){
          return  Scaffold(
            appBar: AppBar(
              title: const Text('Create Account'),
              elevation: 0,
              backgroundColor: Colors.black,
              titleTextStyle: const TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
              iconTheme: const IconThemeData(
                color: Colors.white,
              ),
            ),
            body: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Form(
                key: formRegister,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      defaultFormField(
                        borderSide: Colors.grey,
                        IconColor: Colors.grey,
                        LableColor: Colors.grey,
                        radius: 10,
                        controller: phonecontroller,
                        type: TextInputType.phone,
                        lable: 'Phone',
                        prefix: Icons.phone_iphone,
                        validator: (value){
                          if(value.isEmpty){
                            return 'Please enter phone number';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 10,),

                      defaultFormField(
                        LableColor: Colors.grey,
                        IconColor: Colors.grey,
                        borderSide: Colors.grey,
                        radius: 10,
                        controller: emailcontroller,
                        type: TextInputType.emailAddress,
                        lable: 'Email',
                        prefix: Icons.email_outlined,
                        validator: (value){
                          if(value.isEmpty){
                            return 'Please enter your email Address';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 10,),
                      defaultFormField(
                        LableColor: Colors.grey,
                        IconColor: Colors.grey,
                        borderSide: Colors.grey,
                        radius: 10,
                        controller: passwordcontroller,
                        type: TextInputType.visiblePassword,
                        lable: 'Password',
                        prefix: Icons.lock,
                        suffix: RegisterCubit.get(context).suffix,
                        obsecure: RegisterCubit.get(context).isPassword,
                        onpress: (){
                          RegisterCubit.get(context).changePasswordVisibility();
                        },
                        validator: (value){
                          if(value.isEmpty){
                            return 'Please enter your email Address';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 5,),
                      const Text('Password must be minimum of 6 and maximum of 20 characters'),
                      const SizedBox(height: 15,),
                      defaultButton(
                        radius: 0,
                        fontsize: 16,
                        width: 110,
                        text: 'Register',
                        onpress: (){
                          if(formRegister.currentState!.validate()){
                            Navigator.push(context,MaterialPageRoute(
                              builder: (context) => const HomeLayout(),));
                          }
                        },
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













