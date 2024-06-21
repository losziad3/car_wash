class ApiResult<T> {
  final T? data;
  final String? error;

  ApiResult({this.data, this.error});

  factory ApiResult.success(T data) => ApiResult<T>(data: data);
  factory ApiResult.error(String error) => ApiResult<T>(error: error);
}