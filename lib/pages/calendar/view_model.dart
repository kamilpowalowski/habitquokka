import 'package:habitquokka/models/calendar.dart';
import 'package:habitquokka/redux/redux.dart';

class ViewModel extends Vm {
  ViewModel({required this.calendar}) : super(equals: [calendar]);

  final Calendar calendar;
}
