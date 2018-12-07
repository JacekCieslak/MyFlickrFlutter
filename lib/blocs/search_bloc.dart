import 'package:my_flickr/api/repository.dart';
import 'package:my_flickr/model/flickr_api_response.dart';
import 'package:rxdart/rxdart.dart';

class SearchBloc {
  final Repository _repository;

  final _searchString = BehaviorSubject<String>(seedValue: "");

  final _imageList = BehaviorSubject<List<FlickrPhoto>>();
  final _performSearch = BehaviorSubject<bool>(seedValue: false);
  final _detailImage = BehaviorSubject<FlickrPhoto>();

  Function(String) get setSearchString => _searchString.sink.add;
  Function(bool) get performSearch => _performSearch.sink.add;
  Function(FlickrPhoto) get setDetailImage => _detailImage.sink.add;

  Observable<List<FlickrPhoto>> get imageList => _imageList.stream;
  Observable<FlickrPhoto> get detailImage => _detailImage.stream;

  SearchBloc({Repository repository})
      : _repository = repository ?? Repository() {
    _performSearch.listen((bool performSearch) async {
      if (performSearch) {
        if (_searchString.value.length > 0) {
          try {
            List<FlickrPhoto> photos =
                await _repository.searchImageList(_searchString.value);
            _imageList.sink.add(photos);
          } catch (e) {
            print("Error: $e");
            _imageList.sink.addError("Failed to get results");
          }
        }
      }
    });
  }

  void dispose() {
    _searchString.close();
    _imageList.close();
    _performSearch.close();
    _detailImage.close();
  }
}
