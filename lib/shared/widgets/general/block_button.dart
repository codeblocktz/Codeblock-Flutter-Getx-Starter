import 'package:flutter/material.dart';

class BlockButton extends StatelessWidget {
  final String buttonText;
  final IconData? icon;
  final Function onPressed;
  final bool isLoading;
  final bool usePrimaryColor;
  const BlockButton(
      {Key? key,
      required this.buttonText,
      required this.onPressed,
      this.icon,
      this.usePrimaryColor = false,
      this.isLoading = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(children: <Widget>[
      Expanded(
        child: MaterialButton(
          elevation: 20,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          padding: EdgeInsets.symmetric(vertical: 14),
          color: usePrimaryColor
              ? Theme.of(context).primaryColor
              : Theme.of(context).accentColor,
          child: isLoading
              ? SizedBox(
                  width: 20,
                  height: 20,
                  child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(
                          Theme.of(context).canvasColor)),
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      buttonText,
                      style: TextStyle(color: Colors.white),
                    ),
                    if (icon != null)
                      SizedBox(
                        child: Icon(icon, color: Colors.white),
                        height: 30,
                      )
                  ],
                ),
          onPressed: () => onPressed(),
        ),
      )
    ]));
  }
}
