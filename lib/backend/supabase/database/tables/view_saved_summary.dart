import '../database.dart';

class ViewSavedSummaryTable extends SupabaseTable<ViewSavedSummaryRow> {
  @override
  String get tableName => 'view_saved_summary';

  @override
  ViewSavedSummaryRow createRow(Map<String, dynamic> data) =>
      ViewSavedSummaryRow(data);
}

class ViewSavedSummaryRow extends SupabaseDataRow {
  ViewSavedSummaryRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewSavedSummaryTable();

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  DateTime? get date => getField<DateTime>('date');
  set date(DateTime? value) => setField<DateTime>('date', value);

  double? get totalSaved => getField<double>('total_saved');
  set totalSaved(double? value) => setField<double>('total_saved', value);
}
