enum NasaMediaTypes {
  image(displayName: 'Image', value: 'image'),
  video(displayName: 'Video', value: 'video');

  const NasaMediaTypes({required this.displayName, required this.value});

  final String displayName;
  final String value;

  static NasaMediaTypes? fromString(String value) {
    if (value.toLowerCase() == NasaMediaTypes.image.value) {
      return NasaMediaTypes.image;
    }
    if (value.toLowerCase() == NasaMediaTypes.video.value) {
      return NasaMediaTypes.video;
    }
    return null;
  }
}
