import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:sponsorgenix/web/src/About.dart';
import 'package:sponsorgenix/web/src/Blog.dart';
import 'package:sponsorgenix/web/src/Contact.dart';
import 'package:sponsorgenix/web/web_landing_page.dart';

class Flurorouter {
  static final FluroRouter router = FluroRouter();

  static Handler _homeHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, dynamic> params) =>
          WebLandingPage());

  static Handler _aboutHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, dynamic> params) =>
          //handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          About());

  static Handler _blogHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, dynamic> params) =>
          //handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          Blog());

  static Handler _contactHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, dynamic> params) =>
          //handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          Contact());

  static void setupRouter() {
    router.define(
      '/',
      handler: _homeHandler,
    );
    router.define(
      '/About',
      handler: _aboutHandler,
      // transitionType: TransitionType.fadeIn,
    );
    router.define(
      '/Blog',
      handler: _blogHandler,
      // transitionType: TransitionType.fadeIn,
    );

    router.define(
      '/Contact',
      handler: _contactHandler,
      // transitionType: TransitionType.fadeIn,
    );
  }
}
