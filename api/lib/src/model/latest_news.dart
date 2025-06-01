//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:jagexLauncherAPI/src/model/news_item.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'latest_news.g.dart';

/// LatestNews
///
/// Properties:
/// * [categoryId]
/// * [newsItems]
@BuiltValue()
abstract class LatestNews implements Built<LatestNews, LatestNewsBuilder> {
  @BuiltValueField(wireName: r'categoryId')
  int? get categoryId;

  @BuiltValueField(wireName: r'newsItems')
  BuiltList<NewsItem>? get newsItems;

  LatestNews._();

  factory LatestNews([void updates(LatestNewsBuilder b)]) = _$LatestNews;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LatestNewsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LatestNews> get serializer => _$LatestNewsSerializer();
}

class _$LatestNewsSerializer implements PrimitiveSerializer<LatestNews> {
  @override
  final Iterable<Type> types = const [LatestNews, _$LatestNews];

  @override
  final String wireName = r'LatestNews';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LatestNews object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.categoryId != null) {
      yield r'categoryId';
      yield serializers.serialize(
        object.categoryId,
        specifiedType: const FullType(int),
      );
    }
    if (object.newsItems != null) {
      yield r'newsItems';
      yield serializers.serialize(
        object.newsItems,
        specifiedType: const FullType(BuiltList, [FullType(NewsItem)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    LatestNews object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required LatestNewsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'categoryId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.categoryId = valueDes;
          break;
        case r'newsItems':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(NewsItem)]),
          ) as BuiltList<NewsItem>;
          result.newsItems.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LatestNews deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LatestNewsBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}
