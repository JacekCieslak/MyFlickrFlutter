import 'package:flutter/material.dart';
import 'package:my_flickr/blocs/search_bloc.dart';
import 'package:my_flickr/blocs/search_bloc_provider.dart';
import 'package:my_flickr/model/flickr_api_response.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SearchBloc bloc = SearchBlocProvider.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Details"),
      ),
      body: Container(
        child: Center(
            child: Card(
          child: Container(
            child: StreamBuilder(
              stream: bloc.detailImage,
              builder:
                  (BuildContext context, AsyncSnapshot<FlickrPhoto> snapshot) {
                if (snapshot.hasData) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(snapshot.data.title),
                      Hero(
                        tag: snapshot.data.id,
                        child: FadeInImage.assetNetwork(
                          placeholder: "res/loading.gif",
                          image: snapshot.data.url ??
                              "https://loading.io/spinners/double-ring/lg.double-ring-spinner.gif",
                          fit: BoxFit.contain,
                          height: 300.0,
                          width: 300.0,
                        ),
                      )
                    ],
                  );
                } else {
                  return Text("Unable to load image");
                }
              },
            ),
          ),
        )),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.search),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
    );
  }
}
