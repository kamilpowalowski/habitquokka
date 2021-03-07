import 'package:habitquokka/pages/home/connector.dart';
import 'package:habitquokka/pages/home/view_model.dart';
import 'package:habitquokka/redux/redux.dart';

class Factory extends VmFactory<AppState, HomePageConnector> {
  Factory(HomePageConnector widget) : super(widget);

  @override
  ViewModel fromStore() => ViewModel();
}
