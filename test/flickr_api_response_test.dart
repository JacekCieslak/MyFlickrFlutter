import 'dart:convert';

import 'package:my_flickr/model/flickr_api_response.dart';
import 'package:my_flickr/model/serializers.dart';
import 'package:test_api/test_api.dart';

main() {
  String apiResponse = """
  {
    "photos":
      {
        "page":1,
        "pages":2814,
        "perpage":100,
        "total":"281332",
        "photo":[
          {
            "id":"31280984397",
            "owner":"77986521@N04",
            "secret":"856900fd81",
            "server":"4900",
            "farm":5,
            "title":"Forza Horizon 4",
            "ispublic":1,
            "isfriend":0,
            "isfamily":0,
            "url_m":"https:\/\/farm5.staticflickr.com\/4900\/31280984397_856900fd81.jpg",
            "height_m":"500",
            "width_m":"281"
          },
          {
            "id":"44402801820",
            "owner":"159655184@N06",
            "secret":"1e1a4ab7a3",
            "server":"4807",
            "farm":5,
            "title":"mercedes_b_elboin",
            "ispublic":1,
            "isfriend":0,
            "isfamily":0,
            "url_m":"https:\/\/farm5.staticflickr.com\/4807\/44402801820_1e1a4ab7a3.jpg",
            "height_m":"306",
            "width_m":"500"
          }
        ]
      },
    "stat":"ok"
  }
  """;

  test("Test Model", () {
    FlickrApiResponse response = serializers.deserializeWith(
        FlickrApiResponse.serializer, json.decode(apiResponse));
//    expect(response.photoList.page, 1); 
//    expect(response.stat, "ok");
  });
}
