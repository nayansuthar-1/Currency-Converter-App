import 'package:flutter/cupertino.dart';

class CurrencyConverterCupertinoPage extends StatefulWidget {
  const CurrencyConverterCupertinoPage({super.key});

  @override
  State<CurrencyConverterCupertinoPage> createState() =>
      _CurrencyConverterCupertinoPageState();
}

class _CurrencyConverterCupertinoPageState
    extends State<CurrencyConverterCupertinoPage> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();
  void convert() {
    result = double.parse(textEditingController.text) * 90.88;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: const Color.fromARGB(255, 145, 145, 147),
      navigationBar: const CupertinoNavigationBar(
        backgroundColor: CupertinoColors.darkBackgroundGray,
        middle: Text(
          'Currency Converter',
          style: TextStyle(color: CupertinoColors.white),
        ),
      ),
      child: SafeArea(
        top: false,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'INR ${result != 0 ? result.toStringAsFixed(2) : result.toStringAsFixed(0)}',
                  style: const TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w500,
                    color: CupertinoColors.white,
                  ),
                ),
                const SizedBox(height: 12),
                CupertinoTextField(
                  controller: textEditingController,
                  style: const TextStyle(color: CupertinoColors.black),
                  padding: const EdgeInsets.symmetric(
                    vertical: 14, // ⬅ increase this
                    horizontal: 12,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(),
                    color: CupertinoColors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  placeholder: 'Enter Amount in USD',
                  placeholderStyle: const TextStyle(
                    color: CupertinoColors.black,
                  ),
                  keyboardType: TextInputType.number,
                  prefix: const Icon(CupertinoIcons.money_dollar),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: double.infinity,
                  child: CupertinoButton(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    color: CupertinoColors.black,
                    onPressed: convert,
                    child: const Text(
                      'Convert',
                      style: TextStyle(
                        color: CupertinoColors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
