/// status : true
/// message : "Logged in successfully"
/// code : 400
/// token : "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNzk2NjM4MjU1LCJpYXQiOjE3MTAyMzgyNTUsImp0aSI6IjA0NWZlOWY5N2MwYjQyODI5N2UwMDc0YzQ3MjZlM2Q2IiwidXNlcl9pZCI6MjF9.LJOTCZdXZXhUylOzouaCNQDwb5TjjKNrNir38A9Fx8I"
/// is_superuser : false
/// user_details : {"id":21,"last_login":null,"name":"test_user","phone":"9846123456","address":"","mail":"user123@gmail.com","username":"test_user","password":"pbkdf2_sha256$600000$ppw6NbobGupkdp7WZP8Z7e$TYW4rGwOmiEAudsx3Glr+zIvezZsEP5X4EyBRnvcY2E=","password_text":"12345678","admin":2,"is_admin":false,"is_active":true,"created_at":"2024-02-01T10:02:40.396021","updated_at":"2024-02-01T10:04:50.929152","branch":null}

class LoginResponse {
  LoginResponse({
      bool? status, 
      String? message, 
      num? code, 
      String? token, 
      bool? isSuperuser, 
      UserDetails? userDetails,}){
    _status = status;
    _message = message;
    _code = code;
    _token = token;
    _isSuperuser = isSuperuser;
    _userDetails = userDetails;
}

  LoginResponse.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    _code = json['code'];
    _token = json['token'];
    _isSuperuser = json['is_superuser'];
    _userDetails = json['user_details'] != null ? UserDetails.fromJson(json['user_details']) : null;
  }
  bool? _status;
  String? _message;
  num? _code;
  String? _token;
  bool? _isSuperuser;
  UserDetails? _userDetails;
LoginResponse copyWith({  bool? status,
  String? message,
  num? code,
  String? token,
  bool? isSuperuser,
  UserDetails? userDetails,
}) => LoginResponse(  status: status ?? _status,
  message: message ?? _message,
  code: code ?? _code,
  token: token ?? _token,
  isSuperuser: isSuperuser ?? _isSuperuser,
  userDetails: userDetails ?? _userDetails,
);
  bool? get status => _status;
  String? get message => _message;
  num? get code => _code;
  String? get token => _token;
  bool? get isSuperuser => _isSuperuser;
  UserDetails? get userDetails => _userDetails;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    map['message'] = _message;
    map['code'] = _code;
    map['token'] = _token;
    map['is_superuser'] = _isSuperuser;
    if (_userDetails != null) {
      map['user_details'] = _userDetails?.toJson();
    }
    return map;
  }

}

/// id : 21
/// last_login : null
/// name : "test_user"
/// phone : "9846123456"
/// address : ""
/// mail : "user123@gmail.com"
/// username : "test_user"
/// password : "pbkdf2_sha256$600000$ppw6NbobGupkdp7WZP8Z7e$TYW4rGwOmiEAudsx3Glr+zIvezZsEP5X4EyBRnvcY2E="
/// password_text : "12345678"
/// admin : 2
/// is_admin : false
/// is_active : true
/// created_at : "2024-02-01T10:02:40.396021"
/// updated_at : "2024-02-01T10:04:50.929152"
/// branch : null

class UserDetails {
  UserDetails({
      num? id, 
      dynamic lastLogin, 
      String? name, 
      String? phone, 
      String? address, 
      String? mail, 
      String? username, 
      String? password, 
      String? passwordText, 
      num? admin, 
      bool? isAdmin, 
      bool? isActive, 
      String? createdAt, 
      String? updatedAt, 
      dynamic branch,}){
    _id = id;
    _lastLogin = lastLogin;
    _name = name;
    _phone = phone;
    _address = address;
    _mail = mail;
    _username = username;
    _password = password;
    _passwordText = passwordText;
    _admin = admin;
    _isAdmin = isAdmin;
    _isActive = isActive;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _branch = branch;
}

  UserDetails.fromJson(dynamic json) {
    _id = json['id'];
    _lastLogin = json['last_login'];
    _name = json['name'];
    _phone = json['phone'];
    _address = json['address'];
    _mail = json['mail'];
    _username = json['username'];
    _password = json['password'];
    _passwordText = json['password_text'];
    _admin = json['admin'];
    _isAdmin = json['is_admin'];
    _isActive = json['is_active'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _branch = json['branch'];
  }
  num? _id;
  dynamic _lastLogin;
  String? _name;
  String? _phone;
  String? _address;
  String? _mail;
  String? _username;
  String? _password;
  String? _passwordText;
  num? _admin;
  bool? _isAdmin;
  bool? _isActive;
  String? _createdAt;
  String? _updatedAt;
  dynamic _branch;
UserDetails copyWith({  num? id,
  dynamic lastLogin,
  String? name,
  String? phone,
  String? address,
  String? mail,
  String? username,
  String? password,
  String? passwordText,
  num? admin,
  bool? isAdmin,
  bool? isActive,
  String? createdAt,
  String? updatedAt,
  dynamic branch,
}) => UserDetails(  id: id ?? _id,
  lastLogin: lastLogin ?? _lastLogin,
  name: name ?? _name,
  phone: phone ?? _phone,
  address: address ?? _address,
  mail: mail ?? _mail,
  username: username ?? _username,
  password: password ?? _password,
  passwordText: passwordText ?? _passwordText,
  admin: admin ?? _admin,
  isAdmin: isAdmin ?? _isAdmin,
  isActive: isActive ?? _isActive,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
  branch: branch ?? _branch,
);
  num? get id => _id;
  dynamic get lastLogin => _lastLogin;
  String? get name => _name;
  String? get phone => _phone;
  String? get address => _address;
  String? get mail => _mail;
  String? get username => _username;
  String? get password => _password;
  String? get passwordText => _passwordText;
  num? get admin => _admin;
  bool? get isAdmin => _isAdmin;
  bool? get isActive => _isActive;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  dynamic get branch => _branch;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['last_login'] = _lastLogin;
    map['name'] = _name;
    map['phone'] = _phone;
    map['address'] = _address;
    map['mail'] = _mail;
    map['username'] = _username;
    map['password'] = _password;
    map['password_text'] = _passwordText;
    map['admin'] = _admin;
    map['is_admin'] = _isAdmin;
    map['is_active'] = _isActive;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    map['branch'] = _branch;
    return map;
  }

}