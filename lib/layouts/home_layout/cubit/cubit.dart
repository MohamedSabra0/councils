import 'package:councils/layouts/home_layout/cubit/states.dart';
import 'package:councils/modules/home/home_screen.dart';
import 'package:councils/modules/meeting/meeting_screen.dart';
import 'package:councils/modules/search/search_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../modules/chair_man_profile/chair_man_profile.dart';
import '../../../modules/edit_profile/edit_profile_screen.dart';

class HomeLayoutCubit extends Cubit<HomeLayoutStates>{

  HomeLayoutCubit():super(InitialState());
  static HomeLayoutCubit get(context)=>BlocProvider.of(context);

  int currentIndex=0;
  List<BottomNavigationBarItem>items=[
    BottomNavigationBarItem(
        icon: Icon(Icons.home,),
        label: 'Home'
    ),
    BottomNavigationBarItem(
        icon: Icon(Icons.shopping_bag_rounded),
        label: 'Meetings'
    ),
    BottomNavigationBarItem(
        icon: Icon(Icons.search),
        label: 'Search'
    ),
    BottomNavigationBarItem(
        icon: Icon(Icons.person),
        label: 'Profile'
    )
  ];
  List<Widget>screens=[
    HomeScreen(),
    MeetingScreen(),
    SearchScreen(),
    ChairManProfile(),
  ];
  void clickButtonNavigation(int index)
  {
    currentIndex=index;
    emit(ButtonNavigationState());
  }


}