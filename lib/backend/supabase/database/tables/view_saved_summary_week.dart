import '../database.dart';

class ViewSavedSummaryWeekTable extends SupabaseTable<ViewSavedSummaryWeekRow> {
  @override
  String get tableName => 'view_saved_summary_week';

  @override
  ViewSavedSummaryWeekRow createRow(Map<String, dynamic> data) =>
      ViewSavedSummaryWeekRow(data);
}

class ViewSavedSummaryWeekRow extends SupabaseDataRow {
  ViewSavedSummaryWeekRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewSavedSummaryWeekTable();

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  DateTime? get weekStart => getField<DateTime>('week_start');
  set weekStart(DateTime? value) => setField<DateTime>('week_start', value);

  double? get totalSaved => getField<double>('total_saved');
  set totalSaved(double? value) => setField<double>('total_saved', value);
}
