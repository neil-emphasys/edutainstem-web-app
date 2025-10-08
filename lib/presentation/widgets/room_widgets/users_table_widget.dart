import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:edutainstem/application/accounts/accounts_bloc/accounts_bloc.dart';
import 'package:edutainstem/application/accounts/switch_cubit/switch_cubit.dart';
import 'package:edutainstem/core/components/app_switch.dart';
import 'package:edutainstem/core/helpers/string_helpers.dart';
import 'package:edutainstem/domain/models/auth/auth_model.dart';
import 'package:edutainstem/styles/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pluto_grid/pluto_grid.dart';
import 'package:skeletonizer/skeletonizer.dart';

class UsersTableWidget extends StatelessWidget {
  final List<UserModel> users = [UserModel.initial(), UserModel.initial()];

  UsersTableWidget({/* required this.onViewClick, */ super.key});

  // final void Function(UserModel) onViewClick;

  @override
  Widget build(BuildContext context) {
    // Define columns
    final columns = <PlutoColumn>[
      PlutoColumn(
        title: 'Email',
        field: 'email',
        type: PlutoColumnType.text(),
        width: 100,
        frozen: PlutoColumnFrozen.start,
        textAlign: PlutoColumnTextAlign.center,
      ),
      PlutoColumn(
        title: 'Name',
        field: 'name',
        type: PlutoColumnType.text(),
        width: 150,
        textAlign: PlutoColumnTextAlign.center,
      ),
      PlutoColumn(
        title: 'Is Admin?',
        field: 'isAdmin',
        type: PlutoColumnType.text(),
        width: 300,
        textAlign: PlutoColumnTextAlign.center,
      ),
      PlutoColumn(
        title: 'is Enabled?',
        field: 'isEnabled',
        type: PlutoColumnType.text(),
        width: 250,
        textAlign: PlutoColumnTextAlign.center,
      ),
      PlutoColumn(
        title: 'Preferred Language',
        field: 'preferredLanguage',
        type: PlutoColumnType.text(),
        width: 200,
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
          return AnimatedToggleSwitch<bool>.rolling(
            current: false,
            values: const [false, true],
            // onChanged: (i) => setState(() => value = i),
            // iconBuilder: iconBuilder,
            // iconList: [...], you can use iconBuilder, customIconBuilder or iconList
            // style: ToggleStyle(...), // optional style settings
            // ... // many more parameters available
          );
        },
      ),
    ];

    // Define rows
    final rows = users.map((user) {
      return PlutoRow(
        cells: {
          'email': PlutoCell(value: user.email),
          'name': PlutoCell(value: '${user.firstName} ${user.lastName}'),
          'isAdmin': PlutoCell(value: user.isAdmin),
          'isEnabled': PlutoCell(value: user.enabled),
          'preferredLanguage': PlutoCell(value: user.preferredLanguage.name),
          'actions': PlutoCell(value: user),
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

    return BlocBuilder<AccountsBloc, AccountsState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => const SizedBox.shrink(),
          loading: () => _LoadingWidget(columns: columns, rows: rows),
          done: (rooms) => _DoneWidget(users: rooms, onViewClick: (user) {}),
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
    required this.users,
    super.key,
  });

  final List<UserModel> users;
  final void Function(UserModel) onViewClick;

  @override
  Widget build(BuildContext context) {
    final columns = <PlutoColumn>[
      PlutoColumn(
        title: 'Email',
        field: 'email',
        type: PlutoColumnType.text(),
        width: 100,
        frozen: PlutoColumnFrozen.start,
        textAlign: PlutoColumnTextAlign.center,
      ),
      PlutoColumn(
        title: 'Name',
        field: 'name',
        type: PlutoColumnType.text(),
        width: 150,
        textAlign: PlutoColumnTextAlign.center,
      ),
      PlutoColumn(
        title: 'Is Admin?',
        field: 'isAdmin',
        type: PlutoColumnType.text(),
        width: 300,
        textAlign: PlutoColumnTextAlign.center,
      ),
      PlutoColumn(
        title: 'is Enabled?',
        field: 'isEnabled',
        type: PlutoColumnType.text(),
        width: 250,
        textAlign: PlutoColumnTextAlign.center,
        renderer: (ctx) {
          final cubit = ctx.row.cells['actions']!.value as SwitchCubit;

          return BlocBuilder<SwitchCubit, SwitchState>(
            bloc: cubit, // <-- important: use the row's cubit
            buildWhen: (prev, curr) =>
                curr.maybeWhen(orElse: () => false, initial: (current) => true),
            builder: (context, state) {
              final current = state.maybeWhen(
                initial: (c) => c,
                orElse: () => false,
              );

              return Text(
                current.toString().capitalize(),
                textAlign: TextAlign.center,
                style: AppTextStyles.getStyle(
                  AppTextStyle.bodySmall,
                  modifier: (base) => base.copyWith(),
                ),
              );
            },
          );
        },
      ),
      PlutoColumn(
        title: 'Preferred Language',
        field: 'preferredLanguage',
        type: PlutoColumnType.text(),
        width: 200,
        textAlign: PlutoColumnTextAlign.center,
      ),
      PlutoColumn(
        title: 'Enable?',
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
          final cubit = ctx.row.cells['actions']!.value as SwitchCubit;

          return BlocBuilder<SwitchCubit, SwitchState>(
            bloc: cubit, // <-- important: use the row's cubit
            buildWhen: (prev, curr) => prev != curr,
            builder: (context, state) {
              final current = state.maybeWhen(
                initial: (c) => c,
                orElse: () => false,
              );
              final loading = state.maybeWhen(
                loading: () => true,
                orElse: () => false,
              );

              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  AppSwitch(
                    currentValue: current,
                    isLoading: loading,
                    onChanged: loading
                        ? null
                        : (v) => cubit.changeStatus(v), // update the cubit
                  ),
                ],
              );
            },
          );
        },
      ),
    ];

    // Define rows
    final rows = users.map((user) {
      final cubit = SwitchCubit();

      return PlutoRow(
        cells: {
          'email': PlutoCell(value: user.email),
          'name': PlutoCell(value: '${user.firstName} ${user.lastName}'),
          'isAdmin': PlutoCell(value: user.isAdmin.toString().capitalize()),
          'isEnabled': PlutoCell(value: user.enabled.toString().capitalize()),
          // 'isEnabled': PlutoCell(value: cubit),
          'preferredLanguage': PlutoCell(
            value: user.preferredLanguage.name.toString().capitalize(),
          ),
          'actions': PlutoCell(value: cubit),
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
