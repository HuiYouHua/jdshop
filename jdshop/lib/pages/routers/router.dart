import 'package:flutter/material.dart';
import 'package:jdshop/pages/search/Search.dart';
import '../tabs/Tabs.dart';

final routes = {
  '/': (context) => Tabs(),
  '/search': (context) => SearchPage(),
};

var onGenerateRoute = (RouteSettings settings) {
  final String? name = settings.name;
  final Function? pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) => pageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      final Route route = MaterialPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
};