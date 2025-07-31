import '../database.dart';

class AccountsTable extends SupabaseTable<AccountsRow> {
  @override
  String get tableName => 'accounts';

  @override
  AccountsRow createRow(Map<String, dynamic> data) => AccountsRow(data);
}

class AccountsRow extends SupabaseDataRow {
  AccountsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AccountsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  String get type => getField<String>('type')!;
  set type(String value) => setField<String>('type', value);

  bool get isSavings => getField<bool>('is_savings')!;
  set isSavings(bool value) => setField<bool>('is_savings', value);

  double get startingbalance => getField<double>('startingbalance')!;
  set startingbalance(double value) =>
      setField<double>('startingbalance', value);

  String get currency => getField<String>('currency')!;
  set currency(String value) => setField<String>('currency', value);

  String get subtype => getField<String>('subtype')!;
  set subtype(String value) => setField<String>('subtype', value);

  bool get isDefault => getField<bool>('is_default')!;
  set isDefault(bool value) => setField<bool>('is_default', value);

  DateTime get openingDate => getField<DateTime>('opening_date')!;
  set openingDate(DateTime value) => setField<DateTime>('opening_date', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  DateTime? get deletedAt => getField<DateTime>('deleted_at');
  set deletedAt(DateTime? value) => setField<DateTime>('deleted_at', value);
}
