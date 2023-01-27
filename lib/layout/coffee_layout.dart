import 'package:coffee_ui/shared/cubit/cubit.dart';
import 'package:coffee_ui/shared/cubit/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class CoffeeLayout extends StatelessWidget {
  const CoffeeLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CoffeeCubit(),
      child: BlocConsumer<CoffeeCubit, CoffeeState>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = CoffeeCubit().get(context);
          return Scaffold(
            appBar: AppBar(
              leading: const Icon(Icons.menu),
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: IconButton(onPressed: (){}, icon: const Icon(Icons.person)),
                )
              ],
            ),
            body: cubit.layoutScreen[cubit.currentIndex],
            bottomNavigationBar: BottomNavigationBar(
              items: cubit.bottomNavItem,
              type: BottomNavigationBarType.fixed,
              currentIndex: cubit.currentIndex,
              showUnselectedLabels: false,
              showSelectedLabels: false,
              onTap: (index){
                cubit.changeBottomNavBar(index);
              },
            ),
          );
        }
      ),
    );
  }
}
