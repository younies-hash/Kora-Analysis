import 'package:flutter/material.dart';
import 'package:kora_analysis/Localization/ar.dart';
import 'package:kora_analysis/Localization/en.dart';
import 'package:kora_analysis/Localization/lang.dart';
import 'package:provider/provider.dart';

class Localizer extends ChangeNotifier{
    Lang labels = english;
    static Map<String, Lang> languages = {
        "en": english,
        "ar": arabic,
    };
    static Lang getLang(BuildContext context){
      return Provider.of<Localizer>(context, listen: false).labels;
    }
    static String localize(BuildContext context, String orgin){
      //final labels = Provider.of<Localizer>(context, listen: false).labels;
      
       return orgin;
    }
    void setLang(String code){
      try{
        labels = languages[code] as Lang;
      } catch(e) {
        labels = english;
      }
      notifyListeners();
    }
    void switchMainLangs(){
      labels = labels == english ? arabic: english;
      notifyListeners();
    }
}