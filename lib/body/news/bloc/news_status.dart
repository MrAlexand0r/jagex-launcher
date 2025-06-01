import 'package:openapi/openapi.dart';

class NewsState {
  final OsrsStatus? osrsStatus;
  final String? error;

  NewsState({this.osrsStatus, this.error});

  NewsState copyWith({OsrsStatus? osrsStatus, String? error}) {
    return NewsState(
      osrsStatus: osrsStatus ?? this.osrsStatus,
      error: error ?? this.error,
    );
  }

  static NewsState initial() {
    return NewsState();
  }
}
