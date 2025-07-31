import '../database.dart';

class IconsTable extends SupabaseTable<IconsRow> {
  @override
  String get tableName => 'icons';

  @override
  IconsRow createRow(Map<String, dynamic> data) => IconsRow(data);
}

class IconsRow extends SupabaseDataRow {
  IconsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => IconsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  String get url => getField<String>('url')!;
  set url(String value) => setField<String>('url', value);
}
