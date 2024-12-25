part of 'bloc.dart';

class TagState extends Equatable {
  final ServiceStatus status;
  final SnackMessage? message;
  final List<Tag> tags;

  const TagState({
    this.status = ServiceStatus.initial,
    this.message,
    this.tags = const [],
  });

  // copyWith method allows creating a new instance with modified fields
  TagState copyWith({
    ServiceStatus? status,
    SnackMessage? message,
    List<Tag>? tags,
  }) {
    return TagState(
      status: status ?? this.status,
      message: message ?? this.message,
      tags: tags ?? this.tags,
    );
  }

  @override
  List<Object> get props => [status, tags];
}
