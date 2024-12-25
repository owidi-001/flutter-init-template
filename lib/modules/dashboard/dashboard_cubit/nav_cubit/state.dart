part of 'cubit.dart';

class DashboardState extends Equatable {
  final int position;

  const DashboardState(this.position);
  DashboardState copyWith({
    int? position,
  }) {
    return DashboardState(
      position ?? this.position,
    );
  }

  @override
  List<Object?> get props => [position];
}
