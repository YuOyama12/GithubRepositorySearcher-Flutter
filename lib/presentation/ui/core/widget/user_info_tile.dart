import 'package:flutter/cupertino.dart';

import '../../../../domain/entity/response/user_response/user_response.dart';
import '../../../const/strings.dart';
import 'avatar_icon.dart';

class UserInfoTile extends StatelessWidget {
  const UserInfoTile({super.key, required this.userResponse});

  final UserResponse userResponse;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            AvatarIcon(avatarUrl: userResponse.avatarUrl),
            SizedBox(width: 24.0),
            Expanded(
              child: Text(
                userResponse.login,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
            ),
          ],
        ),
        SizedBox(height: 8.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(StringConsts.followingCount(userResponse.following)),
            SizedBox(width: 8.0),
            Text(StringConsts.followersCount(userResponse.followers)),
          ],
        ),
      ],
    );
  }
}
