part of 'internet_bloc.dart';

abstract class ConnectivityEvent extends Equatable{}

class ConnectivityChanged extends ConnectivityEvent {
  final List<ConnectivityResult> connectivityResult;

  ConnectivityChanged(this.connectivityResult);

  @override
  List<Object?> get props => [connectivityResult];
}
