# jagexLauncherAPI.api.RunescapeApi

## Load the API package
```dart
import 'package:jagexLauncherAPI/api.dart';
```

All URIs are relative to *https://files.publishing.production.jxp.jagex.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getLatestNews**](RunescapeApi.md#getlatestnews) | **GET** /m&#x3D;news/latestNews.json | Get latest OSRS news


# **getLatestNews**
> LatestNews getLatestNews(maxItems, oldschool)

Get latest OSRS news

### Example
```dart
import 'package:jagexLauncherAPI/api.dart';

final api = JagexLauncherAPI().getRunescapeApi();
final int maxItems = 56; // int | Maximum news items to return
final bool oldschool = true; // bool | Filter for Old School content

try {
    final response = api.getLatestNews(maxItems, oldschool);
    print(response);
} catch on DioException (e) {
    print('Exception when calling RunescapeApi->getLatestNews: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **maxItems** | **int**| Maximum news items to return | [optional] [default to 6]
 **oldschool** | **bool**| Filter for Old School content | [optional] [default to true]

### Return type

[**LatestNews**](LatestNews.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

