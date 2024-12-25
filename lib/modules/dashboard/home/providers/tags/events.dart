part of 'bloc.dart';

abstract class TagEvent extends Equatable {
  const TagEvent();

  @override
  List<Object> get props => [];
}

class InitTags extends TagEvent {}

class RefreshTags extends TagEvent {}

