class Alljokes {
  var value;

  Alljokes({
    required this.value,
  });

  factory Alljokes.js({required Map data}) {
    return Alljokes(
      value: data['value'],
    );
  }
}
