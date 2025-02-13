class NasaRoverModel {
  const NasaRoverModel({
    this.id,
    this.name,
    this.landingDate,
    this.launchDate,
    this.status,
  });

  final int? id;
  final String? name;
  final String? landingDate;
  final String? launchDate;
  final String? status;

  static const idKey = 'id';
  static const nameKey = 'name';
  static const landingDateKey = 'landing_date';
  static const launchDateKey = 'launch_date';
  static const statusKey = 'status';
}
