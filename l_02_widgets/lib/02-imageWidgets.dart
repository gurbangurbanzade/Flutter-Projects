import 'package:flutter/material.dart';

class ImageExample extends StatelessWidget {
  const ImageExample({super.key});

  @override
  Widget build(BuildContext context) {
    String _imgUrl =
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSPWrn_-YAZMu1CuqmCc_j_fXld67vRUgYOjw&usqp=CAU";

    return Center(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                    color: Colors.blue,
                    child: Image.asset(
                      "assets/images/Profile.png",
                      fit: BoxFit.cover,
                    )),
              ),
              Expanded(
                child: Container(
                    color: Colors.blue,
                    child: Image.network(
                      _imgUrl,
                      fit: BoxFit.cover,
                    )),
              ),
              Expanded(
                child: Container(
                    color: Colors.red,
                    // width: 100,
                    // height: 100,
                    child: CircleAvatar(
                      child: Text(
                        "G",
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                      foregroundColor: Colors.yellow,
                      radius: 80,
                    )),
              )
            ],
          ),
          Container(
            height: 300,
            child: FadeInImage.assetNetwork(
                fit: BoxFit.cover,
                placeholder:
                    "assets/images/86c025297e8b557da4522d2b48cd1757.gif",
                image: _imgUrl),
          )
        ],
      ),
    );
  }
}
