

class MediaConstants {
  static const _Type TYPES = const _Type();
  static const _PlatformType PLATFORM_TYPE = const _PlatformType();
  static const _Purpose PURPOSE = const _Purpose();
  static const _Location LOCATION = _Location();
  // static const _Imagekit IMAGEKIT = const _Imagekit();
  // static const _Cloudinary CLOUNDINARY = const _Cloudinary();
}

class _Type {
  const _Type();

  final int image = 1;
  final int video = 2;
}

class _PlatformType {
  const _PlatformType();

  final int web = 1;
  final int android = 2;
}

class _Purpose {
  const _Purpose();

  final int taleImage = 0x1;
  final int commentImage = 0x2;
  final int taleVideo = 0x10;

  // taleImage: 0x1,
  // commentImage: 0x2,
  // // imageImage: 0x3,
  // taleVideo: 0x10,
}


class _Location {
  const _Location();

  final int others = 0x00;
  final int avatar = 0x1;
  final int communeImage = 0x2;
  final int chat = 0x10;
  // final int chatVideo = 0x10;

  // taleImage: 0x1,
  // commentImage: 0x2,
  // // imageImage: 0x3,
  // taleVideo: 0x10,
}

// class _Imagekit {
//   const _Imagekit();

//   String folder(int location) {
//     if (location == MediaConstants.LOCATION.communeImage) {
//       return "${F.imagekitRootFolder}/communes/images";
//     } else if (location == MediaConstants.LOCATION.avatar) {
//       return "${F.imagekitRootFolder}/profile/images";
//     } else if (location == MediaConstants.LOCATION.chat) {
//       return "${F.imagekitRootFolder}/chat";
//     }
//     return "${F.imagekitRootFolder}/others";;
//   }
// }



// class _Cloudinary {
//   const _Cloudinary();

//   String resourseType(int mediaType) {
//     if (mediaType == MediaConstants.TYPES.image) {
//       return "image";
//     } else if (mediaType == MediaConstants.TYPES.video) {
//       return "video";
//     }
//     return "";
//   }
// }
