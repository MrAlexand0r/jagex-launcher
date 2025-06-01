import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:launcher/config/backend_urls.dart';
import 'package:openapi/openapi.dart';

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

  final api =
      Openapi(basePathOverride: BackendUrls.Publishing).getPublishingApi();

  Future<void> refresh() async {
    Response<OsrsStatus> status;
    try {
      status = await api.getOsrsStatus();
    } catch (e) {
      return emit(state.copyWith(error: "Publishing Server not reachable"));
    }
    if (status.data != null) {
      print(status.data);
      emit(state.copyWith(osrsStatus: status.data, error: null));
    }
  }
}
