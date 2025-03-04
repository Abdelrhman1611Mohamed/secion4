import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/home/manager/home_cubit/home_cubit.dart';
import 'package:flutter_application_1/features/home/manager/home_cubit/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Test Cubit'),
        ),
        body: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BlocConsumer<HomeCubit, HomeState>(listener: (context, state) {
                print(state.toString());
              }, builder: (context, state) {
                return Switch(
                    value: HomeCubit.get(context).mySwitch,
                    onChanged: HomeCubit.get(context).onChangeSwitch);
              }),
              BlocConsumer<HomeCubit, HomeState>(
                listener: (context, state) {},
                builder: (context, state) {
                  return Checkbox(
                      value: HomeCubit.get(context).myCheckBox,
                      onChanged: HomeCubit.get(context).onChangeCheckBox);
                },
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
