class APIResponse<T> {
  Status status;
  String data;
  String message;

  APIResponse.success(this.data) : status = Status.Success;

  APIResponse.error(this.message) : status = Status.Error;

  APIResponse.connectivityError(this.message) : status = Status.ConnectivityError;

  APIResponse.loginSessionExpired(this.message) : status = Status.SessionExpired;

  @override
  String toString() {
    return "Status : $status \n Message : $message \n Data : $data";
  }
}

enum Status { Success, Error, ConnectivityError, SessionExpired }
