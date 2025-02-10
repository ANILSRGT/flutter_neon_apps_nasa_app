enum NasaRoverCameraTypes {
  none(displayName: 'All', name: ''),
  fhaz(displayName: 'Front Hazard Avoidance Camera', name: 'fhaz'),
  rhaz(displayName: 'Rear Hazard Avoidance Camera', name: 'rhaz'),
  mast(displayName: 'Mast Camera', name: 'mast'),
  chemcam(displayName: 'Chemistry and Camera Complex', name: 'chemcam'),
  mahli(displayName: 'Mars Hand Lens Imager', name: 'mahli'),
  mardi(displayName: 'Mars Descent Imager', name: 'mardi'),
  navcam(displayName: 'Navigation Camera', name: 'navcam'),
  pancam(displayName: 'Panoramic Camera', name: 'pancam'),
  minite(
      displayName: 'Miniature Thermal Emission Spectrometer (Mini-TES)',
      name: 'minite');

  const NasaRoverCameraTypes({required this.displayName, required this.name});

  final String displayName;
  final String name;
}
