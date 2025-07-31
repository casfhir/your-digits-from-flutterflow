import '../database.dart';

class JarsTable extends SupabaseTable<JarsRow> {
  @override
  String get tableName => 'jars';

  @override
  JarsRow createRow(Map<String, dynamic> data) => JarsRow(data);
}

class JarsRow extends SupabaseDataRow {
  JarsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => JarsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  String get url => getField<String>('url')!;
  set url(String value) => setField<String>('url', value);
}
