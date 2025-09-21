// import 'package:app_connect_3159/gen/assets.gen.dart';
// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/material.dart';

// import 'custom_rive_animation.dart';

// class CustomCachedImage extends StatelessWidget {
//   const CustomCachedImage({
//     super.key,
//     required this.imagePath,
//     this.height,
//     this.width,
//     this.iconSize,
//     this.fit,
//   });

//   final String? imagePath;
//   final double? height;
//   final double? width;
//   final double? iconSize;
//   final BoxFit? fit;

//   @override
//   Widget build(BuildContext context) {
//     if (imagePath == null || imagePath!.isEmpty) {
//       return Image.asset(
//         Assets.images.logo.path,
//         width: width,
//         height: height,
//         fit: fit ?? BoxFit.contain,
//       );
//     }

//     return CachedNetworkImage(
//       imageUrl: imagePath!,
//       width: width,
//       height: height,
//       fit: fit ?? BoxFit.contain,
//       progressIndicatorBuilder: (context, url, progress) => CustomRiveAnimation(
//         riveAnimationPath: Assets.riveAnimations.circleLoading,
//       ),
//       errorWidget: (context, url, error) => Image.asset(
//         width: width,
//         height: height,
//         Assets.images.logo.path,
//         fit: fit ?? BoxFit.contain,
//       ),
//     );
//   }
// }
