class Name {
  Name({
      this.count, 
      this.gender, 
      this.name, 
      this.probability,});

  Name.fromJson(dynamic json) {
    count = json['count'];
    gender = json['gender'];
    name = json['name'];
    probability = json['probability'];
  }
  int? count;
  String? gender;
  String? name;
  num? probability;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['count'] = count;
    map['gender'] = gender;
    map['name'] = name;
    map['probability'] = probability;
    return map;
  }

}