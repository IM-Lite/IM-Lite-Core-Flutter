///
//  Generated code. Do not modify.
//  source: lite.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use pushEventDescriptor instead')
const PushEvent$json = const {
  '1': 'PushEvent',
  '2': const [
    const {'1': 'receiveMsg', '2': 0},
    const {'1': 'updateConv', '2': 1},
  ],
};

/// Descriptor for `PushEvent`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List pushEventDescriptor = $convert.base64Decode(
    'CglQdXNoRXZlbnQSDgoKcmVjZWl2ZU1zZxAAEg4KCnVwZGF0ZUNvbnYQAQ==');
@$core.Deprecated('Use pushBodyDescriptor instead')
const PushBody$json = const {
  '1': 'PushBody',
  '2': const [
    const {
      '1': 'event',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.pb.PushEvent',
      '10': 'event'
    },
    const {'1': 'data', '3': 2, '4': 1, '5': 12, '10': 'data'},
  ],
};

/// Descriptor for `PushBody`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pushBodyDescriptor = $convert.base64Decode(
    'CghQdXNoQm9keRIjCgVldmVudBgBIAEoDjINLnBiLlB1c2hFdmVudFIFZXZlbnQSEgoEZGF0YRgCIAEoDFIEZGF0YQ==');
@$core.Deprecated('Use convDataDescriptor instead')
const ConvData$json = const {
  '1': 'ConvData',
  '2': const [
    const {'1': 'convID', '3': 1, '4': 1, '5': 9, '10': 'convID'},
    const {'1': 'maxSeq', '3': 2, '4': 1, '5': 13, '10': 'maxSeq'},
    const {'1': 'minSeq', '3': 3, '4': 1, '5': 13, '10': 'minSeq'},
    const {'1': 'isPinned', '3': 4, '4': 1, '5': 8, '10': 'isPinned'},
  ],
};

/// Descriptor for `ConvData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List convDataDescriptor = $convert.base64Decode(
    'CghDb252RGF0YRIWCgZjb252SUQYASABKAlSBmNvbnZJRBIWCgZtYXhTZXEYAiABKA1SBm1heFNlcRIWCgZtaW5TZXEYAyABKA1SBm1pblNlcRIaCghpc1Bpbm5lZBgEIAEoCFIIaXNQaW5uZWQ=');
@$core.Deprecated('Use convDataListDescriptor instead')
const ConvDataList$json = const {
  '1': 'ConvDataList',
  '2': const [
    const {
      '1': 'list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.pb.ConvData',
      '10': 'list'
    },
  ],
};

/// Descriptor for `ConvDataList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List convDataListDescriptor = $convert.base64Decode(
    'CgxDb252RGF0YUxpc3QSIAoEbGlzdBgBIAMoCzIMLnBiLkNvbnZEYXRhUgRsaXN0');
@$core.Deprecated('Use pullMsgDescriptor instead')
const PullMsg$json = const {
  '1': 'PullMsg',
  '2': const [
    const {'1': 'convID', '3': 1, '4': 1, '5': 9, '10': 'convID'},
    const {'1': 'seqList', '3': 2, '4': 3, '5': 13, '10': 'seqList'},
  ],
};

/// Descriptor for `PullMsg`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pullMsgDescriptor = $convert.base64Decode(
    'CgdQdWxsTXNnEhYKBmNvbnZJRBgBIAEoCVIGY29udklEEhgKB3NlcUxpc3QYAiADKA1SB3NlcUxpc3Q=');
@$core.Deprecated('Use pullMsgListDescriptor instead')
const PullMsgList$json = const {
  '1': 'PullMsgList',
  '2': const [
    const {
      '1': 'list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.pb.PullMsg',
      '10': 'list'
    },
  ],
};

/// Descriptor for `PullMsgList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pullMsgListDescriptor = $convert.base64Decode(
    'CgtQdWxsTXNnTGlzdBIfCgRsaXN0GAEgAygLMgsucGIuUHVsbE1zZ1IEbGlzdA==');
@$core.Deprecated('Use msgDataDescriptor instead')
const MsgData$json = const {
  '1': 'MsgData',
  '2': const [
    const {'1': 'clientMsgID', '3': 1, '4': 1, '5': 9, '10': 'clientMsgID'},
    const {'1': 'serverMsgID', '3': 2, '4': 1, '5': 9, '10': 'serverMsgID'},
    const {'1': 'senderID', '3': 3, '4': 1, '5': 9, '10': 'senderID'},
    const {'1': 'convID', '3': 4, '4': 1, '5': 9, '10': 'convID'},
    const {'1': 'contentType', '3': 5, '4': 1, '5': 5, '10': 'contentType'},
    const {'1': 'content', '3': 6, '4': 1, '5': 12, '10': 'content'},
    const {'1': 'clientTime', '3': 7, '4': 1, '5': 3, '10': 'clientTime'},
    const {'1': 'serverTime', '3': 8, '4': 1, '5': 3, '10': 'serverTime'},
    const {'1': 'seq', '3': 9, '4': 1, '5': 13, '10': 'seq'},
    const {
      '1': 'offlinePush',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.pb.OfflinePush',
      '10': 'offlinePush'
    },
    const {
      '1': 'msgOptions',
      '3': 11,
      '4': 1,
      '5': 11,
      '6': '.pb.MsgOptions',
      '10': 'msgOptions'
    },
  ],
};

