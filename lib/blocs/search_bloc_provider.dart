import 'package:flutter/material.dart';
import 'package:my_flickr/blocs/search_bloc.dart';

class SearchBlocProvider extends InheritedWidget {
  final SearchBloc bloc;

  SearchBlocProvider({Key key, Widget child, SearchBloc bloc})
      : bloc = bloc ?? SearchBloc(),
        super(key: key, child: child);

  static SearchBloc of(BuildContext context) =>
      (context.inheritFromWidgetOfExactType(SearchBlocProvider)
              as SearchBlocProvider)
          .bloc;

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => true;
}
