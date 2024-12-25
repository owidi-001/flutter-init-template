part of 'bloc.dart';

class CategoryState extends Equatable {
  final ServiceStatus status;
  final SnackMessage? message;
  final List<ProductCategory> categories;

  const CategoryState({
    this.status = ServiceStatus.initial,
    this.message,
    this.categories = const [],
  });

  // copyWith method allows creating a new instance with modified fields
  CategoryState copyWith({
    ServiceStatus? status,
    SnackMessage? message,
    List<ProductCategory>? categories,
  }) {
    return CategoryState(
      status: status ?? this.status,
      message: message ?? this.message,
      categories: categories ?? this.categories,
    );
  }

  @override
  List<Object> get props => [status, categories];
}
