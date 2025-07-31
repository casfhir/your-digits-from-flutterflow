import '../database.dart';

class ViewLeftSummaryWeekTable extends SupabaseTable<ViewLeftSummaryWeekRow> {
  @override
  String get tableName => 'view_left_summary_week';

  @override
  ViewLeftSummaryWeekRow createRow(Map<String, dynamic> data) =>
      ViewLeftSummaryWeekRow(data);
}

class ViewLeftSummaryWeekRow extends SupabaseDataRow {
  ViewLeftSummaryWeekRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewLeftSummaryWeekTable();

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  DateTime? get weekStart => getField<DateTime>('week_start');
  set weekStart(DateTime? value) => setField<DateTime>('week_start', value);

  double? get totalLeft => getField<double>('total_left');
  set totalLeft(double? value) => setField<double>('total_left', value);
}
