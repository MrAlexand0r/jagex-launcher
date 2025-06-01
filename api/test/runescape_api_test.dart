import 'package:test/test.dart';
import 'package:jagexLauncherAPI/jagexLauncherAPI.dart';

/// tests for RunescapeApi
void main() {
  final instance = JagexLauncherAPI().getRunescapeApi();

  group(RunescapeApi, () {
    // Get latest OSRS news
    //
    //Future<LatestNews> getLatestNews({ int maxItems, bool oldschool }) async
    test('test getLatestNews', () async {
      // TODO
    });
  });
}
