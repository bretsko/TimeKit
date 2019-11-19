

// https://github.com/FormatterKit/DayPeriodFormatter
public extension DayPeriod {
    
    static func translate(hour: Int,
                          _ localeID: LocaleID = .current) -> String? {
        
        guard let ruleSet = localeID.dayPeriodRuleSet else {
            return nil
        }
        return ruleSet.period(for: hour).translate(localeID)
    }
    
    //TODO: consider changing to [String] - in some langs can be several variants
    func translate(_ localeID: LocaleID = .current) -> String? {
        
        switch localeID {
        case .afrikaans:
            switch self {
            // case .midnight: return "middernag"
            case .morning1: return "oggend"
            case .afternoon1: return "middag"
            case .evening: return "aand"
            case .night: return "nag"
            default:
                return nil
            }
        case .amharic:
            switch self {
                // case .midnight: return "እኩለ ሌሊት"
            // case .noon: return "ቀትር"
            case .morning1: return "ጥዋት1"
            case .afternoon1: return "ከሰዓት በኋላ"
            case .evening: return "ማታ"
            case .night: return "ሌሊት"
            default:
                return nil
            }
        case .arabic:
            switch self {
            case .morning1: return "فجرا"
            case .morning2: return "صباحًا"
            case .afternoon1: return "ظهرًا"
            case .afternoon2: return "بعد الظهر"
            case .evening: return "مساءً"
            case .night: return "منتصف الليل"
            // case .night2: return "ليلاً"
            default:
                return nil
            }
        case .azerbaijani:
            switch self {
                // case .midnight: return "gecəyarı"
            // case .noon: return "günorta"
            case .morning1: return "sübh"
            case .morning2: return "səhər"
            case .afternoon1: return "gündüz"
            case .evening: return "axşamüstü"
            case .night: return "axşam"
            // case .night2: return "gecə"
            default:
                return nil
            }
        case .bulgarian:
            switch self {
            // case .midnight: return "полунощ"
            case .morning1: return "сутринта"
            case .morning2: return "на обед"
            case .afternoon1: return "следобед"
            case .evening: return "вечерта"
            case .night: return "нощ"
            default:
                return nil
            }
        case .bengali:
            switch self {
            case .morning1: return "ভোর"
            case .morning2: return "সকাল"
            case .afternoon1: return "দুপুর"
            case .afternoon2: return "বিকাল"
            case .evening: return "সন্ধ্যা"
            case .night: return "রাত্রি"
            default:
                return nil
            }
        case .chakma:
            switch self {
            case .morning1: return "ভোর"
            case .morning2: return "সকাল"
            case .afternoon1: return "দুপুর"
            case .afternoon2: return "বিকাল"
            case .evening: return "সন্ধ্যা"
            case .night: return "রাত্রি"
            default:
                return nil
            }
        case .bosnian:
            switch self {
                // case .midnight: return "u ponoć"
            // case .noon: return "podne"
            case .morning1: return "jutro"
            case .afternoon1: return "poslijepodne"
            case .evening: return "veče"
            case .night: return "noć"
            default:
                return nil
            }
        case .catalan:
            switch self {
            // case .midnight: return "mitjanit"
            case .morning1: return "matinada"
            case .morning2: return "matí"
            case .afternoon1: return "migdia"
            case .afternoon2: return "tarda"
            case .evening: return "vespre"
            case .night: return "nit"
            default:
                return nil
            }
        case .cherokee:
            switch self {
            // case .noon: return "ᎢᎦ"
            case .morning1: return "ᏌᎾᎴ"
            case .afternoon1: return "ᏒᎯᏱᎢᏗᏢ"
            default:
                return nil
            }
        case .czech:
            switch self {
                // case .midnight: return "půlnoc"
            // case .noon: return "poledne"
            case .morning1: return "ráno"
            case .morning2: return "dopoledne"
            case .afternoon1: return "odpoledne"
            case .evening: return "večer"
            case .night: return "noc"
            default:
                return nil
            }
        case .welsh:
            switch self {
                // case .midnight: return "midnight"
            // case .noon: return "noon"
            case .morning1: return "morning"
            case .afternoon1: return "afternoon"
            case .evening: return "evening"
            default:
                return nil
            }
        case .danish:
            switch self {
            // case .midnight: return "midnat"
            case .morning1: return "morgen"
            case .morning2: return "formiddag"
            case .afternoon1: return "eftermiddag"
            case .evening: return "aften"
            case .night: return "nat"
            default:
                return nil
            }
        case .german:
            switch self {
            // case .midnight: return "Mitternacht"
            case .morning1: return "Morgen"
            case .morning2: return "Vormittag"
            case .afternoon1: return "Mittag"
            case .afternoon2: return "Nachmittag"
            case .evening: return "Abend"
            case .night: return "Nacht"
            default:
                return nil
            }
        case .greek:
            switch self {
            case .morning1: return "πρωί"
            case .afternoon1: return "μεσημέρι"
            case .evening: return "απόγευμα"
            case .night: return "βράδυ"
            default:
                return nil
            }
        case .english:
            switch self {
                // case .midnight: return "midnight"
            // case .noon: return "noon"
            case .morning1: return "morning"
            case .afternoon1: return "afternoon"
            case .evening: return "evening"
            case .night: return "night"
            default:
                return nil
            }
        case .spanish:
            switch self {
            // case .noon: return "mediodía"
            case .morning1: return "madrugada"
            case .morning2: return "mañana"
            case .evening: return "tarde"
            case .night: return "noche"
            default:
                return nil
            }
        case .spanishColombia:
            switch self {
            // case .noon: return "mediodía"
            case .morning2: return "mañana"
            case .evening: return "tarde"
            case .night: return "noche"
            default:
                return nil
            }
        case .estonian:
            switch self {
                // case .midnight: return "kesköö"
            // case .noon: return "keskpäev"
            case .morning1: return "hommik"
            case .afternoon1: return "pärastlõuna"
            case .evening: return "õhtu"
            case .night: return "öö"
            default:
                return nil
            }
        case .basque:
            switch self {
            // case .midnight: return "gauerdia"
            case .morning1: return "goizaldea"
            case .morning2: return "goiza"
            case .afternoon1: return "eguerdia"
            case .afternoon2: return "arratsaldea"
            case .evening: return "iluntzea"
            case .night: return "gaua"
            default:
                return nil
            }
        case .persian:
            switch self {
            case .morning1: return "بامداد"
            case .morning2: return "صبح"
            case .afternoon1: return "ظهر"
            case .afternoon2: return "عصر"
            case .night: return "شب"
            // case .night2: return "نیمه‌شب"
            default:
                return nil
            }
        case .finnish:
            switch self {
                // case .midnight: return "keskiyö"
            // case .noon: return "keskipäivä"
            case .morning1: return "aamu"
            case .morning2: return "aamupäivä"
            case .afternoon1: return "iltapäivä"
            case .evening: return "ilta"
            case .night: return "yö"
            default:
                return nil
            }
        case .filipino:
            switch self {
                // case .midnight: return "hatinggabi"
            // case .noon: return "tanghaling-tapat"
            case .morning1: return "umaga"
            case .morning2: return "madaling-araw"
            case .afternoon1: return "tanghali"
            case .evening: return "hapon"
            case .night: return "gabi"
            default:
                return nil
            }
        case .french:
            switch self {
                // case .midnight: return "minuit"
            // case .noon: return "midi"
            case .morning1: return "matin"
            case .afternoon1: return "après-midi"
            case .evening: return "soir"
            case .night: return "nuit"
            default:
                return nil
            }
        case .galician:
            switch self {
            // case .midnight: return "medianoite"
            case .morning1: return "madrugada"
            case .morning2: return "mañá"
            case .afternoon1: return "mediodía"
            case .evening: return "tarde"
            case .night: return "noite"
            default:
                return nil
            }
        case .swissGerman:
            switch self {
            // case .midnight: return "Mitternacht"
            case .morning1: return "Morge"
            case .afternoon1: return "Mittag"
            case .afternoon2: return "Namittag"
            case .evening: return "Aabig"
            case .night: return "Nacht"
            default:
                return nil
            }
        case .gujarati:
            switch self {
            // case .midnight: return "મધ્યરાત્રિ"
            case .morning1: return "સવાર"
            case .afternoon1: return "બપોર"
            case .evening: return "સાંજ"
            case .night: return "રાત્રિ"
            default:
                return nil
            }
        case .hebrew:
            switch self {
            // case .midnight: return "חצות"
            case .morning1: return "בוקר"
            case .afternoon1: return "צהריים"
            case .afternoon2: return "אחר הצהריים"
            case .evening: return "ערב"
            case .night: return "לילה"
            // case .night2: return "לפנות בוקר"
            default:
                return nil
            }
        case .hindi:
            switch self {
            // case .midnight: return "आधी रात"
            case .morning1: return "सुबह"
            case .afternoon1: return "दोपहर"
            case .evening: return "शाम"
            case .night: return "रात"
            default:
                return nil
            }
        case .croatian:
            switch self {
                // case .midnight: return "ponoć"
            // case .noon: return "podne"
            case .morning1: return "jutro"
            case .afternoon1: return "popodne"
            case .evening: return "večer"
            case .night: return "noć"
            default:
                return nil
            }
        case .hungarian:
            switch self {
                // case .midnight: return "éjfél"
            // case .noon: return "dél"
            case .morning1: return "reggel"
            case .morning2: return "délelőtt"
            case .afternoon1: return "délután"
            case .evening: return "este"
            case .night: return "éjjel"
            // case .night2: return "hajnal"
            default:
                return nil
            }
        case .armenian:
            switch self {
                // case .midnight: return "կեսգիշեր"
            // case .noon: return "կեսօր"
            case .morning1: return "առավոտ"
            case .afternoon1: return "ցերեկ"
            case .evening: return "երեկո"
            case .night: return "գիշեր"
            default:
                return nil
            }
        case .indonesian:
            switch self {
                // case .midnight: return "tengah malam"
            // case .noon: return "tengah hari"
            case .morning1: return "pagi"
            case .afternoon1: return "siang"
            case .evening: return "sore"
            case .night: return "malam"
            default:
                return nil
            }
        case .icelandic:
            switch self {
                // case .midnight: return "miðnætti"
            // case .noon: return "hádegi"
            case .morning1: return "morgunn"
            case .afternoon1: return "eftir hádegi"
            case .evening: return "kvöld"
            case .night: return "nótt"
            default:
                return nil
            }
        case .italian:
            switch self {
                // case .midnight: return "mezzanotte"
            // case .noon: return "mezzogiorno"
            case .morning1: return "mattina"
            case .afternoon1: return "pomeriggio"
            case .evening: return "sera"
            case .night: return "notte"
            default:
                return nil
            }
        case .japanese:
            switch self {
                // case .midnight: return "真夜中"
            // case .noon: return "正午"
            case .morning1: return "朝"
            case .afternoon1: return "昼"
            case .evening: return "夕方"
            case .night: return "夜"
            // case .night2: return "夜中"
            default:
                return nil
            }
        case .georgian:
            switch self {
                // case .midnight: return "შუაღამე"
            // case .noon: return "შუადღე"
            case .morning1: return "დილა"
            case .afternoon1: return "ნაშუადღევი"
            case .evening: return "საღამო"
            case .night: return "ღამე"
            default:
                return nil
            }
        case .kazakh:
            switch self {
                // case .midnight: return "түн жарымы"
            // case .noon: return "талтүс"
            case .morning1: return "таң"
            case .afternoon1: return "түстен кейін"
            case .evening: return "кеш"
            case .night: return "түн"
            default:
                return nil
            }
        case .khmer:
            switch self {
                // case .midnight: return "កណ្តាលអាធ្រាត្រ"
            // case .noon: return "ថ្ងៃ​ត្រង់"
            case .morning1: return "ព្រឹក"
            case .afternoon1: return "រសៀល"
            case .evening: return "ល្ងាច"
            case .night: return "យប់"
            default:
                return nil
            }
        case .kannada:
            switch self {
            // case .midnight: return "ಮಧ್ಯರಾತ್ರಿ"
            case .morning1: return "ಬೆಳಗ್ಗೆ"
            case .afternoon1: return "ಮಧ್ಯಾಹ್ನ"
            case .evening: return "ಸಂಜೆ"
            case .night: return "ರಾತ್ರಿ"
            default:
                return nil
            }
        case .korean:
            switch self {
                // case .midnight: return "자정"
            // case .noon: return "정오"
            case .morning1: return "새벽"
            case .morning2: return "오전"
            case .afternoon1: return "오후"
            case .evening: return "저녁"
            case .night: return "밤"
            default:
                return nil
            }
        case .kyrgyz:
            switch self {
                // case .midnight: return "түн ортосу"
            // case .noon: return "чак түш"
            case .morning1: return "эртең менен"
            case .afternoon1: return "түштөн кийин"
            case .evening: return "кечкурун"
            case .night: return "түн"
            default:
                return nil
            }
        case .lao:
            switch self {
                // case .midnight: return "ທ່ຽງ​ຄືນ"
            // case .noon: return "ຕອນທ່ຽງ"
            case .morning1: return "​ເຊົ້າ"
            case .afternoon1: return "ສວຍ"
            case .evening: return "ແລງ"
            case .night: return "​ກາງ​ຄືນ"
            default:
                return nil
            }
        case .lithuanian:
            switch self {
                // case .midnight: return "vidurnaktis"
            // case .noon: return "vidurdienis"
            case .morning1: return "rytas"
            case .afternoon1: return "diena"
            case .evening: return "vakaras"
            case .night: return "naktis"
            default:
                return nil
            }
        case .latvian:
            switch self {
                // case .midnight: return "pusnakts"
            // case .noon: return "pusdienlaiks"
            case .morning1: return "rīts"
            case .afternoon1: return "pēcpusdiena"
            case .evening: return "vakars"
            case .night: return "nakts"
            default:
                return nil
            }
        case .macedonian:
            switch self {
                // case .midnight: return "на полноќ"
            // case .noon: return "напладне"
            case .morning1: return "наутро"
            case .morning2: return "претпладне"
            case .afternoon1: return "попладне"
            case .evening: return "навечер"
            case .night: return "по полноќ"
            default:
                return nil
            }
        case .malayalam:
            switch self {
                // case .midnight: return "അർദ്ധരാത്രി"
            // case .noon: return "ഉച്ച"
            case .morning1: return "പുലർച്ചെ"
            case .morning2: return "രാവിലെ"
            case .afternoon1: return "ഉച്ചയ്ക്ക്"
            case .afternoon2: return "ഉച്ചതിരിഞ്ഞ്"
            case .evening: return "വൈകുന്നേരം"
            //case .evening2: return "സന്ധ്യ"
            case .night: return "രാത്രി"
            default:
                return nil
            }
        case .mongolian:
            switch self {
                // case .midnight: return "шөнө дунд"
            // case .noon: return "үд дунд"
            case .morning1: return "өглөө"
            case .afternoon1: return "өдөр"
            case .evening: return "орой"
            case .night: return "шөнө"
            default:
                return nil
            }
        case .marathi:
            switch self {
                // case .midnight: return "मध्यरात्र"
            // case .noon: return "मध्यान्ह"
            case .morning1: return "पहाट"
            case .morning2: return "सकाळ"
            case .afternoon1: return "दुपार"
            case .evening: return "संध्याकाळ"
            //case .evening2: return "सायंकाळ"
            case .night: return "रात्र"
            default:
                return nil
            }
        case .malay:
            switch self {
            case .morning1: return "tengah malam"
            case .morning2: return "pagi"
            case .afternoon1: return "tengah hari"
            case .evening: return "petang"
            case .night: return "malam"
            default:
                return nil
            }
        case .burmese:
            switch self {
                // case .midnight: return "သန်းခေါင်ယံ"
            // case .noon: return "မွန်းတည့်"
            case .morning1: return "နံနက်"
            case .afternoon1: return "နေ့လည်"
            case .evening: return "ညနေ"
            case .night: return "ည"
            default:
                return nil
            }
        case .norwegianBokml:
            switch self {
            // case .midnight: return "midnatt"
            case .morning1: return "morgen"
            case .morning2: return "formiddag"
            case .afternoon1: return "ettermiddag"
            case .evening: return "kveld"
            case .night: return "natt"
            default:
                return nil
            }
        case .nepali:
            switch self {
                // case .midnight: return "मध्यरात"
            // case .noon: return "मध्यान्ह"
            case .morning1: return "विहान"
            case .afternoon1: return "अपरान्ह"
            case .afternoon2: return "साँझ"
            case .evening: return "बेलुका"
            case .night: return "रात"
            default:
                return nil
            }
        case .dutch:
            switch self {
            // case .midnight: return "middernacht"
            case .morning1: return "ochtend"
            case .afternoon1: return "middag"
            case .evening: return "avond"
            case .night: return "nacht"
            default:
                return nil
            }
        case .punjabi:
            switch self {
            // case .midnight: return "ਅੱਧੀ ਰਾਤ"
            case .morning1: return "ਸਵੇਰ"
            case .afternoon1: return "ਦੁਪਹਿਰ"
            case .evening: return "ਸ਼ਾਮ"
            case .night: return "ਰਾਤ"
            default:
                return nil
            }
        case .polish:
            switch self {
                // case .midnight: return "północ"
            // case .noon: return "południe"
            case .morning1: return "rano"
            case .morning2: return "przedpołudnie"
            case .afternoon1: return "popołudnie"
            case .evening: return "wieczór"
            case .night: return "noc"
            default:
                return nil
            }
        case .portuguese:
            switch self {
                // case .midnight: return "meia-noite"
            // case .noon: return "meio-dia"
            case .morning1: return "manhã"
            case .afternoon1: return "tarde"
            case .evening: return "noite"
            case .night: return "madrugada"
            default:
                return nil
            }
        case .romanian:
            switch self {
                // case .midnight: return "la miezul nopții"
            // case .noon: return "la amiază"
            case .morning1: return "dimineață"
            case .afternoon1: return "după-amiază"
            case .evening: return "seară"
            case .night: return "noapte"
            default:
                return nil
            }
        case .russian:
            switch self {
                // case .midnight: return "полночь"
            // case .noon: return "полдень"
            case .morning1: return "утро"
            case .afternoon1: return "день"
            case .evening: return "вечер"
            case .night: return "ночь"
            default:
                return nil
            }
        case .sinhala:
            switch self {
                // case .midnight: return "මැදියම"
            // case .noon: return "මධ්‍යාහ්නය"
            case .morning1: return "පාන්දර"
            case .morning2: return "උදේ"
            case .afternoon1: return "දවල්"
            case .evening: return "හවස"
            case .night: return "රෑ"
            // case .night2: return "මැදියමට පසු"
            default:
                return nil
            }
        case .slovak:
            switch self {
                // case .midnight: return "polnoc"
            // case .noon: return "poludnie"
            case .morning1: return "ráno"
            case .morning2: return "dopoludnie"
            case .afternoon1: return "popoludnie"
            case .evening: return "večer"
            case .night: return "noc"
            default:
                return nil
            }
        case .slovenian:
            switch self {
                // case .midnight: return "polnoč"
            // case .noon: return "poldne"
            case .morning1: return "zjutraj"
            case .morning2: return "dopoldne"
            case .afternoon1: return "popoldne"
            case .evening: return "zvečer"
            case .night: return "ponoči"
            default:
                return nil
            }
        case .albanian:
            switch self {
                // case .midnight: return "mesnatë"
            // case .noon: return "mesditë"
            case .morning1: return "mëngjes"
            case .morning2: return "paradite"
            case .afternoon1: return "pasdite"
            case .evening: return "mbrëmje"
            case .night: return "natë"
            default:
                return nil
            }
        case .serbian:
            switch self {
                // case .midnight: return "поноћ"
            // case .noon: return "подне"
            case .morning1: return "јутро"
            case .afternoon1: return "поподне"
            case .evening: return "вече"
            case .night: return "ноћ"
            default:
                return nil
            }
        case .swedish:
            switch self {
            // case .midnight: return "midnatt"
            case .morning1: return "morgon"
            case .morning2: return "förmiddag"
            case .afternoon1: return "eftermiddag"
            case .evening: return "kväll"
            case .night: return "natt"
            default:
                return nil
            }
        case .swahili:
            switch self {
                // case .midnight: return "saa sita za usiku"
            // case .noon: return "saa sita za mchana"
            case .morning1: return "alfajiri"
            case .morning2: return "asubuhi"
            case .afternoon1: return "mchana"
            case .evening: return "jioni"
            case .night: return "usiku"
            default:
                return nil
            }
        case .tamil:
            switch self {
                // case .midnight: return "நள்ளிரவு"
            // case .noon: return "நண்பகல்"
            case .morning1: return "அதிகாலை"
            case .morning2: return "காலை"
            case .afternoon1: return "மதியம்"
            case .afternoon2: return "பிற்பகல்"
            case .evening: return "மாலை"
            //case .evening2: return "அந்தி மாலை"
            case .night: return "இரவு"
            default:
                return nil
            }
        case .telugu:
            switch self {
            // case .midnight: return "అర్థరాత్రి"
            case .morning1: return "ఉదయం"
            case .afternoon1: return "మధ్యాహ్నం"
            case .evening: return "సాయంత్రం"
            case .night: return "రాత్రి"
            default:
                return nil
            }
        case .thai:
            switch self {
                // case .midnight: return "เที่ยงคืน"
            // case .noon: return "เที่ยง"
            case .morning1: return "เช้า"
            case .afternoon1: return "ช่วงเที่ยง"
            case .afternoon2: return "บ่าย"
            case .evening: return "เย็น"
            //case .evening2: return "ค่ำ"
            case .night: return "กลางคืน"
            default:
                return nil
            }
        case .turkish:
            switch self {
                // case .midnight: return "gece yarısı"
            // case .noon: return "öğle"
            case .morning1: return "sabah"
            case .morning2: return "öğleden önce"
            case .afternoon1: return "öğleden sonra"
            case .afternoon2: return "akşamüstü"
            case .evening: return "akşam"
            case .night: return "gece"
            default:
                return nil
            }
        case .ukrainian:
            switch self {
                // case .midnight: return "північ"
            // case .noon: return "полудень"
            case .morning1: return "ранок"
            case .afternoon1: return "день"
            case .evening: return "вечір"
            case .night: return "ніч"
            default:
                return nil
            }
        case .urdu:
            switch self {
            // case .midnight: return "آدھی رات"
            case .morning1: return "صبح"
            case .afternoon1: return "دوپہر"
            case .afternoon2: return "سہ پہر"
            case .evening: return "شام"
            case .night: return "رات"
            default:
                return nil
            }
        case .uzbek:
            switch self {
                // case .midnight: return "yarim kechasi"
            // case .noon: return "tush payti"
            case .morning1: return "ertalab"
            case .afternoon1: return "kunduzi"
            case .evening: return "kechqurun"
            case .night: return "kechasi"
            default:
                return nil
            }
        case .vietnamese:
            switch self {
                // case .midnight: return "nửa đêm"
            // case .noon: return "trưa"
            case .morning1: return "sáng"
            case .afternoon1: return "chiều"
            case .evening: return "tối"
            case .night: return "đêm"
            default:
                return nil
            }
        case .cantonese:
            switch self {
            // case .midnight: return "午夜"
            case .morning1: return "清晨"
            case .morning2: return "朝早"
            case .afternoon1: return "中午"
            case .afternoon2: return "下晝"
            case .evening: return "夜晚"
            case .night: return "凌晨"
            default:
                return nil
            }
        case .chinese:
            switch self {
            // case .midnight: return "午夜"
            case .morning1: return "早上"
            case .morning2: return "上午"
            case .afternoon1: return "中午"
            case .afternoon2: return "下午"
            case .evening: return "晚上"
            case .night: return "凌晨"
            default:
                return nil
            }
        case .zulu:
            switch self {
            case .morning1: return "entathakusa"
            case .morning2: return "ekuseni2"
            case .afternoon1: return "emini"
            case .evening: return "ebusuku1"
            case .night: return "ebusuku"
            default:
                return nil
            }
        default:
            //debugPrint("Language code not found: \(langCode)")
            return nil
        }
    }
}
