//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_import

import 'package:one_of_serializer/any_of_serializer.dart';
import 'package:one_of_serializer/one_of_serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:jagexLauncherAPI/src/date_serializer.dart';
import 'package:jagexLauncherAPI/src/model/date.dart';

import 'package:jagexLauncherAPI/src/model/latest_news.dart';
import 'package:jagexLauncherAPI/src/model/news_item.dart';
import 'package:jagexLauncherAPI/src/model/osrs_status.dart';

part 'serializers.g.dart';

@SerializersFor([
  LatestNews,
  NewsItem,
  OsrsStatus,
])
Serializers serializers = (_$serializers.toBuilder()
      ..add(const OneOfSerializer())
      ..add(const AnyOfSerializer())
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer()))
    .build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
