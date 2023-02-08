class Eur {
  Eur({
      this.code, 
      this.symbol, 
      this.rate, 
      this.description, 
      this.rateFloat,});

  Eur.fromJson(dynamic json) {
    code = json['code'];
    symbol = json['symbol'];
    rate = json['rate'];
    description = json['description'];
    rateFloat = json['rate_float'];
  }
  String? code;
  String? symbol;
  String? rate;
  String? description;
  num? rateFloat;
Eur copyWith({  String? code,
  String? symbol,
  String? rate,
  String? description,
  num? rateFloat,
}) => Eur(  code: code ?? this.code,
  symbol: symbol ?? this.symbol,
  rate: rate ?? this.rate,
  description: description ?? this.description,
  rateFloat: rateFloat ?? this.rateFloat,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['code'] = code;
    map['symbol'] = symbol;
    map['rate'] = rate;
    map['description'] = description;
    map['rate_float'] = rateFloat;
    return map;
  }

}