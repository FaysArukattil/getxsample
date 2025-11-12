// ignore_for_file: no_leading_underscores_for_local_identifiers

class Respusers {
  List<Users>? users;
  int? total;
  int? skip;
  int? limit;

  Respusers({this.users, this.total, this.skip, this.limit});

  Respusers.fromJson(Map<String, dynamic> json) {
    if (json["users"] is List) {
      users = json["users"] == null
          ? null
          : (json["users"] as List).map((e) => Users.fromJson(e)).toList();
    }
    if (json["total"] is int) {
      total = json["total"];
    }
    if (json["skip"] is int) {
      skip = json["skip"];
    }
    if (json["limit"] is int) {
      limit = json["limit"];
    }
  }

  static List<Respusers> fromList(List<Map<String, dynamic>> list) {
    return list.map(Respusers.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if (users != null) {
      _data["users"] = users?.map((e) => e.toJson()).toList();
    }
    _data["total"] = total;
    _data["skip"] = skip;
    _data["limit"] = limit;
    return _data;
  }
}

class Users {
  int? id;
  String? firstName;
  String? lastName;
  String? maidenName;
  int? age;
  String? gender;
  String? email;
  String? phone;
  String? username;
  String? password;
  String? birthDate;
  String? image;
  String? bloodGroup;
  double? height;
  double? weight;
  String? eyeColor;
  Hair? hair;
  String? ip;
  Address? address;
  String? macAddress;
  String? university;
  Bank? bank;
  Company? company;
  String? ein;
  String? ssn;
  String? userAgent;
  Crypto? crypto;
  String? role;

  Users({
    this.id,
    this.firstName,
    this.lastName,
    this.maidenName,
    this.age,
    this.gender,
    this.email,
    this.phone,
    this.username,
    this.password,
    this.birthDate,
    this.image,
    this.bloodGroup,
    this.height,
    this.weight,
    this.eyeColor,
    this.hair,
    this.ip,
    this.address,
    this.macAddress,
    this.university,
    this.bank,
    this.company,
    this.ein,
    this.ssn,
    this.userAgent,
    this.crypto,
    this.role,
  });

  Users.fromJson(Map<String, dynamic> json) {
    if (json["id"] is int) {
      id = json["id"];
    }
    if (json["firstName"] is String) {
      firstName = json["firstName"];
    }
    if (json["lastName"] is String) {
      lastName = json["lastName"];
    }
    if (json["maidenName"] is String) {
      maidenName = json["maidenName"];
    }
    if (json["age"] is int) {
      age = json["age"];
    }
    if (json["gender"] is String) {
      gender = json["gender"];
    }
    if (json["email"] is String) {
      email = json["email"];
    }
    if (json["phone"] is String) {
      phone = json["phone"];
    }
    if (json["username"] is String) {
      username = json["username"];
    }
    if (json["password"] is String) {
      password = json["password"];
    }
    if (json["birthDate"] is String) {
      birthDate = json["birthDate"];
    }
    if (json["image"] is String) {
      image = json["image"];
    }
    if (json["bloodGroup"] is String) {
      bloodGroup = json["bloodGroup"];
    }
    if (json["height"] is double) {
      height = json["height"];
    }
    if (json["weight"] is double) {
      weight = json["weight"];
    }
    if (json["eyeColor"] is String) {
      eyeColor = json["eyeColor"];
    }
    if (json["hair"] is Map) {
      hair = json["hair"] == null ? null : Hair.fromJson(json["hair"]);
    }
    if (json["ip"] is String) {
      ip = json["ip"];
    }
    if (json["address"] is Map) {
      address = json["address"] == null
          ? null
          : Address.fromJson(json["address"]);
    }
    if (json["macAddress"] is String) {
      macAddress = json["macAddress"];
    }
    if (json["university"] is String) {
      university = json["university"];
    }
    if (json["bank"] is Map) {
      bank = json["bank"] == null ? null : Bank.fromJson(json["bank"]);
    }
    if (json["company"] is Map) {
      company = json["company"] == null
          ? null
          : Company.fromJson(json["company"]);
    }
    if (json["ein"] is String) {
      ein = json["ein"];
    }
    if (json["ssn"] is String) {
      ssn = json["ssn"];
    }
    if (json["userAgent"] is String) {
      userAgent = json["userAgent"];
    }
    if (json["crypto"] is Map) {
      crypto = json["crypto"] == null ? null : Crypto.fromJson(json["crypto"]);
    }
    if (json["role"] is String) {
      role = json["role"];
    }
  }

