class LoggedUser {
  int id;
  String email;
  String name;
  String phone;
  String dialCode;
  String? status;
  num? age;
  bool isImagePublic;
  String image;
  num? weight;
  num? length;

  LoggedUser({
    required this.id,
    required this.email,
    required this.name,
    required this.phone,
    required this.dialCode,
    required this.status,
    required this.age,
    required this.isImagePublic,
    required this.image,
    required this.weight,
    required this.length,
  });

  factory LoggedUser.fromJson(Map<String, dynamic> json) => LoggedUser(
    id: json["id"],
    email: json["email"],
    name: json["name"],
    phone: json["phone"],
    status: json["status"],
    age: num.tryParse(json["age"].toString()),
    isImagePublic: json["is_image_public"] == 1,
    image: json["image"],
    weight: num.tryParse(json["weight"].toString()),
    length: num.tryParse(json["length"].toString()),
    dialCode: json['phone_code'] ?? '',
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "email": email,
    "name": name,
    "phone": phone,
    "status": status,
    "age": age,
    "is_image_public": isImagePublic ? 1 : 0,
    "image": image,
    "weight": weight,
    "length": length,
    "phone_code": dialCode,
  };
}
