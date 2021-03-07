import 'package:copy_with_extension/copy_with_extension.dart';

import 'package:habitquokka/models/calendar_size.dart';

part 'calendar.g.dart';

@CopyWith()
class Calendar {
  const Calendar({
    required this.id,
    required this.image,
    required this.size,
    required this.shuffled,
  });

  final String id;
  final String image;
  final CalendarSize size;
  final bool shuffled;
}
