import '../database.dart';

class ViewAccountBalancesTable extends SupabaseTable<ViewAccountBalancesRow> {
  @override
  String get tableName => 'view_account_balances';

  @override
  ViewAccountBalancesRow createRow(Map<String, dynamic> data) =>
      ViewAccountBalancesRow(data);
}

class ViewAccountBalancesRow extends SupabaseDataRow {
  ViewAccountBalancesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewAccountBalancesTable();

  String? get accountId => getField<String>('account_id');
  set accountId(String? value) => setField<String>('account_id', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get type => getField<String>('type');
  set type(String? value) => setField<String>('type', value);

  String? get subtype => getField<String>('subtype');
  set subtype(String? value) => setField<String>('subtype', value);

  bool? get isSavings => getField<bool>('is_savings');
  set isSavings(bool? value) => setField<bool>('is_savings', value);

  double? get balance => getField<double>('balance');
  set balance(double? value) => setField<double>('balance', value);
}