  static List<Users> fromList(List<Map<String, dynamic>> list) {
    return list.map(Users.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["firstName"] = firstName;
    _data["lastName"] = lastName;
    _data["maidenName"] = maidenName;
    _data["age"] = age;
    _data["gender"] = gender;
    _data["email"] = email;
    _data["phone"] = phone;
    _data["username"] = username;
    _data["password"] = password;
    _data["birthDate"] = birthDate;
    _data["image"] = image;
    _data["bloodGroup"] = bloodGroup;
    _data["height"] = height;
    _data["weight"] = weight;
    _data["eyeColor"] = eyeColor;
    if (hair != null) {
      _data["hair"] = hair?.toJson();
    }
    _data["ip"] = ip;
    if (address != null) {
      _data["address"] = address?.toJson();
    }
    _data["macAddress"] = macAddress;
    _data["university"] = university;
    if (bank != null) {
      _data["bank"] = bank?.toJson();
    }
    if (company != null) {
      _data["company"] = company?.toJson();
    }
    _data["ein"] = ein;
    _data["ssn"] = ssn;
    _data["userAgent"] = userAgent;
    if (crypto != null) {
      _data["crypto"] = crypto?.toJson();
    }
    _data["role"] = role;
    return _data;
  }
}

class Crypto {
  String? coin;
  String? wallet;
  String? network;

  Crypto({this.coin, this.wallet, this.network});

  Crypto.fromJson(Map<String, dynamic> json) {
    if (json["coin"] is String) {
      coin = json["coin"];
    }
    if (json["wallet"] is String) {
      wallet = json["wallet"];
    }
    if (json["network"] is String) {
      network = json["network"];
    }
  }

  static List<Crypto> fromList(List<Map<String, dynamic>> list) {
    return list.map(Crypto.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["coin"] = coin;
    _data["wallet"] = wallet;
    _data["network"] = network;
    return _data;
  }
}

class Company {
  String? department;
  String? name;
  String? title;
  Address1? address;

  Company({this.department, this.name, this.title, this.address});

  Company.fromJson(Map<String, dynamic> json) {
    if (json["department"] is String) {
      department = json["department"];
    }
    if (json["name"] is String) {
      name = json["name"];
    }
    if (json["title"] is String) {
      title = json["title"];
    }
    if (json["address"] is Map) {
      address = json["address"] == null
          ? null
          : Address1.fromJson(json["address"]);
    }
  }

  static List<Company> fromList(List<Map<String, dynamic>> list) {
    return list.map(Company.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["department"] = department;
    _data["name"] = name;
    _data["title"] = title;
    if (address != null) {
      _data["address"] = address?.toJson();
    }
    return _data;
  }
}

class Address1 {
  String? address;
  String? city;
  String? state;
  String? stateCode;
  String? postalCode;
  Coordinates1? coordinates;
  String? country;

  Address1({
    this.address,
    this.city,
    this.state,
    this.stateCode,
    this.postalCode,
    this.coordinates,
    this.country,
  });

  Address1.fromJson(Map<String, dynamic> json) {
    if (json["address"] is String) {
      address = json["address"];
    }
    if (json["city"] is String) {
      city = json["city"];
    }
    if (json["state"] is String) {
      state = json["state"];
    }
    if (json["stateCode"] is String) {
      stateCode = json["stateCode"];
    }
    if (json["postalCode"] is String) {
      postalCode = json["postalCode"];
    }
    if (json["coordinates"] is Map) {
      coordinates = json["coordinates"] == null
          ? null
          : Coordinates1.fromJson(json["coordinates"]);
    }
    if (json["country"] is String) {
      country = json["country"];
    }
  }

