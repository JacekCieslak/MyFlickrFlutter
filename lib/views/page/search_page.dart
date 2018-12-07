import 'package:flutter/material.dart';
import 'package:my_flickr/blocs/search_bloc.dart';
import 'package:my_flickr/blocs/search_bloc_provider.dart';
import 'package:my_flickr/model/flickr_api_response.dart';
import 'package:my_flickr/views/widgets/search_field.dart';
import 'package:my_flickr/views/widgets/search_results.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SearchBloc bloc = SearchBlocProvider.of(context);
    return Scaffold(
        appBar: AppBar(
          title: Text("Search Images"),
        ),
        body: Column(
          children: <Widget>[
            SearchField(),
            Expanded(
              child: StreamBuilder(
                  stream: bloc.imageList,
                  builder: (BuildContext context,
                      AsyncSnapshot<List<FlickrPhoto>> snapshot) {
                    if (snapshot.hasData) {
                      return Container(
                        child: SearchResults(snapshot.data),
                      );
                    } else if (snapshot.hasError) {
                      return Container(
                        child: Text("Error"),
                      );
                    } else {
                      return Container(
                          child: Center(
                              child: Card(
                        child: Container(
                          child: Column(
                            children: <Widget>[
                              Image.asset("res/meme.gif"),
                              Text(
                                "Search your images",
                                style: TextStyle(fontSize: 24.0),
                              )
                            ],
                          ),
                        ),
                      )));
                    }
                  }),
            ),
          ],
        ));
  }
}
