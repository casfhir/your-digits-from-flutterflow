import '../database.dart';

class CategoriesWithIconTable extends SupabaseTable<CategoriesWithIconRow> {
  @override
  String get tableName => 'categories_with_icon';

  @override
  CategoriesWithIconRow createRow(Map<String, dynamic> data) =>
      CategoriesWithIconRow(data);
}

class CategoriesWithIconRow extends SupabaseDataRow {
  CategoriesWithIconRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CategoriesWithIconTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get type => getField<String>('type');
  set type(String? value) => setField<String>('type', value);

  bool? get isDefault => getField<bool>('is_default');
  set isDefault(bool? value) => setField<bool>('is_default', value);

  String? get iconId => getField<String>('icon_id');
  set iconId(String? value) => setField<String>('icon_id', value);

  String? get iconName => getField<String>('icon_name');
  set iconName(String? value) => setField<String>('icon_name', value);

  String? get iconUrl => getField<String>('icon_url');
  set iconUrl(String? value) => setField<String>('icon_url', value);

  String? get jarId => getField<String>('jar_id');
  set jarId(String? value) => setField<String>('jar_id', value);

  String? get jarName => getField<String>('jar_name');
  set jarName(String? value) => setField<String>('jar_name', value);

  String? get jarUrl => getField<String>('jar_url');
  set jarUrl(String? value) => setField<String>('jar_url', value);
}
