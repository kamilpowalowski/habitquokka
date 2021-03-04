import 'package:habitquokka/pages/calendar/calendar.dart';
import 'package:habitquokka/pages/calendar/view_model.dart';
import 'package:habitquokka/redux/redux.dart';

class Factory extends VmFactory<AppState, CalendarPageConnector> {
  Factory(CalendarPageConnector widget) : super(widget);

  @override
  ViewModel fromStore() => ViewModel();
}
