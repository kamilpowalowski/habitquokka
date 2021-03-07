import 'package:habitquokka/models/calendar.dart';
import 'package:habitquokka/models/calendar_size.dart';
import 'package:habitquokka/pages/calendar/connector.dart';
import 'package:habitquokka/pages/calendar/view_model.dart';
import 'package:habitquokka/redux/redux.dart';

class Factory extends VmFactory<AppState, CalendarPageConnector> {
  Factory(
    CalendarPageConnector widget, {
    required this.id,
  }) : super(widget);

  final String id;

  @override
  ViewModel fromStore() => ViewModel(
        calendar: Calendar(
          id: id,
          image: 'https://placekitten.com/g/2048/${(2048 / 6 * 5).toInt()}',
          size: CalendarSize.fiveSix,
          shuffled: true,
        ),
      );
}
