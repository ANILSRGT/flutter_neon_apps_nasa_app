class NasaRoverCameraModel {
  const NasaRoverCameraModel({this.id, this.name, this.roverId, this.fullName});

  final int? id;
  final String? name;
  final int? roverId;
  final String? fullName;

  static const idKey = 'id';
  static const nameKey = 'name';
  static const roverIdKey = 'rover_id';
  static const fullNameKey = 'full_name';
}
