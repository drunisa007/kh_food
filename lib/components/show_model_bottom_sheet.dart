import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:template_project/provider/language_provider.dart';
import 'package:template_project/util/lanuagesutil.dart';

Future<dynamic> showSheet(BuildContext context, List<Locale> supportedLocales,Locale currentLocale, Future<void> Function(Locale val) setLocale, LanguageProvider languageProvider,) {
  double width = MediaQuery.of(context).size.width;


  List<String> countryName =LanguageUtil().lanuageName();
  List<String> imageName = LanguageUtil().languageFlag();


  return showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          color: Colors.white30,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                margin: EdgeInsets.only(top: 10,bottom: 10,left: 5,right: 5),
                child: Text('Please Choose Your Language',textAlign:TextAlign.center,style: TextStyle(
                  letterSpacing: 1.2,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),),
              ),
              ListView.builder(
                  itemBuilder: (context,index){
                  return Container(
                    margin: EdgeInsets.only(left: 10,right: 10,top: 7,bottom: 7),
                    child: Card(
                      color: Theme.of(context).primaryColor,
                      elevation: 6,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      child: InkWell(
                        splashColor: Colors.grey,
                        borderRadius: BorderRadius.circular(5),
                        onTap: () {
                          setLocale(supportedLocales[index]);
                          languageProvider.setLanguagePosition(index);
                        },
                        child: Container(
                          width: double.infinity,
                          height: 45,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 30),
                                child: Image.asset(
                                  imageName[index],
                                  width: 37,
                                  height: 35,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: width/6),
                                child: Text(
                                  countryName[index],
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      letterSpacing: 1.2),
                                ),
                              ),
                              Spacer(),
                              Visibility(
                                visible:supportedLocales[languageProvider.languagePosition]==supportedLocales[index]?true:false,
                                child: Container(
                                  margin: EdgeInsets.only(right: 40),
                                  child: SvgPicture.asset(
                                    'assets/images/mark.svg',
                                    color: Colors.white,
                                    width: 30,
                                    height: 30,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
              },
                itemCount: supportedLocales.length,
                shrinkWrap: true,
              )

            ],
          ),
        );
      });
}
