import 'package:edutainstem/styles/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:pluto_grid/pluto_grid.dart';

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
  final List<Room> rooms = [
    Room(
      id: 'R001',
      name: 'Math 101',
      description: 'Introductory algebra and calculations.',
      tags: ['Math', 'Algebra', 'Sample'],
      studentsJoined: 24,
      selectedLesson: 'Lesson 3: Linear Equations',
    ),
    Room(
      id: 'R002',
      name: 'History 201',
      description: 'World War II in-depth overview.',
      tags: ['WWII', '20th century', 'history'],
      studentsJoined: 18,
      selectedLesson: 'Lesson 5: The Home Front',
    ),
    // Add more rooms as needed...
  ];

  RoomTableWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // Define columns
    final columns = <PlutoColumn>[
      PlutoColumn(
        title: 'Room ID',
        field: 'id',
        type: PlutoColumnType.text(),
        width: 100,
        frozen: PlutoColumnFrozen.start,
      ),
      PlutoColumn(
        title: 'Room Name',
        field: 'name',
        type: PlutoColumnType.text(),
        width: 150,
      ),
      PlutoColumn(
        title: 'Room Description',
        field: 'description',
        type: PlutoColumnType.text(),
        width: 300,
      ),
      PlutoColumn(
        title: 'Tags',
        field: 'tags',
        type: PlutoColumnType.text(),
        width: 200,
      ),
      PlutoColumn(
        title: 'Students Joined',
        field: 'studentsJoined',
        type: PlutoColumnType.number(),
        width: 150,
        textAlign: PlutoColumnTextAlign.right,
      ),
      PlutoColumn(
        title: 'Selected Lesson',
        field: 'selectedLesson',
        type: PlutoColumnType.text(),
        width: 250,
      ),
    ];

    // Define rows
    final rows = rooms.map((room) {
      return PlutoRow(
        cells: {
          'id': PlutoCell(value: room.id),
          'name': PlutoCell(value: room.name),
          'description': PlutoCell(value: room.description),
          'tags': PlutoCell(value: room.tags.join(', ')),
          'studentsJoined': PlutoCell(value: room.studentsJoined),
          'selectedLesson': PlutoCell(value: room.selectedLesson),
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

    return PlutoGrid(
      columns: columns,
      rows: rows,

      onLoaded: (PlutoGridOnLoadedEvent event) {
        event.stateManager.setShowColumnFilter(true);
      },
      configuration: PlutoGridConfiguration(
        // enableColumnDrag: true,
        style: PlutoGridStyleConfig(
          gridBorderRadius: BorderRadius.circular(12), // Table border radius
          gridBorderColor: Colors.grey.shade300, // Border color
          gridBackgroundColor: Colors.white, // Background of the whole grid
          cellColorInEditState:
              Colors.blue.shade50, // Background when editing a cell
          activatedColor: Colors.blue.shade100, // Row highlight color
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
