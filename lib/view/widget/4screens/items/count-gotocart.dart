import 'package:flutter/material.dart';

class CustomCountAndGoToCart extends StatelessWidget {
  final void Function() addPressed;
  final void Function() removePressed;
  final String count;
  final void Function() goToCartPressed;

  const CustomCountAndGoToCart(
      {super.key,
      required this.addPressed,
      required this.removePressed,
      required this.goToCartPressed,
      required this.count});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey[200]),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 1, vertical: 5),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  //  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton.filled(
                        color: Colors.red,
                        //  splashColor: Colors.red,
                        highlightColor: Colors.red,
                        onPressed: removePressed,
                        icon: const Icon(
                          Icons.remove,
                          color: Colors.amber,
                        )),
                    const SizedBox(
                      width: 7,
                    ),
                    Text(count),
                    const SizedBox(
                      width: 7,
                    ),
                    IconButton.filledTonal(
                        color: Colors.black,
                        highlightColor: Colors.cyan,
                        onPressed: addPressed,
                        icon: const Icon(
                          Icons.add,
                          // color: Colors.amber,
                        )),
                  ]),
            ),
          ),

          //const Spacer(),
          const SizedBox(
            width: 30,
          ),
          Expanded(
            child: MaterialButton(
              color: Colors.amber,
              height: 50,
              minWidth: double.infinity,
              onPressed: goToCartPressed,
              child: const Text(
                "Add To Cart",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
