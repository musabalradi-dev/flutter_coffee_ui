import 'package:coffee_ui/modules/favorite_screen/favorite_screen.dart';
import 'package:coffee_ui/modules/home_screen/home_screen.dart';
import 'package:coffee_ui/modules/notifications_screen/notifications_screen.dart';
import 'package:coffee_ui/modules/shop_screen/shop_screen.dart';
import 'package:flutter/material.dart';
import 'package:coffee_ui/shared/cubit/state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CoffeeCubit extends Cubit<CoffeeState> {
  CoffeeCubit() : super(InitialCoffeeState());

  CoffeeCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

  List<Widget> layoutScreen =[
    const HomeScreen(),
    const ShopScreen(),
    const FavoriteScreen(),
    const NotificationsScreen(),
  ];

  List<BottomNavigationBarItem> bottomNavItem = [
    const BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'home'
    ),
    const BottomNavigationBarItem(
        icon: Icon(Icons.shopping_bag_rounded),
        label: 'shop'
    ),
    const BottomNavigationBarItem(
        icon: Icon(Icons.favorite),
        label: 'favorite'
    ),
    const BottomNavigationBarItem(
        icon: Icon(Icons.notifications),
        label: 'notifications'
    ),
  ];

  void changeBottomNavBar(int index){
    currentIndex = index;
    emit(ChangeBottomNavBarState());
  }
}