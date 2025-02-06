import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:neon_apps_nasa_app/presentation/pages/home/home_page_imports.dart';

part 'home_page_view_model.g.dart';

class HomePageViewModel = _HomePageViewModelBase with _$HomePageViewModel;

abstract class _HomePageViewModelBase with Store {
  final PageController featuredPageController = PageController();
  final PageController bottomNavPageController = PageController();

  @observable
  int _featuredPageIndex = 0;

  @observable
  HomePageTabs _currentHomePageTab = HomePageTabs.home;

  @computed
  int get featuredPageIndex => _featuredPageIndex;

  @computed
  HomePageTabs get currentHomePageTab => _currentHomePageTab;

  @action
  void setFeaturedPageIndex(int index) {
    _featuredPageIndex = index;
  }

  void onFeaturedPageSelected(int index) {
    featuredPageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @action
  void changeHomePageTab(HomePageTabs tab) {
    _currentHomePageTab = tab;
  }

  void onTabPressed(HomePageTabs tab) {
    bottomNavPageController.animateToPage(
      tab.index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }
}
