import 'dart:convert';

class Count {
  final int number;
  Count({
    required this.number,
  });

  Count copyWith({
    int? number,
  }) {
    return Count(
      number: number ?? this.number,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'number': number,
    };
  }

  factory Count.fromMap(Map<String, dynamic> map) {
    return Count(
      number: map['number']?.toInt(),
    );
  }

  String toJson() => json.encode(toMap());

  factory Count.fromJson(String source) => Count.fromMap(json.decode(source));

  @override
  String toString() => 'Count(number: $number)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Count && other.number == number;
  }

  @override
  int get hashCode => number.hashCode;
}
