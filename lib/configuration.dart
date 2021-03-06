import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Color primaryColor = Color(0xff416d6d);


List<BoxShadow> ListShadow = [

  BoxShadow(color : Colors.grey, blurRadius: 30, offset: Offset(5,10)),
];

List<Map> cryptos = [
  { 'Name' : 'Bitcoin', 'Symbol' : 'BTC', 'iconPath' : 'images/cryptos/BTC.png' },
  { 'Name' : 'Ethereum', 'Symbol' : 'ETH', 'iconPath' : 'images/cryptos/ETH.png' },
  { 'Name' : 'Tether', 'Symbol' : 'USDT', 'iconPath' : 'images/cryptos/USDT.png' },
  { 'Name' : 'Binance Coin', 'Symbol' : 'BNB', 'iconPath' : 'images/cryptos/BNB.png' },
  { 'Name' : 'Cardano', 'Symbol' : 'ADA', 'iconPath' : 'images/cryptos/ADA.png' },
  { 'Name' : 'Dogecoin', 'Symbol' : 'DOGE', 'iconPath' : 'images/cryptos/DOGE.png' },
  { 'Name' : 'XRP', 'Symbol' : 'XRP', 'iconPath' : 'images/cryptos/XRP.png' },
  { 'Name' : 'Litecoin', 'Symbol' : 'LTC', 'iconPath' : 'images/cryptos/LTC.png' },
  { 'Name' : 'TRON', 'Symbol' : 'TRX', 'iconPath' : 'images/cryptos/TRX.png' },
  { 'Name' : 'EOS', 'Symbol' : 'EOS', 'iconPath' : 'images/cryptos/EOS.png' },
  { 'Name' : 'SHIBA INU', 'Symbol' : 'SHIB', 'iconPath' : 'images/cryptos/SHIB.png' },
];

List<Map> drawerItem = [
  { 'icon' : FontAwesomeIcons.newspaper, 'title' : 'News'},
  { 'icon' : FontAwesomeIcons.stackExchange, 'title' : 'Swap'},
  { 'icon' : FontAwesomeIcons.trademark, 'title' : 'Trading'},


];
