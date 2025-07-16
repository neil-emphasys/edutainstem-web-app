import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'room_bloc.freezed.dart';
part 'room_event.dart';
part 'room_state.dart';

class RoomBloc extends Bloc<RoomEvent, RoomState> {
  RoomBloc() : super(_Initial()) {
    on<RoomEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
