import 'package:edutainstem/styles/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTable extends StatelessWidget {
  final int columns;
  final List<String> data;
  final double cellPadding;
  final TextStyle? textStyle;
  final double borderRadius;

  const AppTable({
    super.key,
    required this.columns,
    required this.data,
    this.cellPadding = 12.0,
    this.textStyle,
    this.borderRadius = 12.0,
  });

  @override
  Widget build(BuildContext context) {
    if (columns <= 0) return const SizedBox();

    // Build rows
    final List<TableRow> rows = [];
    for (int i = 0; i < data.length; i += columns) {
      final rowCells = <Widget>[];

      for (int j = 0; j < columns; j++) {
        final index = i + j;
        rowCells.add(
          Padding(
            padding: EdgeInsets.all(cellPadding),
            child: Text(
              index < data.length ? data[index] : '',
              style:
                  textStyle ??
                  AppTextStyles.getStyle(
                    AppTextStyle.bodySmall,
                    modifier: (base) => base.copyWith(
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.3.sp,
                    ),
                  ),
              textAlign: TextAlign.center,
            ),
          ),
        );
      }

      rows.add(TableRow(children: rowCells));
    }

    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 1.5),
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: Table(
          border: const TableBorder.symmetric(
            inside: BorderSide(
              color: Colors.black,
              width: 1.2,
            ), // inner borders
          ),
          children: rows,
        ),
      ),
    );
  }
}
