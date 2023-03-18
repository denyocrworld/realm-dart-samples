// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

class Vendor extends _Vendor with RealmEntity, RealmObjectBase, RealmObject {
  Vendor(
    ObjectId id,
    String title,
    String message,
    double latitude,
    double longitude,
    String openHour,
    String closeAt,
    double rating,
    String website,
    String phoneNumber,
    String aboutUs, {
    Iterable<VendorService> services = const [],
    Iterable<VendorReview> reviews = const [],
    Iterable<VendorPhoto> galleries = const [],
  }) {
    RealmObjectBase.set(this, '_id', id);
    RealmObjectBase.set(this, 'vendor_name', title);
    RealmObjectBase.set(this, 'address', message);
    RealmObjectBase.set(this, 'latitude', latitude);
    RealmObjectBase.set(this, 'longitude', longitude);
    RealmObjectBase.set(this, 'open_at', openHour);
    RealmObjectBase.set(this, 'close_at', closeAt);
    RealmObjectBase.set(this, 'rating', rating);
    RealmObjectBase.set(this, 'website', website);
    RealmObjectBase.set(this, 'phone_number', phoneNumber);
    RealmObjectBase.set(this, 'about_us', aboutUs);
    RealmObjectBase.set<RealmList<VendorService>>(
        this, 'services', RealmList<VendorService>(services));
    RealmObjectBase.set<RealmList<VendorReview>>(
        this, 'reviews', RealmList<VendorReview>(reviews));
    RealmObjectBase.set<RealmList<VendorPhoto>>(
        this, 'galleries', RealmList<VendorPhoto>(galleries));
  }

  Vendor._();

  @override
  ObjectId get id => RealmObjectBase.get<ObjectId>(this, '_id') as ObjectId;
  @override
  set id(ObjectId value) => RealmObjectBase.set(this, '_id', value);

  @override
  String get title =>
      RealmObjectBase.get<String>(this, 'vendor_name') as String;
  @override
  set title(String value) => RealmObjectBase.set(this, 'vendor_name', value);

  @override
  String get message => RealmObjectBase.get<String>(this, 'address') as String;
  @override
  set message(String value) => RealmObjectBase.set(this, 'address', value);

  @override
  double get latitude =>
      RealmObjectBase.get<double>(this, 'latitude') as double;
  @override
  set latitude(double value) => RealmObjectBase.set(this, 'latitude', value);

  @override
  double get longitude =>
      RealmObjectBase.get<double>(this, 'longitude') as double;
  @override
  set longitude(double value) => RealmObjectBase.set(this, 'longitude', value);

  @override
  String get openHour => RealmObjectBase.get<String>(this, 'open_at') as String;
  @override
  set openHour(String value) => RealmObjectBase.set(this, 'open_at', value);

  @override
  String get closeAt => RealmObjectBase.get<String>(this, 'close_at') as String;
  @override
  set closeAt(String value) => RealmObjectBase.set(this, 'close_at', value);

  @override
  double get rating => RealmObjectBase.get<double>(this, 'rating') as double;
  @override
  set rating(double value) => RealmObjectBase.set(this, 'rating', value);

  @override
  String get website => RealmObjectBase.get<String>(this, 'website') as String;
  @override
  set website(String value) => RealmObjectBase.set(this, 'website', value);

  @override
  String get phoneNumber =>
      RealmObjectBase.get<String>(this, 'phone_number') as String;
  @override
  set phoneNumber(String value) =>
      RealmObjectBase.set(this, 'phone_number', value);

  @override
  String get aboutUs => RealmObjectBase.get<String>(this, 'about_us') as String;
  @override
  set aboutUs(String value) => RealmObjectBase.set(this, 'about_us', value);

  @override
  RealmList<VendorService> get services =>
      RealmObjectBase.get<VendorService>(this, 'services')
          as RealmList<VendorService>;
  @override
  set services(covariant RealmList<VendorService> value) =>
      throw RealmUnsupportedSetError();

