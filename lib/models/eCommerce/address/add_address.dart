import 'dart:convert';

class AddAddress {
  final int? addressId;
  final String name;
  final String phone;
  final String? companyName;
  final String? tradeRegisterNumber;
  final String? vatPayer;
  final String area;
  final String flatNo;
  final String postCode;
  final String addressLine;
  final String addressLine2;
  final String addressType;
  final String? latitude;
  final String? longitude;
  final String? country;
  final bool isDefault;
  AddAddress({
    this.addressId,
    required this.name,
    required this.phone,
    this.companyName,
    this.tradeRegisterNumber,
    this.vatPayer,
    required this.area,
    required this.flatNo,
    required this.postCode,
    required this.addressLine,
    required this.addressLine2,
    required this.addressType,
    this.latitude,
    this.longitude,
    required this.isDefault,
    required this.country,
  });

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {
      'id': addressId,
      'name': name,
      'phone': phone,
      'companyName': companyName,
      'trade_register_number': tradeRegisterNumber,
      'vat_payer': vatPayer,
      'area': area,
      'flat_no': flatNo,
      'post_code': postCode,
      'address_line': addressLine,
      'address_line2': addressLine2,
      'address_type': addressType,
      'latitude': latitude,
      'longitude': longitude,
      'country': country,
      'is_default': isDefault ? 1 : 0,
    };
    if (addressId != null) {
      map['id'] = addressId;
    }
    return map;
  }

  factory AddAddress.fromMap(Map<String, dynamic> map) {
    return AddAddress(
      addressId: map['id'] as int,
      name: map['name'] == null ? "" : map['name'] as String,
      phone: map['phone'] == null ? "" : map['phone'] as String,
      companyName: map['companyName'] == null ? "" : map['companyName'] as String,
      tradeRegisterNumber: map['tradeRegisterNumber'] == null ? "" : map['tradeRegisterNumber'] as String,
      vatPayer: map['vatPayer'] == null ? "" : map['vatPayer'] as String,
      area: map['area'] == null ? "" : map['area'] as String,
      flatNo: map['flat_no'] == null ? "" : map['flat_no'] as String,
      postCode: map['post_code'] == null ? "" : map['post_code'] as String,
      addressLine:
          map['address_line'] != null ? map['address_line'] as String : "",
      addressLine2:
          map['address_line2'] != null ? map['address_line2'] as String : "",
      addressType:
          map['address_type'] != null ? map['address_type'] as String : "",
      country: map['country'] != null ? map['country'] as String : "",
      latitude: map['latitude'] != null ? map['latitude'] as String : null,
      longitude: map['longitude'] != null ? map['longitude'] as String : null,
      isDefault: map['is_default'] != null ? map['is_default'] as bool : false,
    );
  }

  String toJson() => json.encode(toMap());

  factory AddAddress.fromJson(String source) =>
      AddAddress.fromMap(json.decode(source) as Map<String, dynamic>);
}

class DefaultAddressModel {
  final int? addressId;
  final String name;
  final String phone;
  final String? companyName;
  final String? tradeRegisterNumber;
  final String? vatPayer;
  final String area;
  final String flatNo;
  final String postCode;
  final String addressLine;
  final String addressLine2;
  final String addressType;
  final String? latitude;
  final String? longitude;
  final bool isDefault;
  DefaultAddressModel({
    this.addressId,
    required this.name,
    required this.phone,
    this.companyName,
    this.tradeRegisterNumber,
    this.vatPayer,
    required this.area,
    required this.flatNo,
    required this.postCode,
    required this.addressLine,
    required this.addressLine2,
    required this.addressType,
    this.latitude,
    this.longitude,
    required this.isDefault,
  });

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {
      'id': addressId,
      'name': name,
      'phone': phone,
      'companyName': companyName,
      'tradeRegisterNumber': tradeRegisterNumber,
      'vatPayer': vatPayer,
      'area': area,
      'flat_no': flatNo,
      'post_code': postCode,
      'address_line': addressLine,
      'address_line2': addressLine2,
      'address_type': addressType,
      'latitude': latitude,
      'longitude': longitude,
      'is_default': isDefault,
    };
    if (addressId != null) {
      map['id'] = addressId;
    }
    return map;
  }

  factory DefaultAddressModel.fromMap(Map<String, dynamic> map) {
    return DefaultAddressModel(
      addressId: map['id'] as int,
      name: map['name'] as String,
      phone: map['phone'] as String,
      companyName: map['companyName'] as String,
      tradeRegisterNumber: map['tradeRegisterNumber'] as String,
      vatPayer: map['vatPayer'] as String,
      area: map['area'] as String,
      flatNo: map['flat_no'] as String,
      postCode: map['post_code'] as String,
      addressLine:
          map['address_line'] == null ? "" : map['address_line'] as String,
      addressLine2:
          map['address_line2'] == null ? "" : map['address_line2'] as String,
      addressType: map['address_type'] as String,
      latitude: map['latitude'] != null ? map['latitude'] as String : null,
      longitude: map['longitude'] != null ? map['longitude'] as String : null,
      isDefault: map['is_default'] as bool,
    );
  }

  String toJson() => json.encode(toMap());

  factory DefaultAddressModel.fromJson(String source) =>
      DefaultAddressModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
