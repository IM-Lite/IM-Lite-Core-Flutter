///
//  Generated code. Do not modify.
//  source: lite.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'lite.pbenum.dart';

export 'lite.pbenum.dart';

class PushBody extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'PushBody',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'pb'),
      createEmptyInstance: create)
    ..e<PushEvent>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'event',
        $pb.PbFieldType.OE,
        defaultOrMaker: PushEvent.receiveMsg,
        valueOf: PushEvent.valueOf,
        enumValues: PushEvent.values)
    ..a<$core.List<$core.int>>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'data',
        $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  PushBody._() : super();

  factory PushBody({
    PushEvent? event,
    $core.List<$core.int>? data,
  }) {
    final _result = create();
    if (event != null) {
      _result.event = event;
    }
    if (data != null) {
      _result.data = data;
    }
    return _result;
  }

  factory PushBody.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);

  factory PushBody.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  PushBody clone() => PushBody()..mergeFromMessage(this);

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  PushBody copyWith(void Function(PushBody) updates) =>
      super.copyWith((message) => updates(message as PushBody))
          as PushBody; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PushBody create() => PushBody._();

  PushBody createEmptyInstance() => create();

  static $pb.PbList<PushBody> createRepeated() => $pb.PbList<PushBody>();

  @$core.pragma('dart2js:noInline')
  static PushBody getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PushBody>(create);
  static PushBody? _defaultInstance;

  @$pb.TagNumber(1)
  PushEvent get event => $_getN(0);

  @$pb.TagNumber(1)
  set event(PushEvent v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasEvent() => $_has(0);

  @$pb.TagNumber(1)
  void clearEvent() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get data => $_getN(1);

  @$pb.TagNumber(2)
  set data($core.List<$core.int> v) {
    $_setBytes(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasData() => $_has(1);

  @$pb.TagNumber(2)
  void clearData() => clearField(2);
}

class ConvData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'ConvData',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'pb'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'convID',
        protoName: 'convID')
    ..a<$core.int>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'maxSeq',
        $pb.PbFieldType.OU3,
        protoName: 'maxSeq')
    ..a<$core.int>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'minSeq',
        $pb.PbFieldType.OU3,
        protoName: 'minSeq')
    ..hasRequiredFields = false;

  ConvData._() : super();

  factory ConvData({
    $core.String? convID,
    $core.int? maxSeq,
    $core.int? minSeq,
  }) {
    final _result = create();
    if (convID != null) {
      _result.convID = convID;
    }
    if (maxSeq != null) {
      _result.maxSeq = maxSeq;
    }
    if (minSeq != null) {
      _result.minSeq = minSeq;
    }
    return _result;
  }

  factory ConvData.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);

  factory ConvData.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ConvData clone() => ConvData()..mergeFromMessage(this);

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ConvData copyWith(void Function(ConvData) updates) =>
      super.copyWith((message) => updates(message as ConvData))
          as ConvData; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ConvData create() => ConvData._();

  ConvData createEmptyInstance() => create();

  static $pb.PbList<ConvData> createRepeated() => $pb.PbList<ConvData>();

  @$core.pragma('dart2js:noInline')
  static ConvData getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ConvData>(create);
  static ConvData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get convID => $_getSZ(0);

  @$pb.TagNumber(1)
  set convID($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasConvID() => $_has(0);

  @$pb.TagNumber(1)
  void clearConvID() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get maxSeq => $_getIZ(1);

  @$pb.TagNumber(2)
  set maxSeq($core.int v) {
    $_setUnsignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasMaxSeq() => $_has(1);

  @$pb.TagNumber(2)
  void clearMaxSeq() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get minSeq => $_getIZ(2);

  @$pb.TagNumber(3)
  set minSeq($core.int v) {
    $_setUnsignedInt32(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasMinSeq() => $_has(2);

  @$pb.TagNumber(3)
  void clearMinSeq() => clearField(3);
}

class ConvDataList extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'ConvDataList',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'pb'),
      createEmptyInstance: create)
    ..pc<ConvData>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'list',
        $pb.PbFieldType.PM,
        subBuilder: ConvData.create)
    ..hasRequiredFields = false;

  ConvDataList._() : super();

  factory ConvDataList({
    $core.Iterable<ConvData>? list,
  }) {
    final _result = create();
    if (list != null) {
      _result.list.addAll(list);
    }
    return _result;
  }

  factory ConvDataList.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);

  factory ConvDataList.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ConvDataList clone() => ConvDataList()..mergeFromMessage(this);

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ConvDataList copyWith(void Function(ConvDataList) updates) =>
      super.copyWith((message) => updates(message as ConvDataList))
          as ConvDataList; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ConvDataList create() => ConvDataList._();

  ConvDataList createEmptyInstance() => create();

  static $pb.PbList<ConvDataList> createRepeated() =>
      $pb.PbList<ConvDataList>();

  @$core.pragma('dart2js:noInline')
  static ConvDataList getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ConvDataList>(create);
  static ConvDataList? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<ConvData> get list => $_getList(0);
}

