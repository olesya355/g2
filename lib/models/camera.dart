class Camera {
  final int id;
  final String name;
  final String fullName;

  Camera({
    required this.id,
    required this.name,
    required this.fullName,
  });

  factory Camera.fromJson(Map<String, dynamic> json) {
    return Camera(
      id: json['id'],
      name: json['name'],
      fullName: json['full_name'],
    );
  }
}