class User {
  String _citizenNo;
  String _name;
  String _surname;
  String _token;
  String _registerNo;
  int _cases;

  User.fromMap(Map user) {
    this._token = user["token"];
    this._citizenNo = user["citizen_no"];
    this._name = user["name"];
    this._surname = user["surname"];
    this._registerNo = user["register_no"];
    this._cases = user["cases"];
  }

  get surname => this._surname;

  get name => this._name;

  get citizenNo => this._citizenNo;

  get token => this._token;

  get registerNo => this._registerNo;

  get cases => this._cases;

  get isJudge => this._registerNo.isNotEmpty;
}
