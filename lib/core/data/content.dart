import 'package:sherlar/core/model/content_model.dart';

class AppContent {
  static String biography = """
Ғафур Ғулом 1903 йилнинг 10 май куни Тошкентда, деқҳонлар оиласида туғилган. Унинг отаси саводхон бўлган. У ўзбек ва тожик мумтоз адабиётини ўқиган, рус тилини билган, ўзи ҳам шеърлар ёзган. Унинг уйига Муқимий, Фурқат, Асирий, Хислат ва бошқа шоирлар келиб турган.

1916 йилнинг кузида Ғофур ўқишга киради. Онасининг вафотидан сўнг (отаси аввалроқ вафот этган), у ишлашга мажбур бўлган. Кўплаб касбларда ўзини синаб кўргач, у ниҳоят, матбаага ҳарф терувчи бўлиб ишга киради, сўнгра, педагогик курсларда таҳсил олади. 1919 йилдан 1927 йилгача у ўқитувчи, мактаб директори, Маънавият уюшмаси ишчилари раиси бўлиб ишлайди, болалар уйини ташкил этишда фаол иштирок этади.

1923 йилдан Ғ.Ғуломнинг адабий фаолияти бошланади. Шеърлар, достонлар, очерклар, ҳажвий ҳикоялар ва қиссалари газета ва журналларда чоп этила бошлайди. 1923 йил ёзилган “Феликс фарзандлари” шеърида етим болалар ҳақида гапираркан, унда ёзувчи ўз ҳаётини ифодалайди, “Маориф ва ўқитувчи” ойномасида эса “Гўзаллик қаерда” номли иккинчи шеъри нашр қилинали. Бирин-кетин шеърий тўпламлари босмадан чиқади: “Динамо”, “Хитой суратлари”, “Биз сизлар билан тирикмиз”, “Жонли қўшиқлар”, “Сизга”, “Совға”, “Тонг қўшиғи”, “Қўқон” достони ва бошқалар.

Ғафур Ғуломнинг 30-йил бошларида ёзилган шеърларида янги шаклларга бурилиш сезилади, бунга мумтоз рус тилини ўрганаши ҳам муҳим даражада таъсир кўрсатган. Бундан ташқари, саноатнинг ўсиши, Турксиб темир йўл магистралининг қурилиши каби унинг она юртида содир бўлаётган ажойиб ўзгаришларни таърифлаш учун янги луғат бойлиги, янги шеърий бўёқлар, янги оҳанг ва вазн талаб этилган.

“Динамо” (1931), “Тирик қўшиқлар” (1932) — ёш шоирнинг йўналиши ёрқин намоён бўлган биринчи шеърий тўпламлари.

Шоирнинг боқий ҳаёт, мангу кўк дарахт ҳақидаги “Қиш ва қор” (1929), ““Нон” (1931), “Тошкент” (1933), “Қутбда сайловлар” (1937), “Мен - Яҳудийман” (1941), “Қиш” (1941), “Хотин” (1942), “Афсуски, афсусни қўшиб кўммади” (1945), “Боғ” (1934), “Қайғу” (1942), “Куз келди” (1945), “Кузги кўчатлар” (1948) каби шеърларида умуминсонийлик, инсонпарварлик мавзулари ўз аксини топди.

Кўпгина шеърларида шарқ донишманди - ота тимсоли мавжуд: “Сен етим эмассан” (1942), “Қайғу” (1942), “Бири бирига шогирд, бири бирига устод” (1950), “Сизларга - ёшлар” (1947), “Баҳор тароналари” (1948) ва бошқалар.

“Нетай” (1930), “Ёдгор” (1936), “Шум бола” (1936-1962) қиссалари ва “Шариат найранглари” (1930), “Менинг ўғригина болам” (1965) ҳикояларида чинакам халқ қаҳрамонлари, миллийлигимиз тавсирланган.
  """;

  static List<ContentModel> hikoyalarList = [
    ContentModel(
      title: 'Шум бола',
      content: 'assets/files/G\'afur G\'ulom - Shum bola.pdf',
    ),
    ContentModel(
      title: 'Нетай',
      content: 'assets/files/Gafur Gulom. Netay (qissa).pdf',
    ),  ContentModel(
      title: 'Менинг ўғригина болам',
      content: 'assets/files/Менинг ўғригина болам.pdf',
    ),
  ];
}
