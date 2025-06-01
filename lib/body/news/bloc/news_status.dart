
import 'package:jagexLauncherAPI/jagexLauncherAPI.dart';

class NewsState {
  final OsrsStatus? osrsStatus;
  final String? osrsStatusError;

  final LatestNews? latestNews;
  final String? latestNewsError;

  NewsState({
    this.osrsStatus,
    this.osrsStatusError,
    this.latestNews,
    this.latestNewsError,
  });

  NewsState copyWith({
    OsrsStatus? osrsStatus,
    String? osrsStatusError,
    LatestNews? latestNews,
    String? latestNewsError,
  }) {
    return NewsState(
      osrsStatus: osrsStatus ?? this.osrsStatus,
      osrsStatusError: osrsStatusError ?? this.osrsStatusError,
      latestNews: latestNews ?? this.latestNews,
      latestNewsError: latestNewsError ?? this.latestNewsError,
    );
  }

  static NewsState initial() {
    return NewsState();
  }
}