  @override
  RealmList<VendorReview> get reviews =>
      RealmObjectBase.get<VendorReview>(this, 'reviews')
          as RealmList<VendorReview>;
  @override
  set reviews(covariant RealmList<VendorReview> value) =>
      throw RealmUnsupportedSetError();

  @override
  RealmList<VendorPhoto> get galleries =>
      RealmObjectBase.get<VendorPhoto>(this, 'galleries')
          as RealmList<VendorPhoto>;
  @override
  set galleries(covariant RealmList<VendorPhoto> value) =>
      throw RealmUnsupportedSetError();

  @override
  Stream<RealmObjectChanges<Vendor>> get changes =>
      RealmObjectBase.getChanges<Vendor>(this);

  @override
  Vendor freeze() => RealmObjectBase.freezeObject<Vendor>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(Vendor._);
    return const SchemaObject(ObjectType.realmObject, Vendor, 'Vendor', [
      SchemaProperty('id', RealmPropertyType.objectid,
          mapTo: '_id', primaryKey: true),
      SchemaProperty('title', RealmPropertyType.string, mapTo: 'vendor_name'),
      SchemaProperty('message', RealmPropertyType.string, mapTo: 'address'),
      SchemaProperty('latitude', RealmPropertyType.double),
      SchemaProperty('longitude', RealmPropertyType.double),
      SchemaProperty('openHour', RealmPropertyType.string, mapTo: 'open_at'),
      SchemaProperty('closeAt', RealmPropertyType.string, mapTo: 'close_at'),
      SchemaProperty('rating', RealmPropertyType.double),
      SchemaProperty('website', RealmPropertyType.string),
      SchemaProperty('phoneNumber', RealmPropertyType.string,
          mapTo: 'phone_number'),
      SchemaProperty('aboutUs', RealmPropertyType.string, mapTo: 'about_us'),
      SchemaProperty('services', RealmPropertyType.object,
          linkTarget: 'VendorService',
          collectionType: RealmCollectionType.list),
      SchemaProperty('reviews', RealmPropertyType.object,
          linkTarget: 'VendorReview', collectionType: RealmCollectionType.list),
      SchemaProperty('galleries', RealmPropertyType.object,
          linkTarget: 'VendorPhoto', collectionType: RealmCollectionType.list),
    ]);
  }
}

class VendorService extends _VendorService
    with RealmEntity, RealmObjectBase, RealmObject {
  VendorService(
    ObjectId id,
    String serviceName,
    String description,
    double price,
  ) {
    RealmObjectBase.set(this, '_id', id);
    RealmObjectBase.set(this, 'service_name', serviceName);
    RealmObjectBase.set(this, 'description', description);
    RealmObjectBase.set(this, 'price', price);
  }

  VendorService._();

  @override
  ObjectId get id => RealmObjectBase.get<ObjectId>(this, '_id') as ObjectId;
  @override
  set id(ObjectId value) => RealmObjectBase.set(this, '_id', value);

  @override
  String get serviceName =>
      RealmObjectBase.get<String>(this, 'service_name') as String;
  @override
  set serviceName(String value) =>
      RealmObjectBase.set(this, 'service_name', value);

  @override
  String get description =>
      RealmObjectBase.get<String>(this, 'description') as String;
  @override
  set description(String value) =>
      RealmObjectBase.set(this, 'description', value);

  @override
  double get price => RealmObjectBase.get<double>(this, 'price') as double;
  @override
  set price(double value) => RealmObjectBase.set(this, 'price', value);

  @override
  Stream<RealmObjectChanges<VendorService>> get changes =>
      RealmObjectBase.getChanges<VendorService>(this);

  @override
  VendorService freeze() => RealmObjectBase.freezeObject<VendorService>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(VendorService._);
    return const SchemaObject(
        ObjectType.realmObject, VendorService, 'VendorService', [
      SchemaProperty('id', RealmPropertyType.objectid,
          mapTo: '_id', primaryKey: true),
      SchemaProperty('serviceName', RealmPropertyType.string,
          mapTo: 'service_name'),
      SchemaProperty('description', RealmPropertyType.string),
      SchemaProperty('price', RealmPropertyType.double),
    ]);
  }
}

