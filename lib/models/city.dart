import 'dart:convert';

class City {
  String imageUrl;
  String name;
  String address;
  int price;
  City({
    required this.imageUrl,
    required this.name,
    required this.address,
    required this.price,
  });

  City copyWith({
    String? imageUrl,
    String? name,
    String? address,
    int? price,
  }) {
    return City(
      imageUrl: imageUrl ?? this.imageUrl,
      name: name ?? this.name,
      address: address ?? this.address,
      price: price ?? this.price,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'imageUrl': imageUrl,
      'name': name,
      'address': address,
      'price': price,
    };
  }

  factory City.fromMap(Map<String, dynamic> map) {
    return City(
      imageUrl: map['imageUrl'],
      name: map['name'],
      address: map['address'],
      price: map['price'],
    );
  }

  String toJson() => json.encode(toMap());

  factory City.fromJson(String source) => City.fromMap(json.decode(source));

  @override
  String toString() {
    return 'City(imageUrl: $imageUrl, name: $name, address: $address, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is City &&
        other.imageUrl == imageUrl &&
        other.name == name &&
        other.address == address &&
        other.price == price;
  }

  @override
  int get hashCode {
    return imageUrl.hashCode ^
        name.hashCode ^
        address.hashCode ^
        price.hashCode;
  }
}
