import 'package:flutter/material.dart';
import 'package:my_flickr/blocs/search_bloc.dart';
import 'package:my_flickr/blocs/search_bloc_provider.dart';
import 'package:my_flickr/model/flickr_api_response.dart';

class SearchResults extends StatelessWidget {
  final List<FlickrPhoto> _imageList;

  SearchResults(this._imageList);

  @override
  Widget build(BuildContext context) {
    SearchBloc bloc = SearchBlocProvider.of(context);
    return ListView.builder(
        itemCount: _imageList.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            color: Colors.white70,
            child: ListTile(
              leading: Container(
                width: 50.0,
                height: 50.0,
                child: Center(
                  child: Hero(
                    tag: _imageList[index].id,
                    child: FadeInImage.assetNetwork(
                      placeholder: "res/loading.gif",
                      image: _imageList[index].url ??
                          "https://loading.io/spinners/double-ring/lg.double-ring-spinner.gif",
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
              ),
              title: Text(_imageList[index].title),
              onTap: () {
                bloc.setDetailImage(_imageList[index]);
                Navigator.of(context).pushNamed("details");
              },
            ),
          );
        });
  }
}
