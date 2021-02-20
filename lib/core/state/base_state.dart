
enum StateStatus {
  ready,
  error,
  loading,
  empty
}

abstract class BaseState {
  StateStatus status = StateStatus.loading;
}