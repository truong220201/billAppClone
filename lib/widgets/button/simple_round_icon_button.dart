import 'package:flutter/material.dart';

class SimpleRoundIconButton extends StatelessWidget {
  final Color backgroundColor;
  final Text buttonText;
  final Icon icon;
  final Color? iconColor;
  final Alignment iconAlignment;
  final Function? onPressed;

  const SimpleRoundIconButton(
      {super.key,
      this.backgroundColor = Colors.redAccent,
      this.buttonText = const Text("REQUIRED TEXT"),
      this.icon = const Icon(Icons.email),
      this.iconColor,
      this.iconAlignment = Alignment.centerLeft,
      this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(top: 10.0),
      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(
            width: double.infinity,
            child: TextButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0))),
                overlayColor: MaterialStateProperty.all(backgroundColor),
                backgroundColor: MaterialStateProperty.all(backgroundColor),
              ),
              child: Row(
                children: <Widget>[
                  iconAlignment == Alignment.centerLeft
                      ? Transform.translate(
                          offset: const Offset(-5.0, 0.0),
                          child: Container(
                            padding: const EdgeInsets.all(0.0),
                            child: TextButton(
                              style: ButtonStyle(
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(28.0)),
                              )),
                              child: Icon(
                                icon.icon,
                                color: iconColor ?? backgroundColor,
                              ),
                              onPressed: () => {},
                            ),
                          ),
                        )
                      : Container(),
                  iconAlignment == Alignment.centerLeft
                      ? Container()
                      : Container(),
                  Padding(
                    padding: const EdgeInsets.only(left: 50.0, right: 10.0),
                    child: buttonText,
                  ),
                  iconAlignment == Alignment.centerRight
                      ? Container()
                      : Container(),
                  iconAlignment == Alignment.centerRight
                      ? Transform.translate(
                          offset: const Offset(10.0, 0.0),
                          child: Container(
                            padding: const EdgeInsets.all(0.0),
                            child: TextButton(
                              style: ButtonStyle(
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(28.0)),
                              )),
                              child: Icon(
                                icon.icon,
                                color: iconColor ?? backgroundColor,
                              ),
                              onPressed: () => {},
                            ),
                          ),
                        )
                      : Container()
                ],
              ),
              onPressed: () => onPressed!(),
            ),
          ),
        ],
      ),
    );
  }
}
