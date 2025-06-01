//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'news_item.g.dart';

/// NewsItem
///
/// Properties:
/// * [newsId]
/// * [time]
/// * [formattedDate]
/// * [title]
/// * [summary]
/// * [categoryId]
/// * [summaryImageLink]
/// * [link]
/// * [largeMediaType]
/// * [sticky]
@BuiltValue()
abstract class NewsItem implements Built<NewsItem, NewsItemBuilder> {
  @BuiltValueField(wireName: r'newsId')
  int? get newsId;

  @BuiltValueField(wireName: r'time')
  String? get time;

  @BuiltValueField(wireName: r'formattedDate')
  String? get formattedDate;

  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'summary')
  String? get summary;

  @BuiltValueField(wireName: r'categoryId')
  int? get categoryId;

  @BuiltValueField(wireName: r'summaryImageLink')
  String? get summaryImageLink;

  @BuiltValueField(wireName: r'link')
  String? get link;

  @BuiltValueField(wireName: r'largeMediaType')
  int? get largeMediaType;

  @BuiltValueField(wireName: r'sticky')
  bool? get sticky;

  NewsItem._();

  factory NewsItem([void updates(NewsItemBuilder b)]) = _$NewsItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NewsItemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NewsItem> get serializer => _$NewsItemSerializer();
}

class _$NewsItemSerializer implements PrimitiveSerializer<NewsItem> {
  @override
  final Iterable<Type> types = const [NewsItem, _$NewsItem];

  @override
  final String wireName = r'NewsItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NewsItem object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.newsId != null) {
      yield r'newsId';
      yield serializers.serialize(
        object.newsId,
        specifiedType: const FullType(int),
      );
    }
    if (object.time != null) {
      yield r'time';
      yield serializers.serialize(
        object.time,
        specifiedType: const FullType(String),
      );
    }
    if (object.formattedDate != null) {
      yield r'formattedDate';
      yield serializers.serialize(
        object.formattedDate,
        specifiedType: const FullType(String),
      );
    }
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType(String),
      );
    }
    if (object.summary != null) {
      yield r'summary';
      yield serializers.serialize(
        object.summary,
        specifiedType: const FullType(String),
      );
    }
    if (object.categoryId != null) {
      yield r'categoryId';
      yield serializers.serialize(
        object.categoryId,
        specifiedType: const FullType(int),
      );
    }
    if (object.summaryImageLink != null) {
      yield r'summaryImageLink';
      yield serializers.serialize(
        object.summaryImageLink,
        specifiedType: const FullType(String),
      );
    }
    if (object.link != null) {
      yield r'link';
      yield serializers.serialize(
        object.link,
        specifiedType: const FullType(String),
      );
    }
    if (object.largeMediaType != null) {
      yield r'largeMediaType';
      yield serializers.serialize(
        object.largeMediaType,
        specifiedType: const FullType(int),
      );
    }
    if (object.sticky != null) {
      yield r'sticky';
      yield serializers.serialize(
        object.sticky,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    NewsItem object, {
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
    required NewsItemBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'newsId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.newsId = valueDes;
          break;
        case r'time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.time = valueDes;
          break;
        case r'formattedDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.formattedDate = valueDes;
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.title = valueDes;
          break;
        case r'summary':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.summary = valueDes;
          break;
        case r'categoryId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.categoryId = valueDes;
          break;
        case r'summaryImageLink':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.summaryImageLink = valueDes;
          break;
        case r'link':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.link = valueDes;
          break;
        case r'largeMediaType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.largeMediaType = valueDes;
          break;
        case r'sticky':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.sticky = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NewsItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NewsItemBuilder();
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
