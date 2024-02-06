import 'package:al3yadah_app/core/helpers/dimensions.dart';
import 'package:flutter/cupertino.dart';

import '../core/helpers/app_colors.dart';
import '../core/helpers/utils.dart';
import 'app_text.dart';

class MessageBubble extends StatelessWidget {
  const MessageBubble({
    Key? key,
    required this.isMe,
    required this.message,
  }) : super(key: key);

  final bool isMe;
  final String message;

  CrossAxisAlignment get _crossAxisAlignment {
    if (Utils.isAR) {
      return isMe ? CrossAxisAlignment.start : CrossAxisAlignment.end;
    }
    return isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start;
  }

  BorderRadius get _borderRadius {
    final radius = Radius.circular(24);
    final zeroRadius = Radius.zero;
    if (Utils.isAR) {
      return BorderRadius.only(
        topLeft: isMe ? radius : zeroRadius,
        topRight: isMe ? zeroRadius : radius,
        bottomLeft: radius,
        bottomRight: radius,
      );
    }
    return BorderRadius.only(
      topLeft: isMe ? zeroRadius : radius,
      topRight: isMe ? radius : zeroRadius,
      bottomLeft: radius,
      bottomRight: radius,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: _crossAxisAlignment,
      children: [
        UnconstrainedBox(
          child: Container(
            margin: EdgeInsets.only(top: 12),
            padding: EdgeInsets.symmetric(
              vertical: 16.height,
              horizontal: 12.width,
            ),
            constraints: BoxConstraints(
              minWidth: 1,
              maxWidth: MediaQuery.of(context).size.width / 1.3,
            ),
            child: AppText(
              title: message,
              color: AppColors.black,
            ),
            decoration: BoxDecoration(
              color: (isMe ? AppColors.primary : AppColors.lightGray)
                  .withOpacity(0.5),
              borderRadius: _borderRadius,
            ),
          ),
        ),
        // SizedBox(height: 8.height),
        // AppText(
        //   title: '2:55 PM',
        //   color: AppColors.darkGray,
        //   fontSize: 12,
        // ),
      ],
    );
  }
}
