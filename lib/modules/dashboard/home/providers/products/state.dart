part of 'bloc.dart';

class ProductState extends Equatable {
  final ServiceStatus status;
  final SnackMessage? message;
  final List<Product> products;
  final ProductQuery query;

  const ProductState(
      {this.status = ServiceStatus.initial,
      this.message,
      this.products = const [],
      this.query = const ProductQuery()});

  ProductState copyWith(
      {ServiceStatus? status,
      SnackMessage? message,
      List<Product>? products,
      int? currentPage,
      ProductQuery? query}) {
    return ProductState(
        status: status ?? this.status,
        message: message ?? this.message,
        products: products ?? this.products,
        query: query ?? this.query);
  }

  @override
  List<Object> get props => [status, query, products];
}
