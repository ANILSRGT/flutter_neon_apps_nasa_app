part of '../library_details_page_imports.dart';

class _LibraryDetailsPageDataItem extends StatelessWidget {
  const _LibraryDetailsPageDataItem({required this.item});

  final NasaLibraryItemDataModel item;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TitleText(title: item.title ?? 'N/A'),
        LabelText(title: item.photographer ?? 'N/A'),
        AppDoubleValues.lg.extSizedbox.height,
        SubtitleText(title: item.description ?? 'N/A', indent: 4),
        AppDoubleValues.md.extSizedbox.height,
        if (item.keywords?.isEmpty == false)
          Wrap(
            spacing: AppDoubleValues.md.value,
            children: item.keywords!.map((e) => Chip(label: Text(e))).toList(),
          ),
        AppDoubleValues.lg.extSizedbox.height,
        LabelText(title: item.location ?? 'N/A', textAlign: TextAlign.end),
        LabelText(
          title:
              item.dateCreated != null
                  ? DateFormat('dd/MM/yyyy').format(item.dateCreated!)
                  : 'N/A',
          textAlign: TextAlign.end,
        ),
      ],
    );
  }
}
