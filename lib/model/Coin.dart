import 'Time.dart';
import 'Bpi.dart';

class Coin {
  Coin({
      this.time, 
      this.disclaimer, 
      this.chartName, 
      this.bpi,});

  Coin.fromJson(dynamic json) {
    print(json["time"]);
    time = json['time'] != null ? Time.fromJson(json['time']) : null;
    disclaimer = json['disclaimer'];
    chartName = json['chartName'];
    bpi = json['bpi'] != null ? Bpi.fromJson(json['bpi']) : null;
  }

  Time? time;
  String? disclaimer;
  String? chartName;
  Bpi? bpi;
Coin copyWith({  Time? time,
  String? disclaimer,
  String? chartName,
  Bpi? bpi,
}) => Coin(  time: time ?? this.time,
  disclaimer: disclaimer ?? this.disclaimer,
  chartName: chartName ?? this.chartName,
  bpi: bpi ?? this.bpi,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (time != null) {
      map['time'] = time?.toJson();
    }
    map['disclaimer'] = disclaimer;
    map['chartName'] = chartName;
    if (bpi != null) {
      map['bpi'] = bpi?.toJson();
    }
    return map;
  }

}