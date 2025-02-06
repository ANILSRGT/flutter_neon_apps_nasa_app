import 'package:mobx/mobx.dart';
part 'mars_page_view_model.g.dart';

class MarsPageViewModel = _MarsPageViewModelBase with _$MarsPageViewModel;

abstract class _MarsPageViewModelBase with Store {
  @observable
  int _selectedSolIndex = 0;

  @computed
  int get selectedSolIndex => _selectedSolIndex;

  @action
  void setSelectedSolIndex(int value) {
    _selectedSolIndex = value;
  }
}
