import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'explore_page_view_model.g.dart';

class ExplorePageViewModel = _ExplorePageViewModelBase
    with _$ExplorePageViewModel;

abstract class _ExplorePageViewModelBase with Store {
  final searchController = TextEditingController();
}
