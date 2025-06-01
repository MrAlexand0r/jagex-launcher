//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'osrs_status.g.dart';

/// OsrsStatus
///
/// Properties:
/// * [psaEnabled]
/// * [psaMessage]
/// * [playDisabled]
/// * [loadRemoteBanner]
/// * [loadRemoteLogo]
/// * [remoteBannerFileName]
/// * [remoteBannerLinkUrl]
/// * [remoteLogoFileName]
@BuiltValue()
abstract class OsrsStatus implements Built<OsrsStatus, OsrsStatusBuilder> {
  @BuiltValueField(wireName: r'psaEnabled')
  bool? get psaEnabled;

  @BuiltValueField(wireName: r'psaMessage')
  String? get psaMessage;

  @BuiltValueField(wireName: r'playDisabled')
  bool? get playDisabled;

  @BuiltValueField(wireName: r'loadRemoteBanner')
  bool? get loadRemoteBanner;

  @BuiltValueField(wireName: r'loadRemoteLogo')
  bool? get loadRemoteLogo;

  @BuiltValueField(wireName: r'remoteBannerFileName')
  String? get remoteBannerFileName;

  @BuiltValueField(wireName: r'remoteBannerLinkUrl')
  String? get remoteBannerLinkUrl;

  @BuiltValueField(wireName: r'remoteLogoFileName')
  String? get remoteLogoFileName;

  OsrsStatus._();

  factory OsrsStatus([void updates(OsrsStatusBuilder b)]) = _$OsrsStatus;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OsrsStatusBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OsrsStatus> get serializer => _$OsrsStatusSerializer();
}

class _$OsrsStatusSerializer implements PrimitiveSerializer<OsrsStatus> {
  @override
  final Iterable<Type> types = const [OsrsStatus, _$OsrsStatus];

  @override
  final String wireName = r'OsrsStatus';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OsrsStatus object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.psaEnabled != null) {
      yield r'psaEnabled';
      yield serializers.serialize(
        object.psaEnabled,
        specifiedType: const FullType(bool),
      );
    }
    if (object.psaMessage != null) {
      yield r'psaMessage';
      yield serializers.serialize(
        object.psaMessage,
        specifiedType: const FullType(String),
      );
    }
    if (object.playDisabled != null) {
      yield r'playDisabled';
      yield serializers.serialize(
        object.playDisabled,
        specifiedType: const FullType(bool),
      );
    }
    if (object.loadRemoteBanner != null) {
      yield r'loadRemoteBanner';
      yield serializers.serialize(
        object.loadRemoteBanner,
        specifiedType: const FullType(bool),
      );
    }
    if (object.loadRemoteLogo != null) {
      yield r'loadRemoteLogo';
      yield serializers.serialize(
        object.loadRemoteLogo,
        specifiedType: const FullType(bool),
      );
    }
    if (object.remoteBannerFileName != null) {
      yield r'remoteBannerFileName';
      yield serializers.serialize(
        object.remoteBannerFileName,
        specifiedType: const FullType(String),
      );
    }
    if (object.remoteBannerLinkUrl != null) {
      yield r'remoteBannerLinkUrl';
      yield serializers.serialize(
        object.remoteBannerLinkUrl,
        specifiedType: const FullType(String),
      );
    }
    if (object.remoteLogoFileName != null) {
      yield r'remoteLogoFileName';
      yield serializers.serialize(
        object.remoteLogoFileName,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    OsrsStatus object, {
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
    required OsrsStatusBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'psaEnabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.psaEnabled = valueDes;
          break;
        case r'psaMessage':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.psaMessage = valueDes;
          break;
        case r'playDisabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.playDisabled = valueDes;
          break;
        case r'loadRemoteBanner':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.loadRemoteBanner = valueDes;
          break;
        case r'loadRemoteLogo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.loadRemoteLogo = valueDes;
          break;
        case r'remoteBannerFileName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.remoteBannerFileName = valueDes;
          break;
        case r'remoteBannerLinkUrl':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.remoteBannerLinkUrl = valueDes;
          break;
        case r'remoteLogoFileName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.remoteLogoFileName = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OsrsStatus deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OsrsStatusBuilder();
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
