import 'package:test/test.dart';
import 'package:jagexLauncherAPI/jagexLauncherAPI.dart';

/// tests for PublishingApi
void main() {
  final instance = JagexLauncherAPI().getPublishingApi();

  group(PublishingApi, () {
    // Get OSRS status flags
    //
    //Future<OsrsStatus> getOsrsStatus() async
    test('test getOsrsStatus', () async {
      // TODO
    });
  });
}
