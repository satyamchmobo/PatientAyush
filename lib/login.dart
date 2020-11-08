import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:practo/otppage.dart';
import 'package:provider/provider.dart';
// import 'package:thegorgeousotp/stores/login_store.dart';
import 'package:practo/theme.dart';
// import 'package:thegorgeousotp/widgets/loader_hud.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // key: loginStore.loginScaffoldKey,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 20),
                        child: Stack(
                          children: <Widget>[
                            Center(
                              child: Container(
                                height: 240,
                                constraints:
                                    const BoxConstraints(maxWidth: 500),
                                margin: const EdgeInsets.only(top: 100),
                                decoration: const BoxDecoration(
                                    color: Color(0x0000ff00),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(30))),
                              ),
                            ),
                            Center(
                              child: Container(
                                  constraints:
                                      const BoxConstraints(maxHeight: 340),
                                  margin:
                                      const EdgeInsets.symmetric(horizontal: 8),
                                  child: Image.asset('images/key.png')),
                            ),
                          ],
                        ),
                      ),
                      Container(
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text('Pone Login',
                              style: TextStyle(
                                  color: Colors.teal[600],
                                  fontSize: 30,
                                  fontWeight: FontWeight.w800)))
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: <Widget>[
                      Container(
                          constraints: const BoxConstraints(maxWidth: 500),
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          child: RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(children: <TextSpan>[
                              TextSpan(
                                  text: 'We will send you an ',
                                  style:
                                      TextStyle(color: Colors.teal[600])),
                              TextSpan(
                                  text: 'One Time Password ',
                                  style: TextStyle(
                                      color: Colors.teal[600],
                                      fontWeight: FontWeight.bold)),
                              TextSpan(
                                  text: 'on this mobile number',
                                  style:
                                      TextStyle(color: Colors.teal[600])),
                            ]),
                          )),
                      Container(
                        height: 40,
                        constraints: const BoxConstraints(maxWidth: 500),
                        margin: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        child: CupertinoTextField(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          decoration: BoxDecoration(
                              color: Colors.teal[50],
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(4))),
                          controller: phoneController,
                          clearButtonMode: OverlayVisibilityMode.editing,
                          keyboardType: TextInputType.phone,
                          maxLines: 1,
                          placeholder: '+91...',
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        constraints: const BoxConstraints(maxWidth: 500),
                        child: RaisedButton(
                          onPressed: () {

                              Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => OtpPage()),
  );
                            // if (phoneController.text.isNotEmpty) {
                            //   loginStore.getCodeWithPhoneNumber(
                            //       context, phoneController.text.toString());
                            // } else {
                            //   loginStore.loginScaffoldKey.currentState
                            //       .showSnackBar(SnackBar(
                            //     behavior: SnackBarBehavior.floating,
                            //     backgroundColor: Colors.red,
                            //     content: Text(
                            //       'Please enter a phone number',
                            //       style: TextStyle(color: Colors.white),
                            //     ),
                            //   ));
                            // }
                          },
                          color:Colors.teal[600],
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(14))),
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8, horizontal: 8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  'Next',
                                  style: TextStyle(color: Colors.white),
                                ),
                                Container(
                                  padding: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(20)),
                                    color:Colors.teal[300],
                                  ),
                                  child: Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.white,
                                    size: 16,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

