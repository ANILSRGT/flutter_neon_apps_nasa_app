part of '../mars_page_imports.dart';

class _MarsPageEarthDatePicker extends StatelessWidget {
  const _MarsPageEarthDatePicker({required this.viewModel});

  final MarsPageViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return CustomInputField(
          controller: viewModel.earthDateController,
          hint: 'Earth Date',
          keyboardType: TextInputType.datetime,
          textInputAction: TextInputAction.done,
          readOnly: true,
          onTap: () async {
            final date = await showDatePicker(
              context: context,
              initialDate: viewModel.selectedEarthDate,
              firstDate: DateTime(2012, 8, 6),
              lastDate: DateTime.now().subtract(const Duration(days: 1)),
            );

            if (date != null) {
              viewModel.setSelectedEarthDate(date);
            }
          },
        );
      },
    );
  }
}
