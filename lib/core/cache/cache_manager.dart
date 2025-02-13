import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:neon_apps_nasa_app/core/enums/app_cache_keys.dart';
import 'package:neon_apps_nasa_app/core/enums/app_themes_enum.dart';
import 'package:neon_apps_nasa_app/domains/models/nasa/nasa_library_item_data_model.dart';
import 'package:neon_apps_nasa_app/domains/models/nasa/nasa_library_item_model.dart';

part 'cache_manager_theme.dart';
part 'cache_manager_nasa.dart';

final class CacheManager {
  CacheManager._init();
  static final CacheManager _instance = CacheManager._init();
  static CacheManager get I => _instance;

  late final Box<dynamic> _box;

  _CacheManagerTheme get theme => _CacheManagerTheme(_box);
  _CacheManagerNasa get nasa => _CacheManagerNasa(_box);

  Future<void> init() async {
    await Hive.initFlutter();
    _box = await Hive.openBox('cache');
    nasa.registerAdapters();
  }

  Future<void> clear() async {
    await _box.clear();
  }
}
