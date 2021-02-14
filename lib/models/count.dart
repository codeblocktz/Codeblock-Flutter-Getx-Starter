import 'dart:convert';

class Count {
  final int number;
  Count({
    this.number,
  });

  Count copyWith({
    int number,
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
    if (map == null) return null;

    return Count(
      number: map['number']?.toInt(),
    );
  }

  String toJson() => json.encode(toMap());

  factory Count.fromJson(String source) => Count.fromMap(json.decode(source));

  @override
  String toString() => 'Count(number: $number)';

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is Count && o.number == number;
  }

  @override
  int get hashCode => number.hashCode;
}
