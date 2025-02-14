part of '../apod_details_page_imports.dart';

class _ApodDetailsPageDataItem extends StatelessWidget {
  const _ApodDetailsPageDataItem({required this.item});

  final NasaApodModel item;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TitleText(title: item.title ?? 'N/A'),
        AppDoubleValues.lg.extSizedbox.height,
        SubtitleText(title: item.explanation ?? 'N/A', indent: 4),
        AppDoubleValues.lg.extSizedbox.height,
        LabelText(
          title: item.date != null ? item.date! : 'N/A',
          textAlign: TextAlign.end,
        ),
      ],
    );
  }
}
