import 'dart:async';

import 'package:built_value/standard_json_plugin.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jagexLauncherAPI/jagexLauncherAPI.dart';
import 'package:launcher/config/backend_urls.dart';
import 'package:launcher/config/plain_text_to_json_plugin.dart' show PlainJsonTransformer;

import 'news_status.dart';

class NewsCubit extends Cubit<NewsState> {
  late Timer _timer;

  NewsCubit() : super(NewsState.initial()) {
    _timer = Timer(Duration(minutes: 1), () => refresh());
    refresh();
  }

  @override
  Future<void> close() {
    _timer.cancel();
    return super.close();
  }

  final statusApi =
      JagexLauncherAPI(basePathOverride: BackendUrls.Publishing).getPublishingApi();

  final newsApi =
  JagexLauncherAPI(basePathOverride: BackendUrls.Runescape, serializers: (serializers.toBuilder()..addPlugin(PlainJsonTransformer())..addPlugin(StandardJsonPlugin())).build()).getRunescapeApi();

  Future<void> loadStatus() async {
    Response<OsrsStatus> status;
    try {
      status = await statusApi.getOsrsStatus();
    } catch (e) {
      return emit(state.copyWith(osrsStatusError: "Publishing Server not reachable"));
    }
    if (status.data != null) {
      print(status.data);
      emit(state.copyWith(osrsStatus: status.data, osrsStatusError: null));
    }
  }

  Future<void> loadNews() async {
    Response<LatestNews> news;
    try {
      news = await newsApi.getLatestNews();
    } catch (e) {
      return emit(state.copyWith(latestNewsError: "Runescape News failed to load"));
    }
    if (news.data != null) {
      print(news.data);
      emit(state.copyWith(latestNews: news.data, latestNewsError: null));
    }
  }

  void refresh() {
    loadStatus();
    loadNews();
  }
}
