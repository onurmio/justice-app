class ServerResponse {
  bool _success;
  String _message;
  var _data;

  ServerResponse(Map result) {
    if (result != null) {
      this._success = result["success"];
      this._message = result["message"];
      this._data = result["data"];
    } else {
      this._success = false;
      this._message = null;
      this._data = null;
    }
  }

  @override
  String toString() {
    return 'ServerResponse{_success: $_success, _message: $_message, _data: $_data}';
  }

  get data => _data;

  String get message => _message;

  bool get isSuccessful => _success;

  bool get isNotEmpty => this._data != null;
}
