
@_exported import MinimalBase



/// list of language names
/// - info: this is not list of languageCodes provided by Foundation
enum LangID: String, StrEnumT {

    //TODO:
    // provide full names for each case
    // try bridge to LangCodeID, Locale, ISOCountryInfo
    // and locale.localizedString(forIdentifier: String)

    /// afrikaans
    case af

    /// amharic
    case am

    /// arabicUnitedArabEmirates
    case ar_AE

    /// arabic
    case ar

    /// assamese
    case _as = "as"

    //case az

    /// belarusian
    case be

    /// bulgarian
    case bg

    /// bengali
    case bn

    /// breton
    case br

    /// bosnian
    case bs

    /// belarusian
    case bs_Cyrl// = "bs-Cyrl" ??

    /// catalan
    case ca

    /// czech
    //case cz

    /// welsh
    case cy

    /// czech
    case cs // cz ??

    /// danish
    case da

    /// dutch
    case de

    /// lowerSorbian
    case dsb

    /// dzongkha
    case dz

    /// ewe
    case ee

    /// greek
    case el

    /// english
    case en

    /// spanishArgentina
    case es_AR

    /// spanishParaguay
    case es_PY

    /// spanishMexico
    case es_MX

    /// spanishUnitedStates
    case es_US

    /// spanish
    case es

    /// estonian
    case et

    /// basque
    case eu

    /// persian
    case fa

    /// finnish
    case fi

    /// filipino
    case fil

    /// faroese
    case fo

    /// French (Canada)
    case fr_CA

    /// French
    case fr

    /// Friulian
    case fur

    /// Western Frisian
    case fy

    /// Irish
    case ga

    /// Scottish Gaelic
    case gd

    /// Galician
    case gl

    /// Gujarati
    case gu

    /// Hebrew
    case he

    /// Hindi
    case hi

    /// Croatian
    case hr

    /// Upper Sorbian
    case hsb

    /// Hungarian
    case hu

    /// Armenian
    case hy

    /// Indonesian
    case id

    /// Icelandic
    case _is = "is"

    /// italian
    case it

    /// Japanese
    case ja

    /// Ngomba
    case jgo

    /// Georgian
    case ka

    /// Kabuverdianu
    case kea

    /// Kazakh
    case kk

    /// Kalaallisut
    case kl

    /// Khmer
    case km

    /// Kannada
    case kn

    /// Korean
    case ko

    /// Konkani
    case kok

    /// Colognian
    case ksh

    /// Kyrgyz
    case ky

    /// Luxembourgish
    case lb

    /// Lakota
    case lkt

    /// Lao
    case lo

    /// Lithuanian
    case lt

    /// Latvian
    case lv

    /// Macedonian
    case mk

    /// Malayalam
    case ml

    /// Mongolian
    case mn

    /// Marathi
    case mr

    /// Malay
    case ms

    /// Maltese
    case mt

    /// Burmese
    case my

    /// Mazanderani
    case mzn

    /// Norwegian Bokmål
    case nb

    /// Nepali
    case ne

    /// Netherland
    case nl

    /// Norwegian Nynorsk
    case nn

    /// Odia
    case or

    /// Punjabi
    case pa

    /// Polish
    case pl

    /// Pashto
    case ps

    /// Portuguese
    case pt

    /// Romanian
    case ro

    /// Russian
    case ru

    /// Sakha
    case sah

    /// Sindhi
    case sd

    /// Northern Sami (Finland)
    case se_FI

    /// Northern Sami
    case se

    /// Sinhala
    case si

    /// Slovak
    case sk

    /// Slovenian
    case sl

    /// Albanian
    case sq

    ///Serbian (Latin)
    case sr_Latn

    /// Serbian
    //case sr//

    /// Swedish
    case sv

    /// Swedish
    case sw

    /// Tamil
    case ta

    /// Telugu
    case te

    /// Thai
    case th

    /// Tigrinya
    case ti

    /// Turkmen
    case tk

    /// Tongan
    case to

    /// Turkish
    case tr

    /// Uyghur
    case ug

    /// Ukrainian
    case uk

    /// Urdu (India)
    case ur_IN

    /// Urdu
    case ur

    ///  Uzbek (Cyrillic)
    case uz_Cyrl

    /// Uzbek (Cyrillic)
    case uz

    /// Vietnamese
    case vi

    ///
    case yi

    /// Walser
    case wae

    /// Cantonese (Simplified)
    case yue_Hans

    /// Cantonese (Traditional)
    case yue_Hant

    /// Chinese (Simplified, Hong Kong [China])
    case zh_Hans_HK

    /// Chinese (Simplified, Macau [China])
    case zh_Hans_MO

    /// Chinese (Simplified, Singapore)
    case zh_Hans_SG

    ///  Chinese (Traditional, Hong Kong [China])
    case zh_Hant_HK

    ///  Chinese (Traditional, Macau [China])
    //case zh_Hant_MO

    /// Chinese (Simplified)
    case zh_Hans

    /// Chinese (Traditional)
    case zh_Hant

    ///  Chinese
    case zh

    /// Zulu
    case zu
}

extension LangID {

    var id: String {
        return rawValue
    }
}


protocol HasLangID {
    var langID: LangID {get}
}
