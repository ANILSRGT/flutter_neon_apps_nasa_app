import 'package:hive_flutter/hive_flutter.dart';

part 'user_settings_model.g.dart';

@HiveType(typeId: 2)
class UserSettingsModel {
  const UserSettingsModel({this.autoPlay = false});

  @HiveField(0)
  final bool autoPlay;

  UserSettingsModel copyWith({bool? autoPlay}) {
    return UserSettingsModel(autoPlay: autoPlay ?? this.autoPlay);
  }
}
