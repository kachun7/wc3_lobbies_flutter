/// Image utility
class ImageUtil {
  static const _imageBaseUrl = 'http://wc3maps.com/static/media/';

  static const placeHolderUrl = 'assets/images/no_preview.png';

  /// headers for API to fetch lobby data
  static const statsHeaders = {'Referer': 'http://wc3maps.com/live'};

  static const Map<String, String> _avatarFileNames = {
    'p001': 'p001.22a7a285.png',
    'p002': 'p002.ff81875d.png',
    'p003': 'p003.49df48b5png',
    'p004': 'p004.3e50ddc9.png',
    'p005': 'p005.bbe18f53.png',
    'p006': 'p006.eb61d40b.png',
    'p007': 'p007.8b978d57.png',
    'p008': 'p008.0085a5ec.png',
    'p009': 'p009.fc57aedf.png',
    'p010': 'p010.92cb5402.png',
    'p011': 'p011.0dd14afe.png',
    'p012': 'p012.fab29b9b.png',
    'p013': 'p013.56adeff7.png',
    'p014': 'p014.816d2610.png',
    'p015': 'p015.ca0361f9.png',
    'p016': 'p016.e50987a7.png',
    'p017': 'p017.dee2ddc5.png',
    'p018': 'p018.d212f128.png',
    'p019': 'p019.e31fc0a6.png',
    'p020': 'p020.e13ddd04.png',
    'p021': 'p021.2d9b0c53.png',
    'p022': 'p022.f54ef2e3.png',
    'p023': 'p023.48d926fe.png',
    'p024': 'p024.a19ea603.png',
    'p025': 'p025.cc4e8fdc.png',
    'p026': 'p026.7b052a13.png',
    'p027': 'p027.a9a9cb08.png',
    'p028': 'p028.e936493e.png',
    'p029': 'p029.305638d1.png',
    'p030': 'p030.1ccaa1c3.png',
    'p031': 'p031.0cdf2249.png',
    'p032': 'p032.f97df1a2.png',
    'p033': 'p033.7bd7ea38.png',
    'p034': 'p034.e40eb7b8.png',
    'p035': 'p035.2a69ded5.png',
    'p036': 'p036.ab266ffb.png',
    'p037': 'p037.3d6c90bd.png',
    'p038': 'p038.aee63807.png',
    'p039': 'p039.abc15b87.png',
    'p040': 'p040.3b48f27f.png',
    'p041': 'p041.56ab2ee9.png',
    'p042': 'p042.d5f4235d.png',
    'p043': 'p043.97a7b583.png',
    'p044': 'p044.ecc4e8cd.png',
    'p045': 'p045.3827448e.png',
    'p046': 'p046.420db4cf.png',
    'p047': 'p047.222f2839.png',
    'p048': 'p048.f0d883d7.png',
    'p049': 'p049.08d82246.png',
    'p050': 'p050.5343a8a0.png',
    'p051': 'p051.7cdbc15b.png',
    'p052': 'p052.0171565e.png',
    'p053': 'p053.4e79d5f7.png',
    'p054': 'p054.edfd867b.png',
    'p055': 'p055.2aa326bb.png',
    'p056': 'p056.84fd1a2f.png',
    'p057': 'p057.8cdd9394.png',
    'p058': 'p058.22a1936e.png',
    'p059': 'p059.5818e65f.png',
    'p060': 'p060.d6a5c2aa.png',
    'p061': 'p061.7f7728c2.png',
    'p062': 'p062.03262fe0.png',
  };

  /// get avatar image url from [key]
  static String getAvatarImageUrl(String key) {
    final String fileName = _avatarFileNames[key] ?? 'p027.a9a9cb08.png';
    return '$_imageBaseUrl$fileName';
  }
}
