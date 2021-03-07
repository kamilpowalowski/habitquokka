class CalendarSize {
  CalendarSize._({
    required this.rows,
    required this.columns,
  });

  static CalendarSize fiveSix = CalendarSize._(rows: 5, columns: 6);

  final int rows;
  final int columns;
}
