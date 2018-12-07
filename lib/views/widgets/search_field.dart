import 'package:flutter/material.dart';
import 'package:my_flickr/blocs/search_bloc.dart';
import 'package:my_flickr/blocs/search_bloc_provider.dart';

class SearchField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SearchBloc bloc = SearchBlocProvider.of(context);
    return TextField(
      decoration: InputDecoration(
        hintText: "Search Images",
        icon: Icon(
          Icons.search,
        ),
      ),
      textInputAction: TextInputAction.search,
      onChanged: bloc.setSearchString,
      onEditingComplete: bloc.performSearch(true),
    );
  }
}
