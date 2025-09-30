abstract class BaseState {}

class SuccessState<T> extends BaseState {
  final T data;
  SuccessState(this.data);
}

class FailedState extends BaseState {
  final String message;
  final int? code;

  FailedState({required this.message, this.code});
}
