import 'dart:convert';

class Sight {
  final String imagePath;
  final double rating;
  final String name;
  Sight({
    required this.imagePath,
    required this.rating,
    required this.name,
  });

  Sight copyWith({
    String? imagePath,
    double? rating,
    String? name,
  }) {
    return Sight(
      imagePath: imagePath ?? this.imagePath,
      rating: rating ?? this.rating,
      name: name ?? this.name,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'imagePath': imagePath,
      'rating': rating,
      'name': name,
    };
  }

  factory Sight.fromMap(Map<String, dynamic> map) {
    return Sight(
      imagePath: map['imagePath'],
      rating: map['rating'],
      name: map['name'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Sight.fromJson(String source) => Sight.fromMap(json.decode(source));

  @override
  String toString() =>
      'Sight(imagePath: $imagePath, rating: $rating, name: $name)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Sight &&
        other.imagePath == imagePath &&
        other.rating == rating &&
        other.name == name;
  }

  @override
  int get hashCode => imagePath.hashCode ^ rating.hashCode ^ name.hashCode;
}
