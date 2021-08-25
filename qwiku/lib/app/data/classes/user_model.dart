class Users {
  bool? success;
  Users? user;
  String? token;

  Users({this.success, this.user, this.token});

  Users.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    user = json['user'] != null ? Users?.fromJson(json['user']) : null;
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['success'] = success;
    if (user != null) {
      data['user'] = user!.toJson();
    }
    data['token'] = token;
    return data;
  }
}

class User extends Users {
  User? currentUserRole;
  String? sId;
  String? email;
  String? firstName;
  String? lastName;
  String? lastLogin;
  List<UserRoles>? userRoles;
  int? iV;
  User? videoSettings;

  User({
    this.currentUserRole,
    this.sId,
    this.email,
    this.firstName,
    this.lastName,
    this.lastLogin,
    this.userRoles,
    this.iV,
    this.videoSettings,
  });

  User.fromJson(Map<String, dynamic> json) {
    currentUserRole = json['currentUserRole'] != null
        ? User?.fromJson(json['currentUserRole'])
        : null;
    sId = json['_id'];
    email = json['email'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    lastLogin = json['lastLogin'];
    if (json['userRoles'] != null) {
      userRoles = <UserRoles>[];
      json['userRoles'].forEach((v) {
        userRoles!.add(UserRoles.fromJson(v));
      });
    }
    iV = json['__v'];
    videoSettings = json['videoSettings'] != null
        ? User?.fromJson(json['videoSettings'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (currentUserRole != null) {
      data['currentUserRole'] = currentUserRole!.toJson();
    }
    data['_id'] = sId;
    data['email'] = email;
    data['firstName'] = firstName;
    data['lastName'] = lastName;
    data['lastLogin'] = lastLogin;
    if (userRoles != null) {
      data['userRoles'] = userRoles!.map((v) => v.toJson()).toList();
    }
    data['__v'] = iV;
    if (videoSettings != null) {
      data['videoSettings'] = videoSettings!.toJson();
    }
    return data;
  }
}

class CurrentUserRole extends UserRoles {
  String? role;
  String? teamid;

  CurrentUserRole({this.role, this.teamid});

  CurrentUserRole.fromJson(Map<String, dynamic> json) {
    role = json['role'];
    teamid = json['teamid'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['role'] = role;
    data['teamid'] = teamid;
    return data;
  }
}

class UserRoles extends User {
  String? sId;
  String? role;
  String? teamid;

  UserRoles({this.sId, this.role, this.teamid});

  UserRoles.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    role = json['role'];
    teamid = json['teamid'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['_id'] = sId;
    data['role'] = role;
    data['teamid'] = teamid;
    return data;
  }
}

class VideoSettings extends User {
  bool? muteaudio;
  bool? showannotations;
  bool? showtrims;
  int? playbackstate;
  bool? shownotesinfullscreen;

  VideoSettings({
    this.muteaudio,
    this.showannotations,
    this.showtrims,
    this.playbackstate,
    this.shownotesinfullscreen,
  });

  VideoSettings.fromJson(Map<String, dynamic> json) {
    muteaudio = json['muteaudio'];
    showannotations = json['showannotations'];
    showtrims = json['showtrims'];
    playbackstate = json['playbackstate'];
    shownotesinfullscreen = json['shownotesinfullscreen'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['muteaudio'] = muteaudio;
    data['showannotations'] = showannotations;
    data['showtrims'] = showtrims;
    data['playbackstate'] = playbackstate;
    data['shownotesinfullscreen'] = shownotesinfullscreen;
    return data;
  }
}
