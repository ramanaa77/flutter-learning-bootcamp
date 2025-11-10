import 'package:bitcoin_ticker/coin_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io' show Platform;

class PriceScreen extends StatefulWidget {
  const PriceScreen({super.key});

  @override
  State<PriceScreen> createState() => _PriceScreenState();
}

class _PriceScreenState extends State<PriceScreen> {
  String selectedCurrency = 'AUD';
  Map<String, String> cryptoValues = {
    'bitcoinRate': '?',
    'ethereumRate': '?',
    'litecoinRate': '?'
  };

  DropdownButton<String> androidDropDown() {
    List<DropdownMenuItem<String>> dropDownItem = [];
    for (String currency in currenciesList) {
      var newItem = DropdownMenuItem(
        value: currency,
        child: Text(currency),
      );
      dropDownItem.add(newItem);
    }

    return DropdownButton<String>(
        value: selectedCurrency,
        items: dropDownItem,
        onChanged: (value) {
          setState(() {
            selectedCurrency = value!;
            getData();
          });
        });
  }

  CupertinoPicker iosPicker() {
    List<Text> pickerItems = [];
    for (String currency in currenciesList) {
      pickerItems.add(Text(currency));
    }

    return CupertinoPicker(
        itemExtent: 32.0,
        onSelectedItemChanged: (selectedIndex) {
          selectedCurrency = currenciesList[selectedIndex];
          getData();
        },
        children: pickerItems);
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  Future<void> getData() async {
    CoinData coinData = CoinData(
      selectedCurrency: selectedCurrency,
    );
    var coinValues = await coinData.getCoinData();
    setState(() {
      cryptoValues['bitcoinRate'] =
          coinValues['bitcoin'][selectedCurrency.toLowerCase()].toString();
      cryptoValues['ethereumRate'] =
          coinValues['ethereum'][selectedCurrency.toLowerCase()].toString();
      cryptoValues['litecoinRate'] =
          coinValues['litecoin'][selectedCurrency.toLowerCase()].toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('🤑 Coin Ticker'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CryptoButton(
                  cryptoName: 'BTC',
                  currencyRate: cryptoValues['bitcoinRate'] ?? '?',
                  selectedCurrency: selectedCurrency),
              CryptoButton(
                  cryptoName: 'ETH',
                  currencyRate: cryptoValues['ethereumRate'] ?? '?',
                  selectedCurrency: selectedCurrency),
              CryptoButton(
                  cryptoName: 'LTC',
                  currencyRate: cryptoValues['litecoinRate'] ?? '?',
                  selectedCurrency: selectedCurrency),
            ],
          ),
          Container(
            height: 150.0,
            alignment: Alignment.center,
            padding: EdgeInsets.only(bottom: 30.0),
            color: Colors.lightBlue,
            child: Platform.isIOS ? iosPicker() : androidDropDown(),
          ),
        ],
      ),
    );
  }
}

class CryptoButton extends StatelessWidget {
  const CryptoButton({
    super.key,
    required this.currencyRate,
    required this.selectedCurrency,
    required this.cryptoName,
  });

  final String currencyRate;
  final String selectedCurrency;
  final String cryptoName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 0),
      child: Card(
        color: Colors.lightBlueAccent,
        elevation: 5.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 28.0),
          child: Text(
            '1 $cryptoName = $currencyRate $selectedCurrency',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
