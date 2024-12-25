part of 'bloc.dart';

abstract class CategoryEvent extends Equatable {
  const CategoryEvent();

  @override
  List<Object> get props => [];
}

class InitCategories extends CategoryEvent {}

class RefreshCategories extends CategoryEvent {}

class OpenCategories extends CategoryEvent {
  int id;
  OpenCategories({required this.id});
}
