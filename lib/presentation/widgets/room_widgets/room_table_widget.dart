import 'package:edutainstem/application/rooms/room_bloc/room_bloc.dart';
import 'package:edutainstem/core/gen/assets.gen.dart';
import 'package:edutainstem/core/gen/colors.gen.dart';
import 'package:edutainstem/domain/models/rooms/room_model.dart';
import 'package:edutainstem/styles/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pluto_grid/pluto_grid.dart';
import 'package:skeletonizer/skeletonizer.dart';

class Room {
  final String id;
  final String name;
  final String description;
  final List<String> tags;
  final int studentsJoined;
  final String selectedLesson;

  Room({
    required this.id,
    required this.name,
    required this.description,
    required this.tags,
    required this.studentsJoined,
    required this.selectedLesson,
  });
}

class RoomTableWidget extends StatelessWidget {
  final List<RoomModel> rooms = [RoomModel.initial(), RoomModel.initial()];

  RoomTableWidget({required this.onViewClick, super.key});

  final void Function(RoomModel) onViewClick;

  @override
  Widget build(BuildContext context) {
    // Define columns
    final columns = <PlutoColumn>[
      PlutoColumn(
        title: 'Room Code',
        field: 'id',
        type: PlutoColumnType.text(),
        width: 100,
        frozen: PlutoColumnFrozen.start,
      ),
      PlutoColumn(
        title: 'Title',
        field: 'title',
        type: PlutoColumnType.text(),
        width: 150,
        textAlign: PlutoColumnTextAlign.center,
      ),
      PlutoColumn(
        title: 'Room Description',
        field: 'description',
        type: PlutoColumnType.text(),
        width: 300,
      ),
      PlutoColumn(
        title: 'Duration (In Minutes)',
        field: 'duration',
        type: PlutoColumnType.text(),
        width: 250,
      ),
      PlutoColumn(
        title: 'Is Open?',
        field: 'openStatus',
        type: PlutoColumnType.text(),
        width: 200,
        textAlign: PlutoColumnTextAlign.center,
      ),
      PlutoColumn(
        title: 'Is Assessment Open?',
        field: 'assessmentStatus',
        type: PlutoColumnType.text(),
        width: 150,
        textAlign: PlutoColumnTextAlign.center,
      ),
      PlutoColumn(
        title: 'Actions',
        field: 'actions',
        type: PlutoColumnType.text(),
        width: 150,
        textAlign: PlutoColumnTextAlign.center,
        enableEditingMode: false,
        enableSorting: false,
        readOnly: true,
        titleTextAlign: PlutoColumnTextAlign.center,
        frozen: PlutoColumnFrozen.end, // pin to the right (optional)
        enableFilterMenuItem: false,
        renderer: (ctx) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                tooltip: 'View',
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints.tightFor(
                  width: 36,
                  height: 36,
                ),
                icon: const Icon(Icons.visibility),
                onPressed: () {},
              ),
              IconButton(
                tooltip: 'Edit',
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints.tightFor(
                  width: 36,
                  height: 36,
                ),
                icon: const Icon(Icons.edit),
                onPressed: () {},
              ),
              IconButton(
                tooltip: 'Delete',
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints.tightFor(
                  width: 36,
                  height: 36,
                ),
                icon: const Icon(Icons.delete),
                onPressed: () {
                  // Example: remove row locally, then notify
                  // ctx.stateManager.removeRows([ctx.row]);
                },
              ),
            ],
          );
        },
      ),
    ];

    // Define rows
    final rows = rooms.map((room) {
      return PlutoRow(
        cells: {
          'id': PlutoCell(value: room.roomCode),
          'title': PlutoCell(value: room.title),
          'description': PlutoCell(value: room.description),
          'duration': PlutoCell(value: '${room.duration} Minutes'),
          'openStatus': PlutoCell(value: room.isOpen.toString()),
          'assessmentStatus': PlutoCell(
            value: room.isAssessmentOpen.toString(),
          ),
          'actions': PlutoCell(value: room),
        },
      );
    }).toList();

    final stateManager = PlutoGridStateManager(
      gridFocusNode: FocusNode(),
      scroll: PlutoGridScrollController(),
      columns: columns,
      rows: rows,
      configuration: const PlutoGridConfiguration(),
    );

    return BlocBuilder<RoomBloc, RoomState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => const SizedBox.shrink(),
          loading: () => _LoadingWidget(columns: columns, rows: rows),
          done: (rooms) => _DoneWidget(rooms: rooms, onViewClick: onViewClick),
        );
      },
    );
  }
}

class _MainWidget extends StatelessWidget {
  const _MainWidget({super.key, required this.columns, required this.rows});

  final List<PlutoColumn> columns;
  final List<PlutoRow> rows;

