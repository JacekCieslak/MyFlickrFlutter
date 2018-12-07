// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flickr_api_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line
// ignore_for_file: annotate_overrides
// ignore_for_file: avoid_annotating_with_dynamic
// ignore_for_file: avoid_catches_without_on_clauses
// ignore_for_file: avoid_returning_this
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: omit_local_variable_types
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: sort_constructors_first
// ignore_for_file: unnecessary_const
// ignore_for_file: unnecessary_new
// ignore_for_file: test_types_in_equals

Serializer<FlickrApiResponse> _$flickrApiResponseSerializer =
    new _$FlickrApiResponseSerializer();
Serializer<FlickrPhotoList> _$flickrPhotoListSerializer =
    new _$FlickrPhotoListSerializer();
Serializer<FlickrPhoto> _$flickrPhotoSerializer = new _$FlickrPhotoSerializer();

class _$FlickrApiResponseSerializer
    implements StructuredSerializer<FlickrApiResponse> {
  @override
  final Iterable<Type> types = const [FlickrApiResponse, _$FlickrApiResponse];
  @override
  final String wireName = 'FlickrApiResponse';

  @override
  Iterable serialize(Serializers serializers, FlickrApiResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'photos',
      serializers.serialize(object.photoList,
          specifiedType: const FullType(FlickrPhotoList)),
      'stat',
      serializers.serialize(object.stat, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  FlickrApiResponse deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FlickrApiResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'photos':
          result.photoList.replace(serializers.deserialize(value,
                  specifiedType: const FullType(FlickrPhotoList))
              as FlickrPhotoList);
          break;
        case 'stat':
          result.stat = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$FlickrPhotoListSerializer
    implements StructuredSerializer<FlickrPhotoList> {
  @override
  final Iterable<Type> types = const [FlickrPhotoList, _$FlickrPhotoList];
  @override
  final String wireName = 'FlickrPhotoList';

  @override
  Iterable serialize(Serializers serializers, FlickrPhotoList object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'photo',
      serializers.serialize(object.pictures,
          specifiedType:
              const FullType(BuiltList, const [const FullType(FlickrPhoto)])),
      'page',
      serializers.serialize(object.page, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  FlickrPhotoList deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FlickrPhotoListBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'photo':
          result.pictures.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(FlickrPhoto)]))
              as BuiltList);
          break;
        case 'page':
          result.page = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$FlickrPhotoSerializer implements StructuredSerializer<FlickrPhoto> {
  @override
  final Iterable<Type> types = const [FlickrPhoto, _$FlickrPhoto];
  @override
  final String wireName = 'FlickrPhoto';

  @override
  Iterable serialize(Serializers serializers, FlickrPhoto object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'server',
      serializers.serialize(object.server,
          specifiedType: const FullType(String)),
    ];
    if (object.title != null) {
      result
        ..add('title')
        ..add(serializers.serialize(object.title,
            specifiedType: const FullType(String)));
    }
    if (object.url != null) {
      result
        ..add('url_m')
        ..add(serializers.serialize(object.url,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  FlickrPhoto deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FlickrPhotoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'server':
          result.server = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'url_m':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$FlickrApiResponse extends FlickrApiResponse {
  @override
  final FlickrPhotoList photoList;
  @override
  final String stat;

  factory _$FlickrApiResponse([void updates(FlickrApiResponseBuilder b)]) =>
      (new FlickrApiResponseBuilder()..update(updates)).build();

  _$FlickrApiResponse._({this.photoList, this.stat}) : super._() {
    if (photoList == null) {
      throw new BuiltValueNullFieldError('FlickrApiResponse', 'photoList');
    }
    if (stat == null) {
      throw new BuiltValueNullFieldError('FlickrApiResponse', 'stat');
    }
  }

  @override
  FlickrApiResponse rebuild(void updates(FlickrApiResponseBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  FlickrApiResponseBuilder toBuilder() =>
      new FlickrApiResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FlickrApiResponse &&
        photoList == other.photoList &&
        stat == other.stat;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, photoList.hashCode), stat.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FlickrApiResponse')
          ..add('photoList', photoList)
          ..add('stat', stat))
        .toString();
  }
}

class FlickrApiResponseBuilder
    implements Builder<FlickrApiResponse, FlickrApiResponseBuilder> {
  _$FlickrApiResponse _$v;

  FlickrPhotoListBuilder _photoList;
  FlickrPhotoListBuilder get photoList =>
      _$this._photoList ??= new FlickrPhotoListBuilder();
  set photoList(FlickrPhotoListBuilder photoList) =>
      _$this._photoList = photoList;

  String _stat;
  String get stat => _$this._stat;
  set stat(String stat) => _$this._stat = stat;

  FlickrApiResponseBuilder();

  FlickrApiResponseBuilder get _$this {
    if (_$v != null) {
      _photoList = _$v.photoList?.toBuilder();
      _stat = _$v.stat;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FlickrApiResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$FlickrApiResponse;
  }

  @override
  void update(void updates(FlickrApiResponseBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$FlickrApiResponse build() {
    _$FlickrApiResponse _$result;
    try {
      _$result = _$v ??
          new _$FlickrApiResponse._(photoList: photoList.build(), stat: stat);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'photoList';
        photoList.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'FlickrApiResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$FlickrPhotoList extends FlickrPhotoList {
  @override
  final BuiltList<FlickrPhoto> pictures;
  @override
  final int page;

  factory _$FlickrPhotoList([void updates(FlickrPhotoListBuilder b)]) =>
      (new FlickrPhotoListBuilder()..update(updates)).build();

  _$FlickrPhotoList._({this.pictures, this.page}) : super._() {
    if (pictures == null) {
      throw new BuiltValueNullFieldError('FlickrPhotoList', 'pictures');
    }
    if (page == null) {
      throw new BuiltValueNullFieldError('FlickrPhotoList', 'page');
    }
  }

  @override
  FlickrPhotoList rebuild(void updates(FlickrPhotoListBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  FlickrPhotoListBuilder toBuilder() =>
      new FlickrPhotoListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FlickrPhotoList &&
        pictures == other.pictures &&
        page == other.page;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, pictures.hashCode), page.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FlickrPhotoList')
          ..add('pictures', pictures)
          ..add('page', page))
        .toString();
  }
}

class FlickrPhotoListBuilder
    implements Builder<FlickrPhotoList, FlickrPhotoListBuilder> {
  _$FlickrPhotoList _$v;

  ListBuilder<FlickrPhoto> _pictures;
  ListBuilder<FlickrPhoto> get pictures =>
      _$this._pictures ??= new ListBuilder<FlickrPhoto>();
  set pictures(ListBuilder<FlickrPhoto> pictures) =>
      _$this._pictures = pictures;

  int _page;
  int get page => _$this._page;
  set page(int page) => _$this._page = page;

  FlickrPhotoListBuilder();

  FlickrPhotoListBuilder get _$this {
    if (_$v != null) {
      _pictures = _$v.pictures?.toBuilder();
      _page = _$v.page;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FlickrPhotoList other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$FlickrPhotoList;
  }

  @override
  void update(void updates(FlickrPhotoListBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$FlickrPhotoList build() {
    _$FlickrPhotoList _$result;
    try {
      _$result = _$v ??
          new _$FlickrPhotoList._(pictures: pictures.build(), page: page);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'pictures';
        pictures.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'FlickrPhotoList', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$FlickrPhoto extends FlickrPhoto {
  @override
  final String id;
  @override
  final String server;
  @override
  final String title;
  @override
  final String url;

  factory _$FlickrPhoto([void updates(FlickrPhotoBuilder b)]) =>
      (new FlickrPhotoBuilder()..update(updates)).build();

  _$FlickrPhoto._({this.id, this.server, this.title, this.url}) : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('FlickrPhoto', 'id');
    }
    if (server == null) {
      throw new BuiltValueNullFieldError('FlickrPhoto', 'server');
    }
  }

  @override
  FlickrPhoto rebuild(void updates(FlickrPhotoBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  FlickrPhotoBuilder toBuilder() => new FlickrPhotoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FlickrPhoto &&
        id == other.id &&
        server == other.server &&
        title == other.title &&
        url == other.url;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, id.hashCode), server.hashCode), title.hashCode),
        url.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FlickrPhoto')
          ..add('id', id)
          ..add('server', server)
          ..add('title', title)
          ..add('url', url))
        .toString();
  }
}

class FlickrPhotoBuilder implements Builder<FlickrPhoto, FlickrPhotoBuilder> {
  _$FlickrPhoto _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _server;
  String get server => _$this._server;
  set server(String server) => _$this._server = server;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  FlickrPhotoBuilder();

  FlickrPhotoBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _server = _$v.server;
      _title = _$v.title;
      _url = _$v.url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FlickrPhoto other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$FlickrPhoto;
  }

  @override
  void update(void updates(FlickrPhotoBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$FlickrPhoto build() {
    final _$result = _$v ??
        new _$FlickrPhoto._(id: id, server: server, title: title, url: url);
    replace(_$result);
    return _$result;
  }
}
