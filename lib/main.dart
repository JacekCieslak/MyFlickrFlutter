import 'package:flutter/material.dart';
import 'package:my_flickr/blocs/search_bloc_provider.dart';
import 'package:my_flickr/views/page/detail_page.dart';
import 'package:my_flickr/views/page/search_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return SearchBlocProvider(
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        onGenerateRoute: routes,
      ),
    );
  }

  Route routes(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) {
          return SearchPage();
        });
        break;
      case 'details':
        return MaterialPageRoute(builder: (context) {
          return DetailPage();
        });
        break;
      default:
        return MaterialPageRoute(builder: (context) {
          return Container();
        });
        break;
    }
  }
}
