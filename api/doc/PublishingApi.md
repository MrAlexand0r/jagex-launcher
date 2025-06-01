# jagexLauncherAPI.api.PublishingApi

## Load the API package
```dart
import 'package:jagexLauncherAPI/api.dart';
```

All URIs are relative to *https://files.publishing.production.jxp.jagex.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getOsrsStatus**](PublishingApi.md#getosrsstatus) | **GET** /osrs/osrs.json | Get OSRS status flags


# **getOsrsStatus**
> OsrsStatus getOsrsStatus()

Get OSRS status flags

### Example
```dart
import 'package:jagexLauncherAPI/api.dart';

final api = JagexLauncherAPI().getPublishingApi();

try {
    final response = api.getOsrsStatus();
    print(response);
} catch on DioException (e) {
    print('Exception when calling PublishingApi->getOsrsStatus: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**OsrsStatus**](OsrsStatus.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