final List defaultLanguagesList = [
  {"isoCode": "ab", "name": "Abkhazian"},
  {"isoCode": "aa", "name": "Afar"},
  {"isoCode": "af", "name": "Afrikaans"},
  {"isoCode": "ak", "name": "Akan"},
  {"isoCode": "sq", "name": "Albanian"},
  {"isoCode": "am", "name": "Amharic"},
  {"isoCode": "ar", "name": "Arabic"},
  {"isoCode": "an", "name": "Aragonese"},
  {"isoCode": "hy", "name": "Armenian"},
  {"isoCode": "as", "name": "Assamese"},
  {"isoCode": "av", "name": "Avaric"},
  {"isoCode": "ae", "name": "Avestan"},
  {"isoCode": "ay", "name": "Aymara"},
  {"isoCode": "az", "name": "Azerbaijani"},
  {"isoCode": "bm", "name": "Bambara"},
  {"isoCode": "ba", "name": "Bashkir"},
  {"isoCode": "eu", "name": "Basque"},
  {"isoCode": "be", "name": "Belarusian"},
  {"isoCode": "bn", "name": "Bengali"},
  {"isoCode": "bh", "name": "Bihari Languages"},
  {"isoCode": "bi", "name": "Bislama"},
  {"isoCode": "nb", "name": "Norwegian"},
  {"isoCode": "bs", "name": "Bosnian"},
  {"isoCode": "br", "name": "Breton"},
  {"isoCode": "bg", "name": "Bulgarian"},
  {"isoCode": "my", "name": "Burmese"},
  {"isoCode": "ca", "name": "Catalan"},
  {"isoCode": "km", "name": "Central Khmer"},
  {"isoCode": "ch", "name": "Chamorro"},
  {"isoCode": "ce", "name": "Chechen"},
  {"isoCode": "ny", "name": "Chewa (Nyanja)"},
  {"isoCode": "zh_Hans", "name": "Chinese (Simplified)"},
  {"isoCode": "zh_Hant", "name": "Chinese (Traditional)"},
  {"isoCode": "cu", "name": "Church Slavonic"},
  {"isoCode": "cv", "name": "Chuvash"},
  {"isoCode": "kw", "name": "Cornish"},
  {"isoCode": "co", "name": "Corsican"},
  {"isoCode": "cr", "name": "Cree"},
  {"isoCode": "hr", "name": "Croatian"},
  {"isoCode": "cs", "name": "Czech"},
  {"isoCode": "da", "name": "Danish"},
  {"isoCode": "dv", "name": "Dhivehi"},
  {"isoCode": "nl", "name": "Dutch"},
  {"isoCode": "dz", "name": "Dzongkha"},
  {"isoCode": "alpha2", "name": "English"},
  {"isoCode": "en", "name": "English"},
  {"isoCode": "eo", "name": "Esperanto"},
  {"isoCode": "et", "name": "Estonian"},
  {"isoCode": "ee", "name": "Ewe"},
  {"isoCode": "fo", "name": "Faroese"},
  {"isoCode": "fj", "name": "Fijian"},
  {"isoCode": "fi", "name": "Finnish"},
  {"isoCode": "fr", "name": "French"},
  {"isoCode": "ff", "name": "Fulah"},
  {"isoCode": "gd", "name": "Gaelic"},
  {"isoCode": "gl", "name": "Galician"},
  {"isoCode": "lg", "name": "Ganda"},
  {"isoCode": "ka", "name": "Georgian"},
  {"isoCode": "de", "name": "German"},
  {"isoCode": "el", "name": "Greek, Modern (1453-)"},
  {"isoCode": "gn", "name": "Guarani"},
  {"isoCode": "gu", "name": "Gujarati"},
  {"isoCode": "ht", "name": "Haitian"},
  {"isoCode": "ha", "name": "Hausa"},
  {"isoCode": "he", "name": "Hebrew"},
  {"isoCode": "hz", "name": "Herero"},
  {"isoCode": "hi", "name": "Hindi"},
  {"isoCode": "ho", "name": "Hiri Motu"},
  {"isoCode": "hu", "name": "Hungarian"},
  {"isoCode": "is", "name": "Icelandic"},
  {"isoCode": "io", "name": "Ido"},
  {"isoCode": "ig", "name": "Igbo"},
  {"isoCode": "id", "name": "Indonesian"},
  {"isoCode": "ia", "name": "Interlingua"},
  {"isoCode": "ie", "name": "Interlingue"},
  {"isoCode": "iu", "name": "Inuktitut"},
  {"isoCode": "ik", "name": "Inupiaq"},
  {"isoCode": "ga", "name": "Irish"},
  {"isoCode": "it", "name": "Italian"},
  {"isoCode": "ja", "name": "Japanese"},
  {"isoCode": "jv", "name": "Javanese"},
  {"isoCode": "kl", "name": "Kalaallisut"},
  {"isoCode": "kn", "name": "Kannada"},
  {"isoCode": "kr", "name": "Kanuri"},
  {"isoCode": "ks", "name": "Kashmiri"},
  {"isoCode": "kk", "name": "Kazakh"},
  {"isoCode": "ki", "name": "Kikuyu"},
  {"isoCode": "rw", "name": "Kinyarwanda"},
  {"isoCode": "ky", "name": "Kirghiz"},
  {"isoCode": "kv", "name": "Komi"},
  {"isoCode": "kg", "name": "Kongo"},
  {"isoCode": "ko", "name": "Korean"},
  {"isoCode": "kj", "name": "Kuanyama"},
  {"isoCode": "ku", "name": "Kurdish"},
  {"isoCode": "lo", "name": "Lao"},
  {"isoCode": "la", "name": "Latin"},
  {"isoCode": "lv", "name": "Latvian"},
  {"isoCode": "li", "name": "Limburgan"},
  {"isoCode": "ln", "name": "Lingala"},
  {"isoCode": "lt", "name": "Lithuanian"},
  {"isoCode": "lu", "name": "Luba-Katanga"},
  {"isoCode": "lb", "name": "Luxembourgish"},
  {"isoCode": "mk", "name": "Macedonian"},
  {"isoCode": "mg", "name": "Malagasy"},
  {"isoCode": "ms", "name": "Malay"},
  {"isoCode": "ml", "name": "Malayalam"},
  {"isoCode": "mt", "name": "Maltese"},
  {"isoCode": "gv", "name": "Manx"},
  {"isoCode": "mi", "name": "Maori"},
  {"isoCode": "mr", "name": "Marathi"},
  {"isoCode": "mh", "name": "Marshallese"},
  {"isoCode": "mn", "name": "Mongolian"},
  {"isoCode": "na", "name": "Nauru"},
  {"isoCode": "nv", "name": "Navajo"},
  {"isoCode": "nd", "name": "Ndebele, North"},
  {"isoCode": "nr", "name": "Ndebele, South"},
  {"isoCode": "ng", "name": "Ndonga"},
  {"isoCode": "ne", "name": "Nepali"},
  {"isoCode": "se", "name": "Northern Sami"},
  {"isoCode": "no", "name": "Norwegian"},
  {"isoCode": "nn", "name": "Norwegian Nynorsk"},
  {"isoCode": "oc", "name": "Occitan (post 1500)"},
  {"isoCode": "oj", "name": "Ojibwa"},
  {"isoCode": "or", "name": "Oriya"},
  {"isoCode": "om", "name": "Oromo"},
  {"isoCode": "os", "name": "Ossetian"},
  {"isoCode": "pi", "name": "Pali"},
  {"isoCode": "pa", "name": "Panjabi"},
  {"isoCode": "fa", "name": "Persian"},
  {"isoCode": "pl", "name": "Polish"},
  {"isoCode": "pt", "name": "Portuguese"},
  {"isoCode": "ps", "name": "Pushto"},
  {"isoCode": "qu", "name": "Quechua"},
  {"isoCode": "ro", "name": "Romanian"},
  {"isoCode": "rm", "name": "Romansh"},
  {"isoCode": "rn", "name": "Rundi"},
  {"isoCode": "ru", "name": "Russian"},
  {"isoCode": "sm", "name": "Samoan"},
  {"isoCode": "sg", "name": "Sango"},
  {"isoCode": "sa", "name": "Sanskrit"},
  {"isoCode": "sc", "name": "Sardinian"},
  {"isoCode": "sr", "name": "Serbian"},
  {"isoCode": "sn", "name": "Shona"},
  {"isoCode": "ii", "name": "Sichuan Yi"},
  {"isoCode": "sd", "name": "Sindhi"},
  {"isoCode": "si", "name": "Sinhala"},
  {"isoCode": "sk", "name": "Slovak"},
  {"isoCode": "sl", "name": "Slovenian"},
  {"isoCode": "so", "name": "Somali"},
  {"isoCode": "st", "name": "Sotho, Southern"},
  {"isoCode": "es", "name": "Spanish"},
  {"isoCode": "su", "name": "Sundanese"},
  {"isoCode": "sw", "name": "Swahili"},
  {"isoCode": "ss", "name": "Swati"},
  {"isoCode": "sv", "name": "Swedish"},
  {"isoCode": "tl", "name": "Tagalog"},
  {"isoCode": "ty", "name": "Tahitian"},
  {"isoCode": "tg", "name": "Tajik"},
  {"isoCode": "ta", "name": "Tamil"},
  {"isoCode": "tt", "name": "Tatar"},
  {"isoCode": "te", "name": "Telugu"},
  {"isoCode": "th", "name": "Thai"},
  {"isoCode": "bo", "name": "Tibetan"},
  {"isoCode": "ti", "name": "Tigrinya"},
  {"isoCode": "to", "name": "Tonga (Tonga Islands)"},
  {"isoCode": "ts", "name": "Tsonga"},
  {"isoCode": "tn", "name": "Tswana"},
  {"isoCode": "tr", "name": "Turkish"},
  {"isoCode": "tk", "name": "Turkmen"},
  {"isoCode": "tw", "name": "Twi"},
  {"isoCode": "ug", "name": "Uighur"},
  {"isoCode": "uk", "name": "Ukrainian"},
  {"isoCode": "ur", "name": "Urdu"},
  {"isoCode": "uz", "name": "Uzbek"},
  {"isoCode": "ve", "name": "Venda"},
  {"isoCode": "vi", "name": "Vietnamese"},
  {"isoCode": "vo", "name": "Volapük"},
  {"isoCode": "wa", "name": "Walloon"},
  {"isoCode": "cy", "name": "Welsh"},
  {"isoCode": "fy", "name": "Western Frisian"},
  {"isoCode": "wo", "name": "Wolof"},
  {"isoCode": "xh", "name": "Xhosa"},
  {"isoCode": "yi", "name": "Yiddish"},
  {"isoCode": "yo", "name": "Yoruba"},
  {"isoCode": "za", "name": "Zhuang"},
  {"isoCode": "zu", "name": "Zulu"}
];