class VendorReview extends _VendorReview
    with RealmEntity, RealmObjectBase, RealmObject {
  VendorReview(
    ObjectId id,
    String photo,
    String name,
    double rating,
    String message,
  ) {
    RealmObjectBase.set(this, '_id', id);
    RealmObjectBase.set(this, 'photo', photo);
    RealmObjectBase.set(this, 'name', name);
    RealmObjectBase.set(this, 'rating', rating);
    RealmObjectBase.set(this, 'message', message);
  }

  VendorReview._();

  @override
  ObjectId get id => RealmObjectBase.get<ObjectId>(this, '_id') as ObjectId;
  @override
  set id(ObjectId value) => RealmObjectBase.set(this, '_id', value);

  @override
  String get photo => RealmObjectBase.get<String>(this, 'photo') as String;
  @override
  set photo(String value) => RealmObjectBase.set(this, 'photo', value);

  @override
  String get name => RealmObjectBase.get<String>(this, 'name') as String;
  @override
  set name(String value) => RealmObjectBase.set(this, 'name', value);

  @override
  double get rating => RealmObjectBase.get<double>(this, 'rating') as double;
  @override
  set rating(double value) => RealmObjectBase.set(this, 'rating', value);

  @override
  String get message => RealmObjectBase.get<String>(this, 'message') as String;
  @override
  set message(String value) => RealmObjectBase.set(this, 'message', value);

  @override
  Stream<RealmObjectChanges<VendorReview>> get changes =>
      RealmObjectBase.getChanges<VendorReview>(this);

  @override
  VendorReview freeze() => RealmObjectBase.freezeObject<VendorReview>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(VendorReview._);
    return const SchemaObject(
        ObjectType.realmObject, VendorReview, 'VendorReview', [
      SchemaProperty('id', RealmPropertyType.objectid,
          mapTo: '_id', primaryKey: true),
      SchemaProperty('photo', RealmPropertyType.string),
      SchemaProperty('name', RealmPropertyType.string),
      SchemaProperty('rating', RealmPropertyType.double),
      SchemaProperty('message', RealmPropertyType.string),
    ]);
  }
}

class VendorPhoto extends _VendorPhoto
    with RealmEntity, RealmObjectBase, RealmObject {
  VendorPhoto(
    ObjectId id,
    String photoUrl,
  ) {
    RealmObjectBase.set(this, '_id', id);
    RealmObjectBase.set(this, 'photo_url', photoUrl);
  }

  VendorPhoto._();

  @override
  ObjectId get id => RealmObjectBase.get<ObjectId>(this, '_id') as ObjectId;
  @override
  set id(ObjectId value) => RealmObjectBase.set(this, '_id', value);

  @override
  String get photoUrl =>
      RealmObjectBase.get<String>(this, 'photo_url') as String;
  @override
  set photoUrl(String value) => RealmObjectBase.set(this, 'photo_url', value);

  @override
  Stream<RealmObjectChanges<VendorPhoto>> get changes =>
      RealmObjectBase.getChanges<VendorPhoto>(this);

  @override
  VendorPhoto freeze() => RealmObjectBase.freezeObject<VendorPhoto>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(VendorPhoto._);
    return const SchemaObject(
        ObjectType.realmObject, VendorPhoto, 'VendorPhoto', [
      SchemaProperty('id', RealmPropertyType.objectid,
          mapTo: '_id', primaryKey: true),
      SchemaProperty('photoUrl', RealmPropertyType.string, mapTo: 'photo_url'),
    ]);
  }
}
