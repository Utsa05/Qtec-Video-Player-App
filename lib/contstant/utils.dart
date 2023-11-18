import 'package:flutter/material.dart';
import 'package:qtec_video_player_app/data/core/api-constants.dart';
import 'package:intl/intl.dart';

class AppUtil {
  const AppUtil._();

  //?API url
  static String getTrendingAPI({int no = 1}) =>
      "${APIConstant.baseUrl}/trending-video/$no?page=1";

  //?Route
  static MaterialPageRoute chnagePage(Widget page) =>
      MaterialPageRoute(builder: (builder) => page);

  //mp
  static SizedBox box(double size) => SizedBox(
        height: size,
        width: size,
      );
  static getDateTime(DateTime dateTime) => DateFormat.yMMMd().format(dateTime);
}



//  Positioned(
//                             right: 10.w,
//                             bottom: 10.w,
//                             child: Container(
//                               // padding: const EdgeInsets.all(4.0),
//                               height: 17.h,
//                               alignment: Alignment.center,
//                               width: 35.w,
//                               decoration: BoxDecoration(
//                                   color: Theme.of(context).primaryColor,
//                                   borderRadius: BorderRadius.circular(4.r)),
//                               child: Text(
//                                 video.duration,
//                                 style: const TextStyle()
//                                     .bodySmallInter
//                                     .copyWith(color: Colors.white),
//                               ),
//                             ),
//                           )