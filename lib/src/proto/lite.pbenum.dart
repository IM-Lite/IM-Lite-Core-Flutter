///
//  Generated code. Do not modify.
//  source: lite.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class PushEvent extends $pb.ProtobufEnum {
  static const PushEvent receiveMsg = PushEvent._(
      0,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'receiveMsg');
  static const PushEvent updateConv = PushEvent._(
      1,
      const $core.bool.fromEnvironment('protobuf.omit_enum_names')
          ? ''
          : 'updateConv');

  static const $core.List<PushEvent> values = <PushEvent>[
    receiveMsg,
    updateConv,
  ];

  static final $core.Map<$core.int, PushEvent> _byValue =
      $pb.ProtobufEnum.initByValue(values);

  static PushEvent? valueOf($core.int value) => _byValue[value];

  const PushEvent._($core.int v, $core.String n) : super(v, n);
}
