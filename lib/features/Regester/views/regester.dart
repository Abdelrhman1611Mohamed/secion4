import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/Regester/data/models/user_model.dart';
import 'package:flutter_application_1/features/Regester/manager/register_cubit/register_cubit.dart';
import 'package:flutter_application_1/features/Regester/manager/register_cubit/register_state.dart';
import 'package:flutter_application_1/features/Regester/views/widgets/Widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Regester extends StatelessWidget {
  Regester({super.key});

final TextEditingController name = TextEditingController();
final TextEditingController age = TextEditingController();
final TextEditingController email = TextEditingController();
final TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
   return BlocProvider(
    create: (context)=> RegisterCubit(),
    child:  Scaffold(
      appBar: AppBar(
        title: Text('Register'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
           DefaultFormField(
            controller: name,
              name: 'NAME',
            ),
          
            SizedBox(
              height: 15,
            ),
            DefaultFormField(
            controller: age,
              name: 'Age',
            ),
          
            SizedBox(
              height: 15,
            ),
            DefaultFormField(
            controller: email,

              name: 'Email',
            ),
            SizedBox(
              height: 15,
            ),
            DefaultFormField(
            controller: password,
              name: 'Password',
            ),
            SizedBox(
              height: 15,
            ),
            BlocConsumer<RegisterCubit, RegisterState>(
              listener: (context, state)
              {
                print(state.toString());
              },
              builder: (context, state) {
                if(state is RegisterLoadingState)
                {
                  return Center(child: CircularProgressIndicator());
                }
                else
                {
                  return Column(
                    children: [
                      SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          foregroundColor: Colors.white
                        ),
                        onPressed: ()
                        {
                          RegisterCubit.get(context).register(
                            UserModel(
                              age: int.tryParse(age.text) ??-1,
                              name: name.text,
                              email: email.text,
                              password: password.text,
                            )
                          );
                        }, child: Text('Save btn', style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white),)),
                                      ),

                      Builder(builder: (context)
                      {
                        if(state is RegisterSuccessState)                
                        {return Text('Success');}
                      else if(state is RegisterErrortate)
                      {return Text(state.error);}
                      else {return const SizedBox();}
                      }),            
                      
                    ],
                  );
              
                }
                
                }
            )
          ],
        ),
      ),
    )
  

  );
  }
}