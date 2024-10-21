import 'package:flutter/material.dart';

class PayButtonWidget extends StatelessWidget {
  const PayButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: ElevatedButton(
          onPressed: () {
            Navigator.popUntil(
              context,
              ModalRoute.withName('/'),
            );
          },
          child: Text(
            'Complete Payment',
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: Colors.white,
                ),
          ),
        ),
      ),
    );
  }
}
