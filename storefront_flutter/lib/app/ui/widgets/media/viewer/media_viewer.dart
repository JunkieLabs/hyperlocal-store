// ignore_for_file: unused_field

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:storefront_flutter/app/tools/media/helper.dart';
import 'package:storefront_flutter/app/types/cns_type.dart';
import 'package:storefront_flutter/app/ui/widgets/media/viewer/media_viewer_args.dart';

import 'package:logger/logger.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';
import 'package:storefront_flutter/res/values/colors.dart';
import 'package:storefront_flutter/res/values/dimens.dart';

class MediaViewer extends StatefulWidget {
  final String title;

  final MediaViewerArgsRequest mRequestArgs;
  const MediaViewer(
      {Key? key,
      required MediaViewerArgsRequest requestArgs,
      this.title = "CommonLoadErrorWidget"})
      : mRequestArgs = requestArgs,
        super(key: key);

  @override
  MediaViewerState createState() => MediaViewerState();

  // @override
  // Widget build(BuildContext context) {
  //   return Container(child: Text(title));
  // }
}

class MediaViewerState extends State<MediaViewer> {
  var mLogger = Logger();

  late PageController
      mPageController; // = PageController(initialPage: initialIndex);

  Color _mColorPrimaryHigh = Colors.greenAccent;
  Color _mColorPrimary = Colors.green;

  // late ThemeColorsType themeColors;

  // final GlobalKey<ScaffoldState> _mScaffoldKey = GlobalKey<ScaffoldState>();

  Color _mColorOnSurface = Colors.transparent;
  Color _mColorBack = Colors.white;

  late int currentIndex;

  bool isEmpty = false;

  @override
  void initState() {
    var args = widget.mRequestArgs;
    mLogger.d("cnsList:  sdsd");
    isEmpty = false;
    if (args.cnsList == null || args.cnsList!.length <= 0) {
      isEmpty = true;

      mLogger.d("cnsList: ${args.cnsList}");

      // Navigator.of(context).pop();
    }
    var pageIndex =
        args.cnsList?.indexWhere((element) => element == args.cns) ?? -1;
    if (pageIndex < 0) {
      pageIndex = 0;
    }
    currentIndex = pageIndex;

    mPageController = PageController(initialPage: pageIndex);

    super.initState();

    if (isEmpty) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        Navigator.of(context).pop();
      });

      // Modular.to.pop();
    }
  }

  void onPageChanged(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    prepareTheme(context);

    mLogger.d("isEmpty: ${isEmpty}");
    return _widgetContents(context);
  }

  _widgetContents(BuildContext context) {
    return Container(
        child: isEmpty
            ? SizedBox.shrink()
            : Column(children: [
                Flexible(
                  flex: 1,
                  child: PhotoViewGallery.builder(
                    scrollPhysics: const BouncingScrollPhysics(),
                    builder: (BuildContext context, int index) {
                      var image = MediaUiHelper.getImage(
                          widget.mRequestArgs.cnsList?[index]);
                      ImageProvider imageWidget;
                      if (image != null) {
                        imageWidget = NetworkImage(image);
                      } else {
                        imageWidget = AssetImage(
                            widget.mRequestArgs.cnsList?[index].assetPath ??
                                "");
                      }
                      return PhotoViewGalleryPageOptions(
                        imageProvider: imageWidget,
                        initialScale: PhotoViewComputedScale.contained * 0.8,
                        heroAttributes: PhotoViewHeroAttributes(
                            tag: MediaUiHelper.getImageTag(
                                widget.mRequestArgs.cnsList?[index], index)),
                      );
                    },
                    itemCount: widget.mRequestArgs.cnsList?.length ?? 0,
                    loadingBuilder: (context, event) => Center(
                      child: Container(
                        width: 20.0,
                        height: 20.0,
                        child: CircularProgressIndicator(
                          value: event == null
                              ? 0
                              : event.cumulativeBytesLoaded /
                                  (event.expectedTotalBytes ?? 1),
                        ),
                      ),
                    ),
                    backgroundDecoration: BoxDecoration(
                        color:
                            _mColorOnSurface //themeColors.onSurface.withOpacity(0.5)
                        ),
                    pageController: mPageController,
                    onPageChanged: onPageChanged,
                  ),
                ),
                _widgetImageIndicators()
              ]));
  }

  _widgetImageIndicators() {
    return Container(
        child: Wrap(
          spacing: JlResDimens.dp_16,
      runSpacing: JlResDimens.dp_16,
      alignment: WrapAlignment.start,
      direction: Axis.horizontal,
      children: widget.mRequestArgs.cnsList
              ?.asMap()
              .entries
              .map((e) =>
                  _widgetImageIndicator(e.key, e.key == currentIndex, e.value))
              .toList() ??
          [],
    ));
  }

  Widget _widgetImageIndicator(int index, bool isSelected, CnsType cnsType) {
    var image = MediaUiHelper.getImage(cnsType);
    ImageProvider imageWidget;
    if (image != null) {
      imageWidget = NetworkImage(image);
    } else {
      imageWidget = AssetImage(cnsType.assetPath ?? "");
    }

    return InkWell(
        onTapUp: (details) => {mPageController.jumpToPage(index)},
        child: Container(
          width: 72,
          height: 72,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            border: isSelected ? Border.all(color: Colors.black38) : null,
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
                image: imageWidget,
                fit: BoxFit.fitWidth,
                alignment: Alignment.center),
          ),
        ));
  }

/* *********************************************************************************
 *                                      theme
 */

  prepareTheme(BuildContext context) {
    // _mColorPrimaryHigh = TbThemeHelper.colorBlend(context, TbThemeColor.surface,
    //     TbThemeColor.primary, TbColorEmphasize.high);
    // _mColorPrimary = Theme.of(context).colorScheme.primary;

    // themeColors = TbThemeHelper.prepareThemeColors(context);

    // _mColorBack = TbThemeHelper.color(
    //     context, TbThemeColor.background, TbColorEmphasize.original);

    // mLogger.d("prepareTheme: $themeColors.surface");
  }
}
