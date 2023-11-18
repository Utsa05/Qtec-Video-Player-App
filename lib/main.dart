import 'dart:async';

import 'package:flutter/material.dart';

import 'di/locator.dart';
import 'presentation/video-app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  unawaited(initLocator());

  // final getTrendingVideoUsecase = getInstant<GetTrendingVideoUsecase>();

  // final Either<AppError, VideoResultModel> eitherVideoResponse =
  //     await getTrendingVideoUsecase(const VideoParm(no: 1));

  // eitherVideoResponse.fold((error) => print(error.message),
  //     (vidoeResultModel) => print(vidoeResultModel));

  runApp(const VideoApp());
}
