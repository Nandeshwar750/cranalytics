import 'package:cranalytics/constants/controllers.dart';
import 'package:cranalytics/routing/router.dart';
import 'package:cranalytics/routing/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Navigator localNavigator() => Navigator(
      key: navigationController.navigatorKey,
      initialRoute: overViewPageRoute,
      onGenerateRoute: generateRoute
);