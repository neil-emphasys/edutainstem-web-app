import 'package:bloc/bloc.dart';
import 'package:edutainstem/domain/models/rooms/room_model.dart';
import 'package:edutainstem/domain/repositories/room_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'room_bloc.freezed.dart';
part 'room_event.dart';
part 'room_state.dart';

class RoomBloc extends Bloc<RoomEvent, RoomState> {
  final RoomRepository roomRepository;

  RoomBloc(this.roomRepository) : super(const _Initial()) {
    on<_GetRooms>((event, emit) async {
      emit(const _Loading());

      final result = await roomRepository.getRooms();

      result.fold((l) {}, (r) {
        emit(_Done(rooms: r.data));
      });
    });
  }
}
