import 'package:flutter/material.dart';

class ProfileCircularImage extends StatelessWidget {
  final String image;
  const ProfileCircularImage({
    Key key,
    @required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          alignment: Alignment.center,
          width: double.infinity,
          child: CircleAvatar(
            radius: 57,
            backgroundColor: Color(0xfff2f2f2),
            child: CircleAvatar(
              radius: 54,
              backgroundImage: AssetImage(
                image,
              ),
            ),
          ),
        ),
        Positioned(
          top: 55,
          left: size.width * .571,
          child: Container(
            height: size.height * .1,
            child: CircleAvatar(
              radius: 19,
              backgroundColor: Color(0xfff2f2f2),
              child: CircleAvatar(
                radius: 17,
                backgroundColor: Theme.of(context).primaryColor,
                child: IconButton(
                  icon: Icon(
                    Icons.camera_alt_rounded,
                    size: 18,
                    color: Colors.white.withOpacity(.8),
                  ),
                  onPressed: () {},
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
