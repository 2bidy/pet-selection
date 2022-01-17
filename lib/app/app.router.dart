// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import '../ui/views/home/home_view.dart';
import '../ui/views/landing_page/landing_page_view.dart';
import '../ui/views/pet_selection/pet_selection_view.dart';
import '../ui/views/user_access/user_access_view.dart';

class Routes {
  static const String landingPageView = '/';
  static const String userAccessView = '/user-access-view';
  static const String homeView = '/home-view';
  static const String petSelectionView = '/pet-selection-view';
  static const all = <String>{
    landingPageView,
    userAccessView,
    homeView,
    petSelectionView,
  };
}

class StackedRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.landingPageView, page: LandingPageView),
    RouteDef(Routes.userAccessView, page: UserAccessView),
    RouteDef(Routes.homeView, page: HomeView),
    RouteDef(Routes.petSelectionView, page: PetSelectionView),
  ];
  @override
  Map<Type, StackedRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, StackedRouteFactory>{
    LandingPageView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const LandingPageView(),
        settings: data,
      );
    },
    UserAccessView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const UserAccessView(),
        settings: data,
      );
    },
    HomeView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const HomeView(),
        settings: data,
      );
    },
    PetSelectionView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const PetSelectionView(),
        settings: data,
      );
    },
  };
}