class PullMsg extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'PullMsg',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'pb'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'convID',
        protoName: 'convID')
    ..p<$core.int>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'seqList',
        $pb.PbFieldType.PU3,
        protoName: 'seqList')
    ..hasRequiredFields = false;

  PullMsg._() : super();

  factory PullMsg({
    $core.String? convID,
    $core.Iterable<$core.int>? seqList,
  }) {
    final _result = create();
    if (convID != null) {
      _result.convID = convID;
    }
    if (seqList != null) {
      _result.seqList.addAll(seqList);
    }
    return _result;
  }

  factory PullMsg.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);

  factory PullMsg.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  PullMsg clone() => PullMsg()..mergeFromMessage(this);

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  PullMsg copyWith(void Function(PullMsg) updates) =>
      super.copyWith((message) => updates(message as PullMsg))
          as PullMsg; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PullMsg create() => PullMsg._();

  PullMsg createEmptyInstance() => create();

  static $pb.PbList<PullMsg> createRepeated() => $pb.PbList<PullMsg>();

  @$core.pragma('dart2js:noInline')
  static PullMsg getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PullMsg>(create);
  static PullMsg? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get convID => $_getSZ(0);

  @$pb.TagNumber(1)
  set convID($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasConvID() => $_has(0);

  @$pb.TagNumber(1)
  void clearConvID() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get seqList => $_getList(1);
}

class PullMsgList extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'PullMsgList',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'pb'),
      createEmptyInstance: create)
    ..pc<PullMsg>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'list',
        $pb.PbFieldType.PM,
        subBuilder: PullMsg.create)
    ..hasRequiredFields = false;

  PullMsgList._() : super();

  factory PullMsgList({
    $core.Iterable<PullMsg>? list,
  }) {
    final _result = create();
    if (list != null) {
      _result.list.addAll(list);
    }
    return _result;
  }

  factory PullMsgList.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);

  factory PullMsgList.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  PullMsgList clone() => PullMsgList()..mergeFromMessage(this);

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  PullMsgList copyWith(void Function(PullMsgList) updates) =>
      super.copyWith((message) => updates(message as PullMsgList))
          as PullMsgList; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PullMsgList create() => PullMsgList._();

  PullMsgList createEmptyInstance() => create();

  static $pb.PbList<PullMsgList> createRepeated() => $pb.PbList<PullMsgList>();

  @$core.pragma('dart2js:noInline')
  static PullMsgList getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PullMsgList>(create);
  static PullMsgList? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<PullMsg> get list => $_getList(0);
}

