import 'package:faker_dart/faker_dart.dart';
import 'package:realm/realm.dart';
import 'package:realm_chat/core.dart';

class VendorService {
  static late Realm realm;
  static VendorService? _instance;
  static VendorService get instance {
    _instance ??= VendorService();
    return _instance!;
  }

  VendorService() {
    realm = Realm(Configuration.flexibleSync(AuthService.currentUser!, [
      Vendor.schema,
    ]));
  }

  syncronize() async {
    print("- $syncronize");
    if (realm.subscriptions.isNotEmpty) return;
    String queryAllName = "${this}Subscription";
    print("$queryAllName is created!");
    realm.subscriptions.update((mutableSubscriptions) {
      mutableSubscriptions.add(realm.all<Vendor>(), name: queryAllName);
    });
    await realm.subscriptions.waitForSynchronization();
  }

  Stream<RealmResultsChanges<Vendor>> snapshot() {
    return VendorService.realm
        .query<Vendor>("TRUEPREDICATE SORT(_id ASC)")
        .changes;
  }

  add({
    required String title,
    required String content,
    required String category,
  }) async {
    var newItem = Vendor(
      ObjectId(),
      "",
      "",
      10.0,
      10.0,
      "",
      "",
      23.0,
      "",
      "",
      "",
      services: [],
      galleries: [],
      reviews: [],
    );
    realm.write(() {
      realm.add(newItem);
    });
  }

  delete(Vendor item) {
    realm.write(() async {
      realm.delete(item);
    });
  }

  Future<void> update(Vendor item, {String? summary, bool? isComplete}) async {
    realm.write(() {
      item.title = Faker.instance.commerce.productName();
    });
  }
}
