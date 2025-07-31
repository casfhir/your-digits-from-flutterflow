import '../database.dart';

class ViewOwedSummaryWeekTable extends SupabaseTable<ViewOwedSummaryWeekRow> {
  @override
  String get tableName => 'view_owed_summary_week';

  @override
  ViewOwedSummaryWeekRow createRow(Map<String, dynamic> data) =>
      ViewOwedSummaryWeekRow(data);
}

class ViewOwedSummaryWeekRow extends SupabaseDataRow {
  ViewOwedSummaryWeekRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewOwedSummaryWeekTable();

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  DateTime? get weekStart => getField<DateTime>('week_start');
  set weekStart(DateTime? value) => setField<DateTime>('week_start', value);

  double? get totalOwed => getField<double>('total_owed');
  set totalOwed(double? value) => setField<double>('total_owed', value);
}