  @override
  Widget build(BuildContext context) {
    return PlutoGrid(
      columns: columns,
      rows: rows,

      onLoaded: (PlutoGridOnLoadedEvent event) {
        event.stateManager.setShowColumnFilter(true);
      },
      configuration: PlutoGridConfiguration(
        // enableColumnDrag: true,
        style: PlutoGridStyleConfig(
          gridBorderRadius: BorderRadius.circular(8.r), // Table border radius
          gridBorderColor: Colors.grey.shade200, // Border color
          gridBackgroundColor: Colors.white, // Background of the whole grid
          // cellColorInEditState:
          //     Colors.blue.shade50, // Background when editing a cell
          // activatedColor: Colors.blue.shade100, // Row highlight color
          columnTextStyle: AppTextStyles.getStyle(
            AppTextStyle.bodySmall,
            modifier: (base) => base.copyWith(fontWeight: FontWeight.bold),
          ),
          cellTextStyle: AppTextStyles.getStyle(
            AppTextStyle.bodySmall,
            modifier: (base) => base.copyWith(),
          ),
          // columnIconColor: Colors.black54,
          menuBackgroundColor: Colors.grey.shade200,
          iconColor: Colors.blueGrey,
          oddRowColor: Colors.grey.shade100, // For zebra striping effect
          evenRowColor: Colors.white,
          borderColor: Colors.grey.shade300,
          rowHeight: 48,
          columnHeight: 50,
          columnFilterHeight: 45,
        ),
        columnSize: const PlutoGridColumnSizeConfig(
          autoSizeMode: PlutoAutoSizeMode.equal,
        ),
      ),
    );
  }
}

class _LoadingWidget extends StatelessWidget {
  const _LoadingWidget({super.key, required this.columns, required this.rows});

  final List<PlutoColumn> columns;
  final List<PlutoRow> rows;

  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      enabled: true,
      child: _MainWidget(columns: columns, rows: rows),
    );
  }
}

class _DoneWidget extends StatelessWidget {
  const _DoneWidget({
    required this.onViewClick,
    required this.rooms,
    super.key,
  });

  final List<RoomModel> rooms;
  final void Function(RoomModel) onViewClick;

  @override
  Widget build(BuildContext context) {
    final columns = <PlutoColumn>[
      PlutoColumn(
        title: 'Room Code',
        field: 'id',
        type: PlutoColumnType.text(),
        width: 100,
        frozen: PlutoColumnFrozen.start,
        enableContextMenu: false,
      ),
      PlutoColumn(
        title: 'Title',
        field: 'title',
        type: PlutoColumnType.text(),
        width: 150,
        enableContextMenu: false,
      ),
      PlutoColumn(
        title: 'Room Description',
        field: 'description',
        type: PlutoColumnType.text(),
        width: 300,
        enableContextMenu: false,
      ),
      PlutoColumn(
        title: 'Duration (In Minutes)',
        field: 'duration',
        type: PlutoColumnType.text(),
        width: 250,
        textAlign: PlutoColumnTextAlign.center,
        enableContextMenu: false,
      ),
      PlutoColumn(
        title: 'Is Open?',
        field: 'openStatus',
        type: PlutoColumnType.text(),
        width: 200,
        textAlign: PlutoColumnTextAlign.center,
        enableContextMenu: false,
      ),
      PlutoColumn(
        title: 'Is Assessment Open?',
        field: 'assessmentStatus',
        type: PlutoColumnType.text(),
        width: 150,
        textAlign: PlutoColumnTextAlign.center,
        enableContextMenu: false,
      ),
      PlutoColumn(
        title: 'Actions',
        field: 'actions',
        type: PlutoColumnType.text(),
        width: 150,
        textAlign: PlutoColumnTextAlign.center,
        enableEditingMode: false,
        enableSorting: false,
        readOnly: true,
        titleTextAlign: PlutoColumnTextAlign.center,
        frozen: PlutoColumnFrozen.end, // pin to the right (optional)
        enableFilterMenuItem: false,
        enableContextMenu: false,
        renderer: (ctx) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                tooltip: 'View',
                padding: EdgeInsets.zero,
                /* constraints: const BoxConstraints.tightFor(
                  width: 36,
                  height: 36,
                ), */
                icon: Image.asset(
                  Assets.icons.png.tableView.path,
                  width: 6.w,
                  color: AppColors.primary,
                ),
                onPressed: () {
                  final room = ctx.row.cells['actions']?.value;

                  onViewClick.call(room);
                },
              ),
              SizedBox(width: 2.w),
              IconButton(
                tooltip: 'Edit',
                padding: EdgeInsets.zero,
                /* constraints: const BoxConstraints.tightFor(
                  width: 36,
                  height: 36,
                ), */
                icon: Image.asset(
                  Assets.icons.png.tableEdit.path,
                  width: 4.w,
                  color: AppColors.orange,
                ),
                onPressed: () {},
              ),
              SizedBox(width: 2.w),
              IconButton(
                tooltip: 'Delete',
                padding: EdgeInsets.zero,
                /* constraints: const BoxConstraints.tightFor(
                  width: 36,
                  height: 36,
                ), */
                icon: Image.asset(
                  Assets.icons.png.tableDelete.path,
                  width: 5.5.w,
                  color: AppColors.red,
                ),
                onPressed: () {
                  // Example: remove row locally, then notify
                  // ctx.stateManager.removeRows([ctx.row]);
                },
              ),
            ],
          );
        },
      ),
    ];

    // Define rows
    final rows = rooms.map((room) {
      return PlutoRow(
        cells: {
          'id': PlutoCell(value: room.roomCode),
          'title': PlutoCell(value: room.title),
          'description': PlutoCell(value: room.description),
          'duration': PlutoCell(value: room.duration),
          'openStatus': PlutoCell(value: room.isOpen.toString()),
          'assessmentStatus': PlutoCell(value: room.isAssessmentOpen),
          'actions': PlutoCell(value: room),
        },
      );
    }).toList();

    final stateManager = PlutoGridStateManager(
      gridFocusNode: FocusNode(),
      scroll: PlutoGridScrollController(),
      columns: columns,
      rows: rows,
      configuration: const PlutoGridConfiguration(),
    );

    return _MainWidget(columns: columns, rows: rows);
  }
}
