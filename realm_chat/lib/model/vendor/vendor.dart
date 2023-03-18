import 'package:realm/realm.dart';

part 'vendor.g.dart';

@RealmModel()
class _Vendor {
  @MapTo('_id')
  @PrimaryKey()
  late ObjectId id;
  @MapTo('vendor_name')
  late String title;
  @MapTo('address')
  late String message;
  @MapTo('latitude')
  late double latitude;
  @MapTo('longitude')
  late double longitude;
  @MapTo('open_at')
  late String openHour;
  @MapTo('close_at')
  late String closeAt;
  @MapTo('rating')
  late double rating;

  @MapTo('website')
  late String website;
  @MapTo('phone_number')
  late String phoneNumber;

  @MapTo('about_us')
  late String aboutUs;

  late List<_VendorService> services;
  late List<_VendorReview> reviews;
  late List<_VendorPhoto> galleries;
}

@RealmModel()
class _VendorService {
  @MapTo('_id')
  @PrimaryKey()
  late ObjectId id;
  @MapTo('service_name')
  late String serviceName;
  @MapTo('description')
  late String description;
  @MapTo('price')
  late double price;
}

@RealmModel()
class _VendorReview {
  @MapTo('_id')
  @PrimaryKey()
  late ObjectId id;
  @MapTo('photo')
  late String photo;
  @MapTo('name')
  late String name;
  @MapTo('rating')
  late double rating;
  @MapTo('message')
  late String message;
}

@RealmModel()
class _VendorPhoto {
  @MapTo('_id')
  @PrimaryKey()
  late ObjectId id;
  @MapTo('photo_url')
  late String photoUrl;
}
