import '../database.dart';

class ViewSavedSummaryMonthTable
    extends SupabaseTable<ViewSavedSummaryMonthRow> {
  @override
  String get tableName => 'view_saved_summary_month';

  @override
  ViewSavedSummaryMonthRow createRow(Map<String, dynamic> data) =>
      ViewSavedSummaryMonthRow(data);
}

class ViewSavedSummaryMonthRow extends SupabaseDataRow {
  ViewSavedSummaryMonthRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewSavedSummaryMonthTable();

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  DateTime? get monthStart => getField<DateTime>('month_start');
  set monthStart(DateTime? value) => setField<DateTime>('month_start', value);

  double? get totalSaved => getField<double>('total_saved');
  set totalSaved(double? value) => setField<double>('total_saved', value);
}
