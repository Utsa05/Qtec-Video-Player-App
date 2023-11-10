import 'package:flutter/material.dart';
import 'package:qtec_video_player_app/contstant/extention.dart';
import 'package:qtec_video_player_app/contstant/string.dart';
import 'package:qtec_video_player_app/contstant/utils.dart';
import 'package:qtec_video_player_app/presentation/pages/home/home-page.dart';
import 'package:qtec_video_player_app/presentation/pages/view-video/view-video.dart';

class AppRoute {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppString.initialRoute:
        return AppUtil.chnagePage(const HomePage());
      case AppString.videoViewRoute:
        return AppUtil.chnagePage(const ViewVideoPage());
      default:
        return AppUtil.chnagePage(errorRoute());
    }
  }
}

//?Error Route
Widget errorRoute() => Scaffold(
      appBar: AppBar(
        title: Text(
          "Route Error",
          style: const TextStyle().titleLarge,
        ),
      ),
    );
