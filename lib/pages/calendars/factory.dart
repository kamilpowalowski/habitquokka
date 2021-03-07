import 'package:habitquokka/pages/calendars/connector.dart';
import 'package:habitquokka/pages/calendars/view_model.dart';
import 'package:habitquokka/redux/redux.dart';

class Factory extends VmFactory<AppState, CalendarsPageConnector> {
  Factory(CalendarsPageConnector widget) : super(widget);

  @override
  ViewModel fromStore() => ViewModel();
}
