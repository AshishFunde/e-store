import 'package:e_store/common/widgets/custom_shapes/container/circular_container.dart';
import 'package:e_store/common/widgets/custom_shapes/curved_edges/curved_edges_widgets.dart';
import 'package:e_store/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class EPrimaryHeaderContainer extends StatelessWidget {
  const EPrimaryHeaderContainer({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ECurvedEdgeWidget(
      child: Container(
        color: EColors.primary,
        padding: const EdgeInsets.all(0),
        child: SizedBox(
          height: 400,
          child: Stack(
            children: [
              /// -- Background Custom Shapes
              Positioned(
                top: -150,
                right: -250,
                child: ECircularContainer(
                  backgroundColor: EColors.textWhite.withValues(alpha: 0.1),
                ),
              ),
              Positioned(
                top: 100,
                right: -300,
                child: ECircularContainer(
                  backgroundColor: EColors.textWhite.withValues(alpha: 0.1),
                ),
              ),
              
              /// -- THIS WAS MISSING: Add the actual content (AppBar/Text) here
              child, 
            ],
          ),
        ),
      ),
    );
  }
}