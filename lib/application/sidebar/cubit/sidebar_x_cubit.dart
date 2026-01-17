import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sidebar_x_cubit.freezed.dart';
part 'sidebar_x_state.dart';

class SidebarXCubit extends Cubit<SidebarXState> {
  SidebarXCubit() : super(const SidebarXState.initial());

  void setSelectedIndex(int newIndex) {
    emit(SidebarXState.initial(index: newIndex));
  }
}
