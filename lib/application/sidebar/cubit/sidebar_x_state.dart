part of 'sidebar_x_cubit.dart';

@freezed
abstract class SidebarXState with _$SidebarXState {
  const factory SidebarXState.initial({@Default(0) int index}) = _Initial;
}
