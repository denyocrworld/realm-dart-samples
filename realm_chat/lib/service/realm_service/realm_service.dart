import 'package:realm/realm.dart';

Map _realmConfig = {
  "appId": "application-0-hgyrw",
  "appUrl":
      "https://realm.mongodb.com/groups/641110674b640877fbed7c0a/apps/64111100d00499994aadea7e",
  "baseUrl": "https://realm.mongodb.com",
  "dataSourceName": "mongodb-atlas"
};

class RealmService {
  static late App app;
  static late AppConfiguration appConfiguration;
  static init() {
    String appId = _realmConfig["appId"];
    appConfiguration = AppConfiguration(appId);
    app = App(appConfiguration);
  }
}