  static List<Address1> fromList(List<Map<String, dynamic>> list) {
    return list.map(Address1.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["address"] = address;
    _data["city"] = city;
    _data["state"] = state;
    _data["stateCode"] = stateCode;
    _data["postalCode"] = postalCode;
    if (coordinates != null) {
      _data["coordinates"] = coordinates?.toJson();
    }
    _data["country"] = country;
    return _data;
  }
}

class Coordinates1 {
  double? lat;
  double? lng;

  Coordinates1({this.lat, this.lng});

  Coordinates1.fromJson(Map<String, dynamic> json) {
    if (json["lat"] is double) {
      lat = json["lat"];
    }
    if (json["lng"] is double) {
      lng = json["lng"];
    }
  }

  static List<Coordinates1> fromList(List<Map<String, dynamic>> list) {
    return list.map(Coordinates1.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["lat"] = lat;
    _data["lng"] = lng;
    return _data;
  }
}

class Bank {
  String? cardExpire;
  String? cardNumber;
  String? cardType;
  String? currency;
  String? iban;

  Bank({
    this.cardExpire,
    this.cardNumber,
    this.cardType,
    this.currency,
    this.iban,
  });

  Bank.fromJson(Map<String, dynamic> json) {
    if (json["cardExpire"] is String) {
      cardExpire = json["cardExpire"];
    }
    if (json["cardNumber"] is String) {
      cardNumber = json["cardNumber"];
    }
    if (json["cardType"] is String) {
      cardType = json["cardType"];
    }
    if (json["currency"] is String) {
      currency = json["currency"];
    }
    if (json["iban"] is String) {
      iban = json["iban"];
    }
  }

  static List<Bank> fromList(List<Map<String, dynamic>> list) {
    return list.map(Bank.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["cardExpire"] = cardExpire;
    _data["cardNumber"] = cardNumber;
    _data["cardType"] = cardType;
    _data["currency"] = currency;
    _data["iban"] = iban;
    return _data;
  }
}

class Address {
  String? address;
  String? city;
  String? state;
  String? stateCode;
  String? postalCode;
  Coordinates? coordinates;
  String? country;

  Address({
    this.address,
    this.city,
    this.state,
    this.stateCode,
    this.postalCode,
    this.coordinates,
    this.country,
  });

  Address.fromJson(Map<String, dynamic> json) {
    if (json["address"] is String) {
      address = json["address"];
    }
    if (json["city"] is String) {
      city = json["city"];
    }
    if (json["state"] is String) {
      state = json["state"];
    }
    if (json["stateCode"] is String) {
      stateCode = json["stateCode"];
    }
    if (json["postalCode"] is String) {
      postalCode = json["postalCode"];
    }
    if (json["coordinates"] is Map) {
      coordinates = json["coordinates"] == null
          ? null
          : Coordinates.fromJson(json["coordinates"]);
    }
    if (json["country"] is String) {
      country = json["country"];
    }
  }

  static List<Address> fromList(List<Map<String, dynamic>> list) {
    return list.map(Address.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["address"] = address;
    _data["city"] = city;
    _data["state"] = state;
    _data["stateCode"] = stateCode;
    _data["postalCode"] = postalCode;
    if (coordinates != null) {
      _data["coordinates"] = coordinates?.toJson();
    }
    _data["country"] = country;
    return _data;
  }
}

class Coordinates {
  double? lat;
  double? lng;

  Coordinates({this.lat, this.lng});

  Coordinates.fromJson(Map<String, dynamic> json) {
    if (json["lat"] is double) {
      lat = json["lat"];
    }
    if (json["lng"] is double) {
      lng = json["lng"];
    }
  }

  static List<Coordinates> fromList(List<Map<String, dynamic>> list) {
    return list.map(Coordinates.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["lat"] = lat;
    _data["lng"] = lng;
    return _data;
  }
}

class Hair {
  String? color;
  String? type;

  Hair({this.color, this.type});

  Hair.fromJson(Map<String, dynamic> json) {
    if (json["color"] is String) {
      color = json["color"];
    }
    if (json["type"] is String) {
      type = json["type"];
    }
  }

  static List<Hair> fromList(List<Map<String, dynamic>> list) {
    return list.map(Hair.fromJson).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["color"] = color;
    _data["type"] = type;
    return _data;
  }
}
