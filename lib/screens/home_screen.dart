import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_managment/cubits/cubit/main_cubit.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Column(
        children: [
          BlocBuilder<MainCubit, MainState>(
            builder: (context, state) {
              return Text(MainCubit.get(context).counter.toString());
            },
          ),
          ElevatedButton(
              onPressed: () {
                MainCubit.get(context).increment();
              },
              child: Text("+")),
          ElevatedButton(
              onPressed: () {
                MainCubit.get(context).decrement();
              },
              child: Text("-")),
        ],
      ),
    );
  }
}
