part of 'navigator_bottom_bar_cubit.dart';

@immutable
sealed class NavigatorBottomBarState {}

final class NavigatorBottomBarHome extends NavigatorBottomBarState {}
final class NavigatorBottomBarMeeting extends NavigatorBottomBarState {}
final class NavigatorBottomBarSearch extends NavigatorBottomBarState {}
final class NavigatorBottomBarProfile extends NavigatorBottomBarState {}

