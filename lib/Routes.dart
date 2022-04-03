import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:sponsorgenix/web/src/About.dart';
import 'package:sponsorgenix/web/src/Blog.dart';
import 'package:sponsorgenix/web/src/Contact.dart';
import 'package:sponsorgenix/web/web_landing_page.dart';

class Flurorouter {
  static final FluroRouter router = FluroRouter();

  static Handler homeHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, dynamic> params) =>
          WebLandingPage());

  static Handler aboutHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, dynamic> params) =>
          //handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          About());

  static Handler blogHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, dynamic> params) =>
          //handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          Blog());

  static Handler contactHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, dynamic> params) =>
          //handlerFunc: (BuildContext context, Map<String, dynamic> params) =>
          Contact());

  static void setupRouter() {
    router.define(
      '/',
      handler: homeHandler,
    );
    router.define(
      '/About',
      handler: aboutHandler,
      // transitionType: TransitionType.fadeIn,
    );
    router.define(
      '/Blog',
      handler: blogHandler,
      // transitionType: TransitionType.fadeIn,
    );

    router.define(
      '/Contact',
      handler: contactHandler,
      // transitionType: TransitionType.fadeIn,
    );
  }
}
