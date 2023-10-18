// ignore_for_file: unused_field

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:storefront_flutter/app/tools/media/helper.dart';
import 'package:storefront_flutter/app/ui/widgets/media/viewer/media_viewer.dart';
import 'package:storefront_flutter/app/ui/widgets/media/viewer/media_viewer_args.dart';
import 'package:storefront_flutter/res/styles/text_styles.dart';
import 'package:storefront_flutter/res/theme/theme_helper.dart';
import 'package:logger/logger.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';
import 'package:storefront_flutter/res/values/gaps.dart';

class MediaViewerModal extends StatefulWidget {
  final String title;

  final MediaViewerArgsRequest mRequestArgs;
  const MediaViewerModal(
      {Key? key,
      required MediaViewerArgsRequest requestArgs,
      this.title = "CommonLoadErrorWidget"})
      : mRequestArgs = requestArgs,
        super(key: key);

  @override
  MediaViewerModalState createState() => MediaViewerModalState();

  // @override
  // Widget build(BuildContext context) {
  //   return Container(child: Text(title));
  // }
}

class MediaViewerModalState extends State<MediaViewerModal> {
  var mLogger = Logger();

  late PageController
      mPageController; // = PageController(initialPage: initialIndex);

  Color _mColorPrimaryHigh = Colors.greenAccent;
  Color _mColorPrimary = Colors.green;

  // late ThemeColorsType themeColors;

  final GlobalKey<ScaffoldState> _mScaffoldKey = GlobalKey<ScaffoldState>();

  Color _mColorOnSurface = Colors.black54;
  Color _mColorBack = Colors.white;

  late int currentIndex;

  @override
  void initState() {
    var args = widget.mRequestArgs;

    if (args.cnsList == null || args.cnsList!.length <= 0) {
      Navigator.of(context).pop();
    }
    var pageIndex =
        args.cnsList?.indexWhere((element) => element == args.cns) ?? 0;
    if (pageIndex < 0) {
      pageIndex = 0;
    }
    currentIndex = pageIndex;

    mPageController = PageController(initialPage: pageIndex);
    super.initState();
  }

  void onPageChanged(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // prepareTheme(context);
    return WillPopScope(
      onWillPop: () {
        mLogger.d("WillPopScopeback press");

        // if (store.isBottomSheetOpen()) {
        //   _closeBottomSheet();
        // }
        // controller.close();

        /*
        TODO
        int state = mBloc.getModalState();
        print("AuthPageState back press $state");
        if (state == PhoneNumberWidget.STATE_DEFAULT) {
          // Navigator.pop(context);
          mBloc.close();
          // return Future.value(true);
        }

        if (state == PhoneNumberWidget.STATE_BOTTOM_SHEET) {
          mBloc.close();
          // this.controller.setModalState(GuestLoginWidget.STATE_DEFAULT);
        }*/
        return Future.value(true);
      },
      child: Scaffold(
        key: _mScaffoldKey,
        backgroundColor: Colors.transparent,
        extendBodyBehindAppBar: true,
        appBar: _widgetAppbar(context),
        body: Container(
          child: MediaViewer(requestArgs: widget.mRequestArgs),
        ),
      ),
    );
  }

//   _widgetContents(BuildContext context) {
//     return Container(
//         child: PhotoViewGallery.builder(
//       scrollPhysics: const BouncingScrollPhysics(),
//       builder: (BuildContext context, int index) {
//         return PhotoViewGalleryPageOptions(
//           imageProvider: NetworkImage(
//               MediaUiHelper.getImage(widget.mRequestArgs.cnsList?[index])),
//           initialScale: PhotoViewComputedScale.contained * 0.8,
//           heroAttributes: PhotoViewHeroAttributes(
//               tag: MediaUiHelper.getImageTag(
//                   widget.mRequestArgs.cnsList?[index], index)),
//         );
//       },
//       itemCount: widget.mRequestArgs.cnsList?.length ?? 0,
//       loadingBuilder: (context, event) => Center(
//         child: Container(
//           width: 20.0,
//           height: 20.0,
//           child: CircularProgressIndicator(
//             value: event == null
//                 ? 0
//                 : event.cumulativeBytesLoaded / (event.expectedTotalBytes ?? 1),
//           ),
//         ),
//       ),
//       backgroundDecoration: BoxDecoration(
//         color: _mColorOnSurface//themeColors.onSurface.withOpacity(0.5)
//       ),
//       pageController: mPageController,
//       onPageChanged: onPageChanged,
//     ));
//   }

  PreferredSizeWidget _widgetAppbar(BuildContext context) {
    // print(_mCollection);

    // inspect(_mCollection);

    // var primaryColor = Theme.of(context).colorScheme

    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      title: Text(
        "",
        textAlign: TextAlign.center,
        overflow: TextOverflow.ellipsis,
        style: JlTextStyles.h5,
      ),
      leading: IconButton(
        icon: const Icon(
          Icons.keyboard_arrow_left_rounded,
        ),
        onPressed: () {
          Modular.to.maybePop();
        },
      ),
      actions: const [JlResGaps.h_32],
    );
  }

// /* *********************************************************************************
//  *                                      theme
//  */

//   prepareTheme(BuildContext context) {
//     // _mColorPrimaryHigh = TbThemeHelper.colorBlend(context, TbThemeColor.surface,
//     //     TbThemeColor.primary, TbColorEmphasize.high);
//     // _mColorPrimary = Theme.of(context).colorScheme.primary;

//     // themeColors = TbThemeHelper.prepareThemeColors(context);

//     // _mColorBack = TbThemeHelper.color(
//     //     context, TbThemeColor.background, TbColorEmphasize.original);

//     // mLogger.d("prepareTheme: $themeColors.surface");
//   }
}
