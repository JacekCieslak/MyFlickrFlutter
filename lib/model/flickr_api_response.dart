import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'flickr_api_response.g.dart';

abstract class FlickrApiResponse
    implements Built<FlickrApiResponse, FlickrApiResponseBuilder> {
  @BuiltValueField(wireName: 'photos')
  FlickrPhotoList get photoList;
  String get stat;

  FlickrApiResponse._();

  static Serializer<FlickrApiResponse> get serializer =>
      _$flickrApiResponseSerializer;

  factory FlickrApiResponse([updates(FlickrApiResponseBuilder b)]) =
      _$FlickrApiResponse;
}

abstract class FlickrPhotoList
    implements Built<FlickrPhotoList, FlickrPhotoListBuilder> {
  @BuiltValueField(wireName: 'photo')
  BuiltList<FlickrPhoto> get pictures;

  int get page;

  FlickrPhotoList._();

  static Serializer<FlickrPhotoList> get serializer =>
      _$flickrPhotoListSerializer;

  factory FlickrPhotoList([updates(FlickrPhotoListBuilder b)]) =
      _$FlickrPhotoList;
}

abstract class FlickrPhoto implements Built<FlickrPhoto, FlickrPhotoBuilder> {
  String get id;
  String get server;
  @nullable
  String get title;
  @nullable
  @BuiltValueField(wireName: 'url_m')
  String get url;

  FlickrPhoto._();

  static Serializer<FlickrPhoto> get serializer => _$flickrPhotoSerializer;

  factory FlickrPhoto([updates(FlickrPhotoBuilder b)]) = _$FlickrPhoto;
}
