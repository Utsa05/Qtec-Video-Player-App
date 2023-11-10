import 'package:flutter/material.dart';
import 'package:qtec_video_player_app/data/core/api-constants.dart';

class AppUtil {
  const AppUtil._();

  //?API url
  static String getTrending({int no = 1}) =>
      "${APIConstant.baseUrl}/trending-video/$no?format=api&page=1";

  //?Route
  static MaterialPageRoute chnagePage(Widget page) =>
      MaterialPageRoute(builder: (builder) => page);
}
