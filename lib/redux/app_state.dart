import 'package:equatable/equatable.dart';
import 'package:copy_with_extension/copy_with_extension.dart';

part 'app_state.g.dart';

@CopyWith()
class AppState extends Equatable {
  const AppState({required this.date});

  final DateTime date;

  static AppState initial() => AppState(
        date: DateTime.now(),
      );

  @override
  List<Object?> get props => [];
}
