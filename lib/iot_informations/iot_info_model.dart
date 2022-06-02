
//https://ashamp.github.io/jsonToDartModel/ sitesinden oluşturulmuş hazır model
//siteye girip aldığınız json yapıştırdığınızda uygun modeli çıkarıyor

class IotInfoModelFeeds {
/*
{
  "created_at": "2022-05-23T14:05:38Z",
  "entry_id": 2258,
  "field1": "28.00",
  "field2": "47.00",
  "field3": "92"
}
*/
  int? bcc;
  String? dcc;
  String? acc;
  String? createdAt;
  int? entryId;
  String? field1;
  String? field2;
  String? field3;

  IotInfoModelFeeds({
    this.dcc,
    this.bcc,
    this.acc,
    this.createdAt,
    this.entryId,
    this.field1,
    this.field2,
    this.field3,
  });
  IotInfoModelFeeds.fromJson(Map<String, dynamic> json) {
    createdAt = json['created_at']?.toString();
    entryId = json['entry_id']?.toInt();
    field1 = json['field1']?.toString();
    field2 = json['field2']?.toString();
    field3 = json['field3']?.toString();
    dcc = createdAt![11]+createdAt![12];
    bcc = int.parse(dcc!);
    if(bcc==21){
      bcc=-3;
    } if(bcc==22){
      bcc=-2;
    } if(bcc==23){
      bcc=-1;
    } if(bcc==24){
      bcc=0;
    }


    acc= '${bcc!+3}'+'${createdAt![13].toString()}'+'${createdAt![14].toString()}'+'${createdAt![15].toString()} // ${createdAt![8].toString()}'+'${createdAt![9].toString()}-${createdAt![5].toString()}${createdAt![6].toString()}-${createdAt![2].toString()}${createdAt![3].toString()}';
  }   //2022-05-23T14:05:38Z
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['created_at'] = createdAt;
    data['entry_id'] = entryId;
    data['field1'] = field1;
    data['field2'] = field2;
    data['field3'] = field3;
    return data;
  }


}


class IotInfoModelChannel {
/*
{
  "id": 1743287,
  "name": "Tarim 4.0",
  "latitude": "0.0",
  "longitude": "0.0",
  "field1": "Sıcaklık",
  "field2": "Nem",
  "field3": "Toprak Nem",
  "created_at": "2022-05-21T12:14:27Z",
  "updated_at": "2022-05-23T11:25:39Z",
  "last_entry_id": 2259
}
*/

  int? id;
  String? name;
  String? latitude;
  String? longitude;
  String? field1;
  String? field2;
  String? field3;
  String? createdAt;
  String? updatedAt;
  int? lastEntryId;

  IotInfoModelChannel({
    this.id,
    this.name,
    this.latitude,
    this.longitude,
    this.field1,
    this.field2,
    this.field3,
    this.createdAt,
    this.updatedAt,
    this.lastEntryId,
  });
  IotInfoModelChannel.fromJson(Map<String, dynamic> json) {
    id = json['id']?.toInt();
    name = json['name']?.toString();
    latitude = json['latitude']?.toString();
    longitude = json['longitude']?.toString();
    field1 = json['field1']?.toString();
    field2 = json['field2']?.toString();
    field3 = json['field3']?.toString();
    createdAt = json['created_at']?.toString();
    updatedAt = json['updated_at']?.toString();
    lastEntryId = json['last_entry_id']?.toInt();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['latitude'] = latitude;
    data['longitude'] = longitude;
    data['field1'] = field1;
    data['field2'] = field2;
    data['field3'] = field3;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['last_entry_id'] = lastEntryId;
    return data;
  }
}

class IotInfoModel {
/*
{
  "channel": {
    "id": 1743287,
    "name": "Tarim 4.0",
    "latitude": "0.0",
    "longitude": "0.0",
    "field1": "Sıcaklık",
    "field2": "Nem",
    "field3": "Toprak Nem",
    "created_at": "2022-05-21T12:14:27Z",
    "updated_at": "2022-05-23T11:25:39Z",
    "last_entry_id": 2259
  },
  "feeds": [
    {
      "created_at": "2022-05-23T14:05:38Z",
      "entry_id": 2258,
      "field1": "28.00",
      "field2": "47.00",
      "field3": "92"
    }
  ]
}
*/

  IotInfoModelChannel? channel;
  List<IotInfoModelFeeds?>? feeds;

  IotInfoModel({
    this.channel,
    this.feeds,
  });
  IotInfoModel.fromJson(Map<String, dynamic> json) {
    channel = (json['channel'] != null) ? IotInfoModelChannel.fromJson(json['channel']) : null;
    if (json['feeds'] != null) {
      final v = json['feeds'];
      final arr0 = <IotInfoModelFeeds>[];
      v.forEach((v) {
        arr0.add(IotInfoModelFeeds.fromJson(v));
      });
      feeds = arr0;
    }
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (channel != null) {
      data['channel'] = channel!.toJson();
    }
    if (feeds != null) {
      final v = feeds;
      final arr0 = [];
      v!.forEach((v) {
        arr0.add(v!.toJson());
      });
      data['feeds'] = arr0;
    }
    return data;
  }
}