/// Descriptor for `MsgData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgDataDescriptor = $convert.base64Decode(
    'CgdNc2dEYXRhEiAKC2NsaWVudE1zZ0lEGAEgASgJUgtjbGllbnRNc2dJRBIgCgtzZXJ2ZXJNc2dJRBgCIAEoCVILc2VydmVyTXNnSUQSGgoIc2VuZGVySUQYAyABKAlSCHNlbmRlcklEEhYKBmNvbnZJRBgEIAEoCVIGY29udklEEiAKC2NvbnRlbnRUeXBlGAUgASgFUgtjb250ZW50VHlwZRIYCgdjb250ZW50GAYgASgMUgdjb250ZW50Eh4KCmNsaWVudFRpbWUYByABKANSCmNsaWVudFRpbWUSHgoKc2VydmVyVGltZRgIIAEoA1IKc2VydmVyVGltZRIQCgNzZXEYCSABKA1SA3NlcRIxCgtvZmZsaW5lUHVzaBgKIAEoCzIPLnBiLk9mZmxpbmVQdXNoUgtvZmZsaW5lUHVzaBIuCgptc2dPcHRpb25zGAsgASgLMg4ucGIuTXNnT3B0aW9uc1IKbXNnT3B0aW9ucw==');
@$core.Deprecated('Use msgDataListDescriptor instead')
const MsgDataList$json = const {
  '1': 'MsgDataList',
  '2': const [
    const {
      '1': 'list',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.pb.MsgData',
      '10': 'list'
    },
  ],
};

/// Descriptor for `MsgDataList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgDataListDescriptor = $convert.base64Decode(
    'CgtNc2dEYXRhTGlzdBIfCgRsaXN0GAEgAygLMgsucGIuTXNnRGF0YVIEbGlzdA==');
@$core.Deprecated('Use offlinePushDescriptor instead')
const OfflinePush$json = const {
  '1': 'OfflinePush',
  '2': const [
    const {'1': 'title', '3': 1, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'desc', '3': 2, '4': 1, '5': 9, '10': 'desc'},
    const {'1': 'ex', '3': 3, '4': 1, '5': 9, '10': 'ex'},
    const {'1': 'iOSPushSound', '3': 4, '4': 1, '5': 9, '10': 'iOSPushSound'},
    const {'1': 'iOSBadgeCount', '3': 5, '4': 1, '5': 8, '10': 'iOSBadgeCount'},
    const {'1': 'userIDs', '3': 6, '4': 3, '5': 9, '10': 'userIDs'},
  ],
};

/// Descriptor for `OfflinePush`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List offlinePushDescriptor = $convert.base64Decode(
    'CgtPZmZsaW5lUHVzaBIUCgV0aXRsZRgBIAEoCVIFdGl0bGUSEgoEZGVzYxgCIAEoCVIEZGVzYxIOCgJleBgDIAEoCVICZXgSIgoMaU9TUHVzaFNvdW5kGAQgASgJUgxpT1NQdXNoU291bmQSJAoNaU9TQmFkZ2VDb3VudBgFIAEoCFINaU9TQmFkZ2VDb3VudBIYCgd1c2VySURzGAYgAygJUgd1c2VySURz');
@$core.Deprecated('Use msgOptionsDescriptor instead')
const MsgOptions$json = const {
  '1': 'MsgOptions',
  '2': const [
    const {'1': 'storage', '3': 1, '4': 1, '5': 8, '10': 'storage'},
    const {'1': 'unread', '3': 2, '4': 1, '5': 8, '10': 'unread'},
    const {'1': 'updateConv', '3': 3, '4': 1, '5': 8, '10': 'updateConv'},
  ],
};

/// Descriptor for `MsgOptions`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List msgOptionsDescriptor = $convert.base64Decode(
    'CgpNc2dPcHRpb25zEhgKB3N0b3JhZ2UYASABKAhSB3N0b3JhZ2USFgoGdW5yZWFkGAIgASgIUgZ1bnJlYWQSHgoKdXBkYXRlQ29udhgDIAEoCFIKdXBkYXRlQ29udg==');
