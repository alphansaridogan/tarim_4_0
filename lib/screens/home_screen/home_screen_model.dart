import 'package:flutter/material.dart';
import 'package:tarim_4_0/screens/home_screen/home_screen.dart';
import 'package:tarim_4_0/screens/main_view/main_view_model.dart';

class HomeScreenModel extends MainViewModel {
  /// buradan
  static const String routeName = '/home';
  static Route route() {
    return MaterialPageRoute(
      builder: (_) => const HomeScreen(),
      settings: const RouteSettings(name: routeName),
    );
  }

  List newsDetail = [
    {
      'ID': 0,
      'urlImage': 'https://karasu.av.tr/wp-content/uploads/Tarla-.jpg',
      'description1':
          'Tarım Reformu Genel Müdürlüğü, Bakanlık tarafından yürütülen Kırsal Kalkınma Yatırımlarının Desteklenmesi Programı kapsamında, Modern Basınçlı Sulama Tesisleri Projelerine 300 milyon TL hibe verileceğini açıkladı.',
      'description2':
          '''Tarım Reformu Genel Müdürlüğü'nün Twitter hesabından yapılan açıklamada, "Bakanlığımız tarafından yürütülmekte olan 'Kırsal Kalkınma Yatırımlarının Desteklenmesi Programı' kapsamında, 'Bireysel Modern Basınçlı Sulama Sistemi Projeleri'ne yüzde 50 Hibe desteği sağlanmaktadır. 
         Bu kapsamada çiftçilerimiz, tarla içi damla sulama sistemi, tarla içi yağmurlama sistemi, tarla içi mikro yağmurlama sulama sistemi, tarla içi yüzey altı damla sulama sistemi, lineer ve center pivot sulama sistemi, tamburlu sulama sistemi, güneş enerjili sulama sistemi, tarımsal 
         sulama amaçlı güneş enerji sistemleri, akıllı sulama sistemlerini içeren projeler için hibe desteğinden yararlanılabilmektir" denildi.
             Açıklamada, 'Bireysel Modern Basınçlı Sulama Sistemi Projeleri' kapsamında 2017- 2021 yılları arasında 3,95 milyon dekar alanı kapsayan 42 bin 532 projeye, toplam 901.16 milyon TL hibe sağlandığı, 2022 yılı için ise 300 milyon TL hibe desteğinin verileceği belirtildi.''',
    },
    {
      'ID': 1,
      'urlImage':
          'https://www.tarimdanhaber.com/images/resize/95/706x431/haberler/anamanset_resim/2022/06/buYday_alYm.jpg',
      'description1':
          'TMOdan 2022 yılı buğday alım fiyatına yönelik açıklama! 1000 lira prim desteği ne zaman ödenecek? İşte cevabı...',
      'description2':
          ''' Buğday ihracatında önemli bir paya sahip olan Rusya ve Ukrayna arasında neredeyse 4 aydır süren savaş, dünyanın gıda krizine doğru sürüklendiği tehlikesini gündeme getirdi. Konuyla ilgili konuşan Tarım ve Orman Bakanı Vahit Kirişci, ise bu yıl buğday rekoltesi beklentilerinin 19,5 milyon ton olduğunu belirterek, 
         "Buğdayda bu sene olumsuzluk yaşamayacağız." dedi.
             Rusya-Ukrayna arasında 100 gündür devam eden savaş, küresel buğday ihracatında yaklaşık yüzde 30 pay sahibi olan iki ülkeyi derinden etkiledi. Ülkelerin savaş halinde olmasıyla patlak veren küresel gıda tedariki krizi ise dünyayı bekleyen bir tehlike olarak değerlendiriliyor.
         '''
    }
  ];
}
