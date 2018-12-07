import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:my_flickr/model/flickr_api_response.dart';
import 'package:my_flickr/model/serializers.dart';

class Repository {
  static final Repository _singletonProvider = Repository._internal();

  factory Repository() => _singletonProvider;

  http.Client httpClient;
  static const String url =
      "https://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=6bf318919bbbc455f3573d18798a58e3&safe_search=1&extras=url_m&format=json&nojsoncallback=1";

  Repository._internal() {
    httpClient = http.Client();
  }

  Future<List<FlickrPhoto>> searchImageList(String tags) async {
    print("Server call made");
    http.Response response = await httpClient.get("$url&tags=$tags");
    return _handleResponse(response);
  }

  Future<List<FlickrPhoto>> _handleResponse(http.Response response) {
    if (response.statusCode == 204 || response.body.isEmpty) {
      return Future.value([]);
    } else if (response.statusCode < 200 || response.statusCode > 400) {
      return Future.error("Request Failed");
    }
    FlickrApiResponse flickrApiResponse = serializers.deserializeWith(
        FlickrApiResponse.serializer, json.decode(response.body));
    return Future.value(flickrApiResponse.photoList.pictures.toList());
  }
}
