enum NasaLibraryMediaTypes {
  image(displayName: 'Image', value: 'image'),
  video(displayName: 'Video', value: 'video');

  const NasaLibraryMediaTypes({
    required this.displayName,
    required this.value,
  });

  final String displayName;
  final String value;
}
