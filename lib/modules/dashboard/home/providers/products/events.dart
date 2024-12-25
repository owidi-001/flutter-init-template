part of 'bloc.dart';

abstract class ProductEvent extends Equatable {
  const ProductEvent();

  @override
  List<Object> get props => [];
}

class FetchProducts extends ProductEvent {
  final ProductQuery query;

  const FetchProducts({required this.query});

  @override
  List<Object> get props => [query];
}

class CreateProduct extends ProductEvent {
  final ProductCreateData data;
  const CreateProduct({required this.data});
  @override
  List<Object> get props => [data];
}
