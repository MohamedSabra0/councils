import 'package:bloc/bloc.dart';
import 'package:councilapp/Views/home_view.dart';
import 'package:councilapp/Views/meeting_view/meeting_view.dart';
import 'package:councilapp/Views/profile_view.dart';
import 'package:councilapp/Views/Search_Views/search_view_no_data.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'navigator_bottom_bar_state.dart';

class NavigatorBottomBarCubit extends Cubit<NavigatorBottomBarState> {
  NavigatorBottomBarCubit() : super(NavigatorBottomBarHome());

  navigator(value) {
    const List<StatefulWidget> screen = [
      HomeView(),
      MeetingView(),
      SearchView(),
      ProfileView()
    ];
    MaterialPageRoute(
      builder: (context) => screen[value],
    );
  }
}
