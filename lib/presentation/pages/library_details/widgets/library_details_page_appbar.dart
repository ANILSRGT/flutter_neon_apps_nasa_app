part of '../library_details_page_imports.dart';

class _LibraryDetailsPageAppbar extends StatefulWidget {
  const _LibraryDetailsPageAppbar({required this.libraryItem});

  final NasaLibraryItemModel libraryItem;

  @override
  State<_LibraryDetailsPageAppbar> createState() =>
      _LibraryDetailsPageAppbarState();
}

class _LibraryDetailsPageAppbarState extends State<_LibraryDetailsPageAppbar> {
  bool _isDownloading = false;

  Future<void> _downloadFile() async {
    setState(() => _isDownloading = true);
    await ImageSaver.I.downloadFile(
      url: widget.libraryItem.mediaUrl,
      callback: (href) {
        showToast('Downloaded to $href', position: ToastPosition.bottom);
        setState(() => _isDownloading = false);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final isFavorite = context.watch<NasaFavoriteLibraryNotifier>().isFavorite(
      widget.libraryItem.data?.nasaId ?? '',
    );
    return Row(
      spacing: AppDoubleValues.md.value,
      children: [
        if (context.router.canPop()) const BackButton(),
        const Spacer(),
        IconButton(
          onPressed: _isDownloading ? null : _downloadFile,
          icon:
              _isDownloading
                  ? const SizedBox.square(dimension: 42, child: AppIndicator())
                  : const Icon(Icons.download_rounded),
        ),
        IconButton(
          onPressed:
              () => context.read<NasaFavoriteLibraryNotifier>().toggleFavorite(
                widget.libraryItem,
              ),
          icon: Icon(
            isFavorite ? Icons.favorite_rounded : Icons.favorite_border_rounded,
            color:
                isFavorite
                    ? context.appThemeExt.appColors.error
                        .byBrightness(context.extTheme.isDark)
                        .value
                    : context.appThemeExt.appColors.grey.value,
          ),
        ),
      ],
    );
  }
}
