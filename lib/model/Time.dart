class Time {
  Time({
      this.updated, 
      this.updatedISO, 
      this.updateduk,});

  Time.fromJson(dynamic json) {
    updated = json['updated'];
    updatedISO = json['updatedISO'];
    updateduk = json['updateduk'];
  }
  String? updated;
  String? updatedISO;
  String? updateduk;
Time copyWith({  String? updated,
  String? updatedISO,
  String? updateduk,
}) => Time(  updated: updated ?? this.updated,
  updatedISO: updatedISO ?? this.updatedISO,
  updateduk: updateduk ?? this.updateduk,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['updated'] = updated;
    map['updatedISO'] = updatedISO;
    map['updateduk'] = updateduk;
    return map;
  }

}