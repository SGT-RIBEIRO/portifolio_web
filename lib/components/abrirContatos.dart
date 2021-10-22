// ignore: file names
// ignore: file names
// ignore_for_file: file_names


import 'package:url_launcher/url_launcher.dart';

abrirContatos(String url) async{
  await launch(
    url,
    forceWebView: true,
    enableJavaScript: true,
  );
}

abrirContatosZap(String url) async{
  await launch(
    url,
    forceWebView: true,
  );
}