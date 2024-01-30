import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smile_shope/layout/cubit/cubit.dart';
import 'package:smile_shope/layout/cubit/state.dart';

class SmileShopeHomeScreen extends StatelessWidget {
  SmileShopeHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SmileShopeHomeCubit(),
      child: BlocConsumer<SmileShopeHomeCubit, SmileShopeHomeState>(
          listener: (context, state) {},
          builder: (context, state) {
            var cubit = SmileShopeHomeCubit.get(context);

            return Scaffold(
              appBar: AppBar(
                title: const Text(
                  'Smile Shope 🤩 Hellow ',
                  style: TextStyle(fontSize: 25),
                ),
              ),
              body: cubit.screens[cubit.index],
              bottomNavigationBar: BottomNavigationBar(
                  elevation: 1.5,
                  currentIndex: cubit.index,
                  onTap: (value) {
                    cubit.changeBottomNavigation(value);
                  },

                  // enableFeedback: true,
                  // mouseCursor: MouseCursor.defer,
                  unselectedItemColor: Colors.black,
                  selectedItemColor: Colors.pink,
                  backgroundColor: const Color.fromARGB(255, 217, 215, 215),
                  type: BottomNavigationBarType.fixed,
                  items: const [
                    BottomNavigationBarItem(
                        icon: Icon(Icons.home), label: 'Home'),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.category), label: 'categores'),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.home), label: 'Home'),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.ac_unit), label: 'ls'),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.add_shopping_cart), label: 'Cart'),
                  ]),
            );
          }),
    );
  }
}
