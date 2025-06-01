import 'dart:convert';

import 'package:built_value/serializer.dart';

class PlainJsonTransformer implements SerializerPlugin {
  @override
  Object? afterDeserialize(Object? object, FullType specifiedType) {
    return object;
  }

  @override
  Object? afterSerialize(Object? object, FullType specifiedType) {
    return object;
  }

  @override
  Object? beforeDeserialize(Object? object, FullType specifiedType) {
    if (object is String && specifiedType.root != String) return jsonDecode(object);
    return object;
  }

  @override
  Object? beforeSerialize(Object? object, FullType specifiedType) {
    if (object is String) return jsonDecode(object);
    return object;
  }
}
