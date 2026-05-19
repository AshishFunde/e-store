import 'package:e_store/common/widgets/images/e_circular_image.dart';
import 'package:e_store/utils/constants/colors.dart';
import 'package:e_store/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class EUserProfileTile extends StatelessWidget {
  const EUserProfileTile({super.key, this.onPressed});
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ECircularImage(
        image: EImages.user,
        width: 50,
        height: 50,
        padding: 0,
      ),
      title: Text(
        'Coading with me',
        style: Theme.of(
          context,
        ).textTheme.headlineSmall!.apply(color: EColors.white),
      ),
      subtitle: Text(
        'abcd',
        style: Theme.of(
          context,
        ).textTheme.bodyMedium!.apply(color: EColors.white),
      ),
      trailing: IconButton(
        onPressed: onPressed,
        icon: const Icon(Iconsax.edit, color: EColors.white),
      ),
    );
  }
}
