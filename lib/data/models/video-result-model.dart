// ignore_for_file: annotate_overrides, overridden_fields

import 'dart:convert';

import 'package:qtec_video_player_app/domain/entities/video-entity.dart';

class VideoResultModel {
  final Links links;
  final int total;
  final int page;
  final int pageSize;
  final List<VideoResult> results;

  VideoResultModel({
    required this.links,
    required this.total,
    required this.page,
    required this.pageSize,
    required this.results,
  });

  factory VideoResultModel.fromRawJson(String str) =>
      VideoResultModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory VideoResultModel.fromJson(Map<String, dynamic> json) =>
      VideoResultModel(
        links: Links.fromJson(json["links"]),
        total: json["total"],
        page: json["page"],
        pageSize: json["page_size"],
        results: List<VideoResult>.from(
            json["results"].map((x) => VideoResult.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "links": links.toJson(),
        "total": total,
        "page": page,
        "page_size": pageSize,
        "results": List<dynamic>.from(results.map((x) => x.toJson())),
      };
}

class Links {
  final dynamic next;
  final dynamic previous;

  Links({
    required this.next,
    required this.previous,
  });

  factory Links.fromRawJson(String str) => Links.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Links.fromJson(Map<String, dynamic> json) => Links(
        next: json["next"],
        previous: json["previous"],
      );

  Map<String, dynamic> toJson() => {
        "next": next,
        "previous": previous,
      };
}

class VideoResult extends VideoEntity {
  final String thumbnail;
  final int id;
  final String title;
  final DateTime dateAndTime;
  final String slug;
  final DateTime createdAt;
  final String manifest;
  final int liveStatus;
  final dynamic liveManifest;
  final bool isLive;
  final String channelImage;
  final String channelName;
  final bool isVerified;
  final String channelSlug;
  final String channelSubscriber;
  final int channelId;
  final String type;
  final String viewers;
  final String duration;

  const VideoResult({
    required this.thumbnail,
    required this.id,
    required this.title,
    required this.dateAndTime,
    required this.slug,
    required this.createdAt,
    required this.manifest,
    required this.liveStatus,
    required this.liveManifest,
    required this.isLive,
    required this.channelImage,
    required this.channelName,
    required this.isVerified,
    required this.channelSlug,
    required this.channelSubscriber,
    required this.channelId,
    required this.type,
    required this.viewers,
    required this.duration,
  }) : super(
            thumbnail: thumbnail,
            id: id,
            title: title,
            dateAndTime: dateAndTime,
            slug: slug,
            createdAt: createdAt,
            manifest: manifest,
            liveStatus: liveStatus,
            liveManifest: liveManifest,
            isLive: isLive,
            channelImage: channelImage,
            channelName: channelName,
            isVerified: isVerified,
            channelSlug: channelSlug,
            channelSubscriber: channelSubscriber,
            channelId: channelId,
            type: type,
            viewers: viewers,
            duration: duration);

  factory VideoResult.fromRawJson(String str) =>
      VideoResult.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory VideoResult.fromJson(Map<String, dynamic> json) => VideoResult(
        thumbnail: json["thumbnail"],
        id: json["id"],
        title: json["title"],
        dateAndTime: DateTime.parse(json["date_and_time"]),
        slug: json["slug"],
        createdAt: DateTime.parse(json["created_at"]),
        manifest: json["manifest"],
        liveStatus: json["live_status"],
        liveManifest: json["live_manifest"],
        isLive: json["is_live"],
        channelImage: json["channel_image"],
        channelName: json["channel_name"],
        isVerified: json["is_verified"],
        channelSlug: json["channel_slug"],
        channelSubscriber: json["channel_subscriber"],
        channelId: json["channel_id"],
        type: json["type"],
        viewers: json["viewers"],
        duration: json["duration"],
      );

  Map<String, dynamic> toJson() => {
        "thumbnail": thumbnail,
        "id": id,
        "title": title,
        "date_and_time": dateAndTime.toIso8601String(),
        "slug": slug,
        "created_at": createdAt.toIso8601String(),
        "manifest": manifest,
        "live_status": liveStatus,
        "live_manifest": liveManifest,
        "is_live": isLive,
        "channel_image": channelImage,
        "channel_name": channelName,
        "is_verified": isVerified,
        "channel_slug": channelSlug,
        "channel_subscriber": channelSubscriber,
        "channel_id": channelId,
        "type": type,
        "viewers": viewers,
        "duration": duration,
      };
}
