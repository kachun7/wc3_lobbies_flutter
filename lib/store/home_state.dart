import 'package:super_enum/super_enum.dart';

part 'home_state.g.dart';

@superEnum
enum _FilterState {
  @object
  All,

  @Data(fields: [DataField<String>('filter')])
  Name,

  @Data(fields: [DataField<String>('filter')])
  Map,
}
