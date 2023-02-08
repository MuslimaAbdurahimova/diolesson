import 'Usd.dart';
import 'Gbp.dart';
import 'Eur.dart';

class Bpi {
  Bpi({
      this.usd, 
      this.gbp, 
      this.eur,});

  Bpi.fromJson(dynamic json) {
    usd = json['USD'] != null ? Usd.fromJson(json['USD']) : null;
    gbp = json['GBP'] != null ? Gbp.fromJson(json['GBP']) : null;
    eur = json['EUR'] != null ? Eur.fromJson(json['EUR']) : null;
  }
  Usd? usd;
  Gbp? gbp;
  Eur? eur;
Bpi copyWith({  Usd? usd,
  Gbp? gbp,
  Eur? eur,
}) => Bpi(  usd: usd ?? this.usd,
  gbp: gbp ?? this.gbp,
  eur: eur ?? this.eur,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (usd != null) {
      map['USD'] = usd?.toJson();
    }
    if (gbp != null) {
      map['GBP'] = gbp?.toJson();
    }
    if (eur != null) {
      map['EUR'] = eur?.toJson();
    }
    return map;
  }

}