class MsgData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'MsgData',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'pb'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'clientMsgID',
        protoName: 'clientMsgID')
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'serverMsgID',
        protoName: 'serverMsgID')
    ..aOS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'senderID',
        protoName: 'senderID')
    ..aOS(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'convID',
        protoName: 'convID')
    ..a<$core.int>(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'contentType',
        $pb.PbFieldType.O3,
        protoName: 'contentType')
    ..a<$core.List<$core.int>>(
        6,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'content',
        $pb.PbFieldType.OY)
    ..aInt64(
        7,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'clientTime',
        protoName: 'clientTime')
    ..aInt64(
        8,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'serverTime',
        protoName: 'serverTime')
    ..a<$core.int>(
        9,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'seq',
        $pb.PbFieldType.OU3)
    ..aOM<OfflinePush>(
        10,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'offlinePush',
        protoName: 'offlinePush',
        subBuilder: OfflinePush.create)
    ..aOM<MsgOptions>(
        11,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'msgOptions',
        protoName: 'msgOptions',
        subBuilder: MsgOptions.create)
    ..hasRequiredFields = false;

  MsgData._() : super();

  factory MsgData({
    $core.String? clientMsgID,
    $core.String? serverMsgID,
    $core.String? senderID,
    $core.String? convID,
    $core.int? contentType,
    $core.List<$core.int>? content,
    $fixnum.Int64? clientTime,
    $fixnum.Int64? serverTime,
    $core.int? seq,
    OfflinePush? offlinePush,
    MsgOptions? msgOptions,
  }) {
    final _result = create();
    if (clientMsgID != null) {
      _result.clientMsgID = clientMsgID;
    }
    if (serverMsgID != null) {
      _result.serverMsgID = serverMsgID;
    }
    if (senderID != null) {
      _result.senderID = senderID;
    }
    if (convID != null) {
      _result.convID = convID;
    }
    if (contentType != null) {
      _result.contentType = contentType;
    }
    if (content != null) {
      _result.content = content;
    }
    if (clientTime != null) {
      _result.clientTime = clientTime;
    }
    if (serverTime != null) {
      _result.serverTime = serverTime;
    }
    if (seq != null) {
      _result.seq = seq;
    }
    if (offlinePush != null) {
      _result.offlinePush = offlinePush;
    }
    if (msgOptions != null) {
      _result.msgOptions = msgOptions;
    }
    return _result;
  }

  factory MsgData.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);

  factory MsgData.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  MsgData clone() => MsgData()..mergeFromMessage(this);

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  MsgData copyWith(void Function(MsgData) updates) =>
      super.copyWith((message) => updates(message as MsgData))
          as MsgData; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgData create() => MsgData._();

  MsgData createEmptyInstance() => create();

  static $pb.PbList<MsgData> createRepeated() => $pb.PbList<MsgData>();

  @$core.pragma('dart2js:noInline')
  static MsgData getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MsgData>(create);
  static MsgData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get clientMsgID => $_getSZ(0);

  @$pb.TagNumber(1)
  set clientMsgID($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasClientMsgID() => $_has(0);

  @$pb.TagNumber(1)
  void clearClientMsgID() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get serverMsgID => $_getSZ(1);

  @$pb.TagNumber(2)
  set serverMsgID($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasServerMsgID() => $_has(1);

  @$pb.TagNumber(2)
  void clearServerMsgID() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get senderID => $_getSZ(2);

  @$pb.TagNumber(3)
  set senderID($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasSenderID() => $_has(2);

  @$pb.TagNumber(3)
  void clearSenderID() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get convID => $_getSZ(3);

  @$pb.TagNumber(4)
  set convID($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasConvID() => $_has(3);

  @$pb.TagNumber(4)
  void clearConvID() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get contentType => $_getIZ(4);

  @$pb.TagNumber(5)
  set contentType($core.int v) {
    $_setSignedInt32(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasContentType() => $_has(4);

  @$pb.TagNumber(5)
  void clearContentType() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<$core.int> get content => $_getN(5);

  @$pb.TagNumber(6)
  set content($core.List<$core.int> v) {
    $_setBytes(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasContent() => $_has(5);

  @$pb.TagNumber(6)
  void clearContent() => clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get clientTime => $_getI64(6);

  @$pb.TagNumber(7)
  set clientTime($fixnum.Int64 v) {
    $_setInt64(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasClientTime() => $_has(6);

  @$pb.TagNumber(7)
  void clearClientTime() => clearField(7);

  @$pb.TagNumber(8)
  $fixnum.Int64 get serverTime => $_getI64(7);

  @$pb.TagNumber(8)
  set serverTime($fixnum.Int64 v) {
    $_setInt64(7, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasServerTime() => $_has(7);

  @$pb.TagNumber(8)
  void clearServerTime() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get seq => $_getIZ(8);

  @$pb.TagNumber(9)
  set seq($core.int v) {
    $_setUnsignedInt32(8, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasSeq() => $_has(8);

  @$pb.TagNumber(9)
  void clearSeq() => clearField(9);

  @$pb.TagNumber(10)
  OfflinePush get offlinePush => $_getN(9);

  @$pb.TagNumber(10)
  set offlinePush(OfflinePush v) {
    setField(10, v);
  }

  @$pb.TagNumber(10)
  $core.bool hasOfflinePush() => $_has(9);

  @$pb.TagNumber(10)
  void clearOfflinePush() => clearField(10);

  @$pb.TagNumber(10)
  OfflinePush ensureOfflinePush() => $_ensure(9);

  @$pb.TagNumber(11)
  MsgOptions get msgOptions => $_getN(10);

  @$pb.TagNumber(11)
  set msgOptions(MsgOptions v) {
    setField(11, v);
  }

  @$pb.TagNumber(11)
  $core.bool hasMsgOptions() => $_has(10);

  @$pb.TagNumber(11)
  void clearMsgOptions() => clearField(11);

  @$pb.TagNumber(11)
  MsgOptions ensureMsgOptions() => $_ensure(10);
}

class MsgDataList extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'MsgDataList',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'pb'),
      createEmptyInstance: create)
    ..pc<MsgData>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'list',
        $pb.PbFieldType.PM,
        subBuilder: MsgData.create)
    ..hasRequiredFields = false;

  MsgDataList._() : super();

  factory MsgDataList({
    $core.Iterable<MsgData>? list,
  }) {
    final _result = create();
    if (list != null) {
      _result.list.addAll(list);
    }
    return _result;
  }

  factory MsgDataList.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);

  factory MsgDataList.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  MsgDataList clone() => MsgDataList()..mergeFromMessage(this);

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  MsgDataList copyWith(void Function(MsgDataList) updates) =>
      super.copyWith((message) => updates(message as MsgDataList))
          as MsgDataList; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgDataList create() => MsgDataList._();

  MsgDataList createEmptyInstance() => create();

  static $pb.PbList<MsgDataList> createRepeated() => $pb.PbList<MsgDataList>();

  @$core.pragma('dart2js:noInline')
  static MsgDataList getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MsgDataList>(create);
  static MsgDataList? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<MsgData> get list => $_getList(0);
}

class OfflinePush extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'OfflinePush',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'pb'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'title')
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'desc')
    ..aOS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'ex')
    ..aOS(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'iOSPushSound',
        protoName: 'iOSPushSound')
    ..aOB(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'iOSBadgeCount',
        protoName: 'iOSBadgeCount')
    ..pPS(
        6,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'userIDs',
        protoName: 'userIDs')
    ..hasRequiredFields = false;

  OfflinePush._() : super();

  factory OfflinePush({
    $core.String? title,
    $core.String? desc,
    $core.String? ex,
    $core.String? iOSPushSound,
    $core.bool? iOSBadgeCount,
    $core.Iterable<$core.String>? userIDs,
  }) {
    final _result = create();
    if (title != null) {
      _result.title = title;
    }
    if (desc != null) {
      _result.desc = desc;
    }
    if (ex != null) {
      _result.ex = ex;
    }
    if (iOSPushSound != null) {
      _result.iOSPushSound = iOSPushSound;
    }
    if (iOSBadgeCount != null) {
      _result.iOSBadgeCount = iOSBadgeCount;
    }
    if (userIDs != null) {
      _result.userIDs.addAll(userIDs);
    }
    return _result;
  }

  factory OfflinePush.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);

  factory OfflinePush.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  OfflinePush clone() => OfflinePush()..mergeFromMessage(this);

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  OfflinePush copyWith(void Function(OfflinePush) updates) =>
      super.copyWith((message) => updates(message as OfflinePush))
          as OfflinePush; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static OfflinePush create() => OfflinePush._();

  OfflinePush createEmptyInstance() => create();

  static $pb.PbList<OfflinePush> createRepeated() => $pb.PbList<OfflinePush>();

  @$core.pragma('dart2js:noInline')
  static OfflinePush getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<OfflinePush>(create);
  static OfflinePush? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get title => $_getSZ(0);

  @$pb.TagNumber(1)
  set title($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasTitle() => $_has(0);

  @$pb.TagNumber(1)
  void clearTitle() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get desc => $_getSZ(1);

  @$pb.TagNumber(2)
  set desc($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasDesc() => $_has(1);

  @$pb.TagNumber(2)
  void clearDesc() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get ex => $_getSZ(2);

  @$pb.TagNumber(3)
  set ex($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasEx() => $_has(2);

  @$pb.TagNumber(3)
  void clearEx() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get iOSPushSound => $_getSZ(3);

  @$pb.TagNumber(4)
  set iOSPushSound($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasIOSPushSound() => $_has(3);

  @$pb.TagNumber(4)
  void clearIOSPushSound() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get iOSBadgeCount => $_getBF(4);

  @$pb.TagNumber(5)
  set iOSBadgeCount($core.bool v) {
    $_setBool(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasIOSBadgeCount() => $_has(4);

  @$pb.TagNumber(5)
  void clearIOSBadgeCount() => clearField(5);

  @$pb.TagNumber(6)
  $core.List<$core.String> get userIDs => $_getList(5);
}

class MsgOptions extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'MsgOptions',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'pb'),
      createEmptyInstance: create)
    ..aOB(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'storage')
    ..aOB(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'unread')
    ..hasRequiredFields = false;

  MsgOptions._() : super();

  factory MsgOptions({
    $core.bool? storage,
    $core.bool? unread,
  }) {
    final _result = create();
    if (storage != null) {
      _result.storage = storage;
    }
    if (unread != null) {
      _result.unread = unread;
    }
    return _result;
  }

  factory MsgOptions.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);

  factory MsgOptions.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  MsgOptions clone() => MsgOptions()..mergeFromMessage(this);

  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  MsgOptions copyWith(void Function(MsgOptions) updates) =>
      super.copyWith((message) => updates(message as MsgOptions))
          as MsgOptions; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MsgOptions create() => MsgOptions._();

  MsgOptions createEmptyInstance() => create();

  static $pb.PbList<MsgOptions> createRepeated() => $pb.PbList<MsgOptions>();

  @$core.pragma('dart2js:noInline')
  static MsgOptions getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MsgOptions>(create);
  static MsgOptions? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get storage => $_getBF(0);

  @$pb.TagNumber(1)
  set storage($core.bool v) {
    $_setBool(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasStorage() => $_has(0);

  @$pb.TagNumber(1)
  void clearStorage() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get unread => $_getBF(1);

  @$pb.TagNumber(2)
  set unread($core.bool v) {
    $_setBool(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasUnread() => $_has(1);

  @$pb.TagNumber(2)
  void clearUnread() => clearField(2);
}
