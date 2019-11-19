


//TODO: change to LID
public extension LangLID  {
    
    //TODO: consider simplifyig this by removing DayMomentRule

    var dayMomentRuleSet: DayMomentRuleSet? {
        if let ruleSet = _dayMomentRuleSet {
            return
                DayMomentRuleSet(ruleSet)
        }
        return nil
    }
    
    fileprivate var _dayMomentRuleSet: [DayMoment : DayMomentRule]? {
        switch self {
        
        //TODO:

//        case .swissGerman:
//            return [
//                .midnight: .at(hour: 00),
//                // .night: .range(fromHour: 00),
//                // .morning1: .range(fromHour: 05),
//                // .afternoon1: .range(fromHour: 12),
//                // .afternoon2: .range(fromHour: 14),
//                // .evening: .range(fromHour: 18),
//            ]
        //        case .spanishColombia:
//            return [
//                .noon: .at(hour: 12),
//                // .morning2: .range(fromHour: 00),
//                // .evening: .range(fromHour: 12),
//                // .night: .range(fromHour: 20),
//            ]
//        case .macedonian:
//            return [
//                .midnight: .at(hour: 00),
//                .noon: .at(hour: 12),
//                // .night: .range(fromHour: 00),
//                // .morning1: .range(fromHour: 04),
//                // .morning2: .range(fromHour: 10),
//                // .afternoon1: .range(fromHour: 12),
//                // .evening: .range(fromHour: 18),
//            ]
        case .hebrew:
            return [
                .midnight: .at(hour: 00),
                // .night2: .range(fromHour: 03),
                // .morning1: .range(fromHour: 06),
                // .afternoon1: .range(fromHour: 12),
                // .afternoon2: .range(fromHour: 16),
                // .evening: .range(fromHour: 18),
                // .night: .range(fromHour: 22),
            ]
        case .afrikaans:
            return [
                .midnight: .at(hour: 00),
                // .night: .range(fromHour: 00),
                // .morning1: .range(fromHour: 05),
                // .afternoon1: .range(fromHour: 12),
                // .evening: .range(fromHour: 18),
            ]
        case .amharic:
            return [
                .midnight: .at(hour: 00),
                .noon: .at(hour: 12),
                // .night: .range(fromHour: 00),
                // .morning1: .range(fromHour: 06),
                // .afternoon1: .range(fromHour: 12),
                // .evening: .range(fromHour: 18),
            ]
            
        case .azer:
            return [
                .midnight: .at(hour: 00),
                .noon: .at(hour: 12),
                // .night2: .range(fromHour: 00),
                // .morning1: .range(fromHour: 04),
                // .morning2: .range(fromHour: 06),
                // .afternoon1: .range(fromHour: 12),
                // .evening: .range(fromHour: 17),
                // .night: .range(fromHour: 19),
            ]
        case .bulgarian:
            return [
                .midnight: .at(hour: 00),
                // .morning1: .range(fromHour: 04),
                // .morning2: .range(fromHour: 11),
                // .afternoon1: .range(fromHour: 14),
                // .evening: .range(fromHour: 18),
                // .night: .range(fromHour: 22),
            ]
            
        case .bosnian:
            return [
                .midnight: .at(hour: 00),
                .noon: .at(hour: 12),
                // .morning1: .range(fromHour: 04),
                // .afternoon1: .range(fromHour: 12),
                // .evening: .range(fromHour: 18),
                // .night: .range(fromHour: 21),
            ]
        case .catalan:
            return [
                .midnight: .at(hour: 00),
                // .morning1: .range(fromHour: 00),
                // .morning2: .range(fromHour: 06),
                // .afternoon1: .range(fromHour: 12),
                // .afternoon2: .range(fromHour: 13),
                // .evening: .range(fromHour: 19),
                // .night: .range(fromHour: 21),
            ]
        case .cherokee:
            return [
                .noon: .at(hour: 12),
                // .morning1: .range(fromHour: 00),
                // .afternoon1: .range(fromHour: 12),
            ]
        case .czech:
            return [
                .midnight: .at(hour: 00),
                .noon: .at(hour: 12),
                // .morning1: .range(fromHour: 04),
                // .morning2: .range(fromHour: 09),
                // .afternoon1: .range(fromHour: 12),
                // .evening: .range(fromHour: 18),
                // .night: .range(fromHour: 22),
            ]
        case .welsh:
            return [
                .midnight: .at(hour: 00),
                .noon: .at(hour: 12),
                // .morning1: .range(fromHour: 00),
                // .afternoon1: .range(fromHour: 12),
                // .evening: .range(fromHour: 18),
            ]
        case .danish:
            return [
                .midnight: .at(hour: 00),
                // .night: .range(fromHour: 00),
                // .morning1: .range(fromHour: 05),
                // .morning2: .range(fromHour: 10),
                // .afternoon1: .range(fromHour: 12),
                // .evening: .range(fromHour: 18),
            ]
        case .german:
            return [
                .midnight: .at(hour: 00),
                // .night: .range(fromHour: 00),
                // .morning1: .range(fromHour: 05),
                // .morning2: .range(fromHour: 10),
                // .afternoon1: .range(fromHour: 12),
                // .afternoon2: .range(fromHour: 13),
                // .evening: .range(fromHour: 18),
            ]
            
        case .english:
            return [
                .midnight: .at(hour: 00),
                .noon: .at(hour: 12),
                // .morning1: .range(fromHour: 06),
                // .afternoon1: .range(fromHour: 12),
                // .evening: .range(fromHour: 18),
                // .night: .range(fromHour: 21),
            ]
        case .spanish:
            return [
                .noon: .at(hour: 12),
                // .morning1: .range(fromHour: 00),
                // .morning2: .range(fromHour: 06),
                // .evening: .range(fromHour: 12),
                // .night: .range(fromHour: 20),
            ]
        case .estonian:
            return [
                .midnight: .at(hour: 00),
                .noon: .at(hour: 12),
                // .morning1: .range(fromHour: 05),
                // .afternoon1: .range(fromHour: 12),
                // .evening: .range(fromHour: 18),
                // .night: .range(fromHour: 23),
            ]
        case .basque:
            return [
                .midnight: .at(hour: 00),
                // .morning1: .range(fromHour: 00),
                // .morning2: .range(fromHour: 06),
                // .afternoon1: .range(fromHour: 12),
                // .afternoon2: .range(fromHour: 14),
                // .evening: .range(fromHour: 19),
                // .night: .range(fromHour: 21),
            ]
            
        case .finnish:
            return [
                .midnight: .at(hour: 00),
                .noon: .at(hour: 12),
                // .morning1: .range(fromHour: 05),
                // .morning2: .range(fromHour: 10),
                // .afternoon1: .range(fromHour: 12),
                // .evening: .range(fromHour: 18),
                // .night: .range(fromHour: 23),
            ]
        case .filipino:
            return [
                .midnight: .at(hour: 00),
                .noon: .at(hour: 12),
                // .morning1: .range(fromHour: 00),
                // .morning2: .range(fromHour: 06),
                // .afternoon1: .range(fromHour: 12),
                // .evening: .range(fromHour: 16),
                // .night: .range(fromHour: 18),
            ]
        case .french:
            return [
                .midnight: .at(hour: 00),
                .noon: .at(hour: 12),
                // .night: .range(fromHour: 00),
                // .morning1: .range(fromHour: 04),
                // .afternoon1: .range(fromHour: 12),
                // .evening: .range(fromHour: 18),
            ]
        case .galician:
            return [
                .midnight: .at(hour: 00),
                // .morning1: .range(fromHour: 00),
                // .morning2: .range(fromHour: 06),
                // .afternoon1: .range(fromHour: 12),
                // .evening: .range(fromHour: 13),
                // .night: .range(fromHour: 21),
            ]
  
        case .gujarati:
            return [
                .midnight: .at(hour: 00),
                // .morning1: .range(fromHour: 04),
                // .afternoon1: .range(fromHour: 12),
                // .evening: .range(fromHour: 16),
                // .night: .range(fromHour: 20),
            ]
        case .hindi:
            return [
                .midnight: .at(hour: 00),
                // .morning1: .range(fromHour: 04),
                // .afternoon1: .range(fromHour: 12),
                // .evening: .range(fromHour: 16),
                // .night: .range(fromHour: 20),
            ]
        case .croatian:
            return [
                .midnight: .at(hour: 00),
                .noon: .at(hour: 12),
                // .morning1: .range(fromHour: 04),
                // .afternoon1: .range(fromHour: 12),
                // .evening: .range(fromHour: 18),
                // .night: .range(fromHour: 21),
            ]
        case .hungarian:
            return [
                .midnight: .at(hour: 00),
                .noon: .at(hour: 12),
                // .night2: .range(fromHour: 04),
                // .morning1: .range(fromHour: 06),
                // .morning2: .range(fromHour: 09),
                // .afternoon1: .range(fromHour: 12),
                // .evening: .range(fromHour: 18),
                // .night: .range(fromHour: 21),
            ]
        case .armenian:
            return [
                .midnight: .at(hour: 00),
                .noon: .at(hour: 12),
                // .night: .range(fromHour: 00),
                // .morning1: .range(fromHour: 06),
                // .afternoon1: .range(fromHour: 12),
                // .evening: .range(fromHour: 18),
            ]
        case .indonesian:
            return [
                .midnight: .at(hour: 00),
                .noon: .at(hour: 12),
                // .morning1: .range(fromHour: 00),
                // .afternoon1: .range(fromHour: 10),
                // .evening: .range(fromHour: 15),
                // .night: .range(fromHour: 18),
            ]
        case .icelandic:
            return [
                .midnight: .at(hour: 00),
                .noon: .at(hour: 12),
                // .night: .range(fromHour: 00),
                // .morning1: .range(fromHour: 06),
                // .afternoon1: .range(fromHour: 12),
                // .evening: .range(fromHour: 18),
            ]
        case .italian:
            return [
                .midnight: .at(hour: 00),
                .noon: .at(hour: 12),
                // .night: .range(fromHour: 00),
                // .morning1: .range(fromHour: 06),
                // .afternoon1: .range(fromHour: 12),
                // .evening: .range(fromHour: 18),
            ]
        case .japanese:
            return [
                .midnight: .at(hour: 00),
                .noon: .at(hour: 12),
                // .morning1: .range(fromHour: 04),
                // .afternoon1: .range(fromHour: 12),
                // .evening: .range(fromHour: 16),
                // .night: .range(fromHour: 19),
                // .night2: .range(fromHour: 23),
            ]
        case .georgian:
            return [
                .midnight: .at(hour: 00),
                .noon: .at(hour: 12),
                // .morning1: .range(fromHour: 05),
                // .afternoon1: .range(fromHour: 12),
                // .evening: .range(fromHour: 18),
                // .night: .range(fromHour: 21),
            ]
        case .kazakh:
            return [
                .midnight: .at(hour: 00),
                .noon: .at(hour: 12),
                // .morning1: .range(fromHour: 06),
                // .afternoon1: .range(fromHour: 12),
                // .evening: .range(fromHour: 18),
                // .night: .range(fromHour: 21),
            ]
        case .khmer:
            return [
                .midnight: .at(hour: 00),
                .noon: .at(hour: 12),
                // .morning1: .range(fromHour: 00),
                // .afternoon1: .range(fromHour: 12),
                // .evening: .range(fromHour: 18),
                // .night: .range(fromHour: 21),
            ]
        case .kannada:
            return [
                .midnight: .at(hour: 00),
                // .morning1: .range(fromHour: 06),
                // .afternoon1: .range(fromHour: 12),
                // .evening: .range(fromHour: 18),
                // .night: .range(fromHour: 21),
            ]
        case .korean:
            return [
                .midnight: .at(hour: 00),
                .noon: .at(hour: 12),
                // .morning1: .range(fromHour: 03),
                // .morning2: .range(fromHour: 06),
                // .afternoon1: .range(fromHour: 12),
                // .evening: .range(fromHour: 18),
                // .night: .range(fromHour: 21),
            ]
        case .kyrgyz:
            return [
                .midnight: .at(hour: 00),
                .noon: .at(hour: 12),
                // .morning1: .range(fromHour: 06),
                // .afternoon1: .range(fromHour: 12),
                // .evening: .range(fromHour: 18),
                // .night: .range(fromHour: 21),
            ]
        case .lao:
            return [
                .midnight: .at(hour: 00),
                .noon: .at(hour: 12),
                // .morning1: .range(fromHour: 05),
                // .afternoon1: .range(fromHour: 12),
                // .evening: .range(fromHour: 16),
                // .night: .range(fromHour: 20),
            ]
        case .lithuanian:
            return [
                .midnight: .at(hour: 00),
                .noon: .at(hour: 12),
                // .night: .range(fromHour: 00),
                // .morning1: .range(fromHour: 06),
                // .afternoon1: .range(fromHour: 12),
                // .evening: .range(fromHour: 18),
            ]
        case .latvian:
            return [
                .midnight: .at(hour: 00),
                .noon: .at(hour: 12),
                // .morning1: .range(fromHour: 06),
                // .afternoon1: .range(fromHour: 12),
                // .evening: .range(fromHour: 18),
                // .night: .range(fromHour: 23),
            ]
 
        case .malayalam:
            return [
                .midnight: .at(hour: 00),
                .noon: .at(hour: 12),
                // .morning1: .range(fromHour: 03),
                // .morning2: .range(fromHour: 06),
                // .afternoon1: .range(fromHour: 12),
                // .afternoon2: .range(fromHour: 14),
                // .evening: .range(fromHour: 15),
                // .evening2: .range(fromHour: 18),
                // .night: .range(fromHour: 19),
            ]
        case .mongolian:
            return [
                .midnight: .at(hour: 00),
                .noon: .at(hour: 12),
                // .morning1: .range(fromHour: 06),
                // .afternoon1: .range(fromHour: 12),
                // .evening: .range(fromHour: 18),
                // .night: .range(fromHour: 21),
            ]
        case .marathi:
            return [
                .midnight: .at(hour: 00),
                .noon: .at(hour: 12),
                // .morning1: .range(fromHour: 04),
                // .morning2: .range(fromHour: 06),
                // .afternoon1: .range(fromHour: 12),
                // .evening: .range(fromHour: 16),
                // .evening2: .range(fromHour: 18),
                // .night: .range(fromHour: 21),
            ]
            
        case .burmese:
            return [
                .midnight: .at(hour: 00),
                .noon: .at(hour: 12),
                // .morning1: .range(fromHour: 00),
                // .afternoon1: .range(fromHour: 12),
                // .evening: .range(fromHour: 16),
                // .night: .range(fromHour: 19),
            ]
        case .norwegianBokml:
            return [
                .midnight: .at(hour: 00),
                // .night: .range(fromHour: 00),
                // .morning1: .range(fromHour: 06),
                // .morning2: .range(fromHour: 10),
                // .afternoon1: .range(fromHour: 12),
                // .evening: .range(fromHour: 18),
            ]
        case .nepali:
            return [
                .midnight: .at(hour: 00),
                .noon: .at(hour: 12),
                // .morning1: .range(fromHour: 04),
                // .afternoon1: .range(fromHour: 12),
                // .afternoon2: .range(fromHour: 16),
                // .evening: .range(fromHour: 19),
                // .night: .range(fromHour: 22),
            ]
        case .dutch:  return [
            .midnight: .at(hour: 00),
            // .night: .range(fromHour: 00),
            // .morning1: .range(fromHour: 06),
            // .afternoon1: .range(fromHour: 12),
            // .evening: .range(fromHour: 18),
            ]
        case .punjabi:
            return [
                .midnight: .at(hour: 00),
                // .morning1: .range(fromHour: 04),
                // .afternoon1: .range(fromHour: 12),
                // .evening: .range(fromHour: 16),
                // .night: .range(fromHour: 21),
            ]
        case .polish:
            return [
                .midnight: .at(hour: 00),
                .noon: .at(hour: 12),
                // .morning1: .range(fromHour: 06),
                // .morning2: .range(fromHour: 10),
                // .afternoon1: .range(fromHour: 12),
                // .evening: .range(fromHour: 18),
                // .night: .range(fromHour: 21),
            ]
        case .portuguese:
            return [
                .midnight: .at(hour: 00),
                .noon: .at(hour: 12),
                // .night: .range(fromHour: 00),
                // .morning1: .range(fromHour: 06),
                // .afternoon1: .range(fromHour: 12),
                // .evening: .range(fromHour: 19),
            ]
        case .romanian:
            return [
                .midnight: .at(hour: 00),
                .noon: .at(hour: 12),
                // .morning1: .range(fromHour: 05),
                // .afternoon1: .range(fromHour: 12),
                // .evening: .range(fromHour: 18),
                // .night: .range(fromHour: 22),
            ]
        case .russian:
            return [
                .midnight: .at(hour: 00),
                .noon: .at(hour: 12),
                // .night: .range(fromHour: 00),
                // .morning1: .range(fromHour: 04),
                // .afternoon1: .range(fromHour: 12),
                // .evening: .range(fromHour: 18),
            ]
        case .sinhala:
            return [
                .midnight: .at(hour: 00),
                .noon: .at(hour: 12),
                // .night2: .range(fromHour: 00),
                // .morning1: .range(fromHour: 01),
                // .morning2: .range(fromHour: 06),
                // .afternoon1: .range(fromHour: 12),
                // .evening: .range(fromHour: 14),
                // .night: .range(fromHour: 18),
            ]
        case .slovak:
            return [
                .midnight: .at(hour: 00),
                .noon: .at(hour: 12),
                // .morning1: .range(fromHour: 04),
                // .morning2: .range(fromHour: 09),
                // .afternoon1: .range(fromHour: 12),
                // .evening: .range(fromHour: 18),
                // .night: .range(fromHour: 22),
            ]
        case .slovenian:
            return [
                .midnight: .at(hour: 00),
                .noon: .at(hour: 12),
                // .morning1: .range(fromHour: 06),
                // .morning2: .range(fromHour: 10),
                // .afternoon1: .range(fromHour: 12),
                // .evening: .range(fromHour: 18),
                // .night: .range(fromHour: 22),
            ]
        case .albanian:
            return [
                .midnight: .at(hour: 00),
                .noon: .at(hour: 12),
                // .night: .range(fromHour: 00),
                // .morning1: .range(fromHour: 04),
                // .morning2: .range(fromHour: 09),
                // .afternoon1: .range(fromHour: 12),
                // .evening: .range(fromHour: 18),
            ]
        case .serbian:
            return [
                .midnight: .at(hour: 00),
                .noon: .at(hour: 12),
                // .morning1: .range(fromHour: 06),
                // .afternoon1: .range(fromHour: 12),
                // .evening: .range(fromHour: 18),
                // .night: .range(fromHour: 21),
            ]
        case .swedish:
            return [
                .midnight: .at(hour: 00),
                // .night: .range(fromHour: 00),
                // .morning1: .range(fromHour: 05),
                // .morning2: .range(fromHour: 10),
                // .afternoon1: .range(fromHour: 12),
                // .evening: .range(fromHour: 18),
            ]
        case .swahili:
            return [
                .midnight: .at(hour: 00),
                .noon: .at(hour: 12),
                // .morning1: .range(fromHour: 04),
                // .morning2: .range(fromHour: 07),
                // .afternoon1: .range(fromHour: 12),
                // .evening: .range(fromHour: 16),
                // .night: .range(fromHour: 19),
            ]
        case .tamil:
            return [
                .midnight: .at(hour: 00),
                .noon: .at(hour: 12),
                // .morning1: .range(fromHour: 03),
                // .morning2: .range(fromHour: 05),
                // .afternoon1: .range(fromHour: 12),
                // .afternoon2: .range(fromHour: 14),
                // .evening: .range(fromHour: 16),
                // .evening2: .range(fromHour: 18),
                // .night: .range(fromHour: 21),
            ]
        case .telugu:
            return [
                .midnight: .at(hour: 00),
                // .morning1: .range(fromHour: 06),
                // .afternoon1: .range(fromHour: 12),
                // .evening: .range(fromHour: 18),
                // .night: .range(fromHour: 21),
            ]
        case .thai:
            return [
                .midnight: .at(hour: 00),
                .noon: .at(hour: 12),
                // .morning1: .range(fromHour: 06),
                // .afternoon1: .range(fromHour: 12),
                // .afternoon2: .range(fromHour: 13),
                // .evening: .range(fromHour: 16),
                // .evening2: .range(fromHour: 18),
                // .night: .range(fromHour: 21),
            ]
        case .turkish:
            return [
                .midnight: .at(hour: 00),
                .noon: .at(hour: 12),
                // .morning1: .range(fromHour: 06),
                // .morning2: .range(fromHour: 11),
                // .afternoon1: .range(fromHour: 12),
                // .afternoon2: .range(fromHour: 18),
                // .evening: .range(fromHour: 19),
                // .night: .range(fromHour: 21),
            ]
        case .ukrainian:
            return [
                .midnight: .at(hour: 00),
                .noon: .at(hour: 12),
                // .night: .range(fromHour: 00),
                // .morning1: .range(fromHour: 04),
                // .afternoon1: .range(fromHour: 12),
                // .evening: .range(fromHour: 18),
            ]
        case .urdu:
            return [
                .midnight: .at(hour: 00),
                // .morning1: .range(fromHour: 04),
                // .afternoon1: .range(fromHour: 12),
                // .afternoon2: .range(fromHour: 16),
                // .evening: .range(fromHour: 18),
                // .night: .range(fromHour: 20),
            ]
        case .uzbek:
            return [
                .midnight: .at(hour: 00),
                .noon: .at(hour: 12),
                // .morning1: .range(fromHour: 06),
                // .afternoon1: .range(fromHour: 11),
                // .evening: .range(fromHour: 18),
                // .night: .range(fromHour: 22),
            ]
        case .vietnamese:
            return [
                .midnight: .at(hour: 00),
                .noon: .at(hour: 12),
                // .morning1: .range(fromHour: 04),
                // .afternoon1: .range(fromHour: 12),
                // .evening: .range(fromHour: 18),
                // .night: .range(fromHour: 21),
            ]
        case .cantonese:
            return [
                .midnight: .at(hour: 00),
                // .night: .range(fromHour: 00),
                // .morning1: .range(fromHour: 05),
                // .morning2: .range(fromHour: 08),
                // .afternoon1: .range(fromHour: 12),
                // .afternoon2: .range(fromHour: 13),
                // .evening: .range(fromHour: 19),
            ]
        case .chinese:
            return [
                .midnight: .at(hour: 00),
                // .night: .range(fromHour: 00),
                // .morning1: .range(fromHour: 05),
                // .morning2: .range(fromHour: 08),
                // .afternoon1: .range(fromHour: 12),
                // .afternoon2: .range(fromHour: 13),
                // .evening: .range(fromHour: 19),
            ]
        default:
            return nil
            
            
            //TODO:
            //        case .current:
            //        case .autoUpdating:
            //        case .afrikaansNamibia:
            //        case .afrikaansSouthAfrica:
            //        case .aghem:
            //        case .aghemCameroon:
            //        case .akan:
            //        case .akanGhana:
            //        case .albanianAlbania:
            //        case .albanianKosovo:
            //        case .albanianMacedonia:
            //        case .amharicEthiopia:
            //        case .arabic:
            //        case .arabicAlgeria:
            //        case .arabicBahrain:
            //        case .arabicChad:
            //        case .arabicComoros:
            //        case .arabicDjibouti:
            //        case .arabicEgypt:
            //        case .arabicEritrea:
            //        case .arabicIraq:
            //        case .arabicIsrael:
            //        case .arabicJordan:
            //        case .arabicKuwait:
            //        case .arabicLebanon:
            //        case .arabicLibya:
            //        case .arabicMauritania:
            //        case .arabicMorocco:
            //        case .arabicOman:
            //        case .arabicPalestinianTerritories:
            //        case .arabicQatar:
            //        case .arabicSaudiArabia:
            //        case .arabicSomalia:
            //        case .arabicSouthSudan:
            //        case .arabicSudan:
            //        case .arabicSyria:
            //        case .arabicTunisia:
            //        case .arabicUnitedArabEmirates:
            //        case .arabicWesternSahara:
            //        case .arabicWorld:
            //        case .arabicYemen:
            //        case .armenianArmenia:
            //        case .assamese:
            //        case .assameseIndia:
            //        case .asu:
            //        case .asuTanzania:
            //        case .azerbaijaniLatn:
            //        case .azerbaijaniAzerbaijan:
            //        case .azerbaijaniCyrillic:
            //        case .azerbaijaniCyrillicAzerbaijan:
            //        case .bafia:
            //        case .bafiaCameroon:
            //        case .bambara:
            //        case .bambaraMali:
            //        case .basaa:
            //        case .basaaCameroon:
            //        case .basqueSpain:
            //        case .belarusian:
            //        case .belarusianBelarus:
            //        case .bemba:
            //        case .bembaZambia:
            //        case .bena:
            //        case .benaTanzania:
            //        case .bengali:
            //        case .bengaliBangladesh:
            //        case .engaliIndia:
            //        case .bodo:
            //        case .bodoIndia:
            //        case .bosnianLatn:
            //        case .bosnianBosniaHerzegovina:
            //        case .bosnianCyrillic:
            //        case .bosnianCyrillicBosniaHerzegovina:
            //        case .breton:
            //        case .bretonFrance:
            //        case .bulgarianBulgaria:
            //        case .burmeseMyanmarBurma:
            //        case .catalanAndorra:
            //        case .catalanFrance:
            //        case .catalanItaly:
            //        case .catalanSpain:
            //        case .centralAtlasTamazight:
            //        case .centralAtlasTamazightMorocco:
            //        case .centralKurdish:
            //        case .centralKurdishIran:
            //        case .centralKurdishIraq:
            //        case .chakma:
            //        case .cherokeeUnitedStates:
            //        case .chiga:
            //        case .chigaUganda:
            //        case .chineseChina:
            //        case .chineseHongKongSarChina:
            //        case .chineseMacauSarChina:
            //        case .chineseSimplified:
            //        case .chineseSimplifiedHongKongSarChina:
            //        case .chineseSimplifiedMacauSarChina:
            //        case .chineseSingapore:
            //        case .chineseTaiwan:
            //        case .chineseTraditional:
            //        case .colognian:
            //        case .colognianGermany:
            //        case .cornish:
            //        case .cornishUnitedKingdom:
            //        case .croatianBosniaHerzegovina:
            //        case .croatianCroatia:
            //        case .czechCzechRepublic:
            //        case .danishDenmark:
            //        case .danishGreenland:
            //        case .duala:
            //        case .dualaCameroon:
            //        case .dutchAruba:
            //        case .dutchBelgium:
            //        case .dutchCaribbeanNetherlands:
            //        case .dutchCuraao:
            //        case .dutchNetherlands:
            //        case .dutchSintMaarten:
            //        case .dutchSuriname:
            //        case .dzongkha:
            //        case .dzongkhaBhutan:
            //        case .embu:
            //        case .embuKenya:
            //        case .englishAlbania:
            //        case .englishAmericanSamoa:
            //        case .englishAndorra:
            //        case .englishAnguilla:
            //        case .englishAntiguaBarbuda:
            //        case .englishAustralia:
            //        case .englishAustria:
            //        case .englishBahamas:
            //        case .englishBarbados:
            //        case .englishBelgium:
            //        case .englishBelize:
            //        case .englishBermuda:
            //        case .englishBosniaHerzegovina:
            //        case .englishBotswana:
            //        case .englishBritishIndianOceanTerritory:
            //        case .englishBritishVirginIslands:
            //        case .englishCameroon:
            //        case .englishCanada:
            //        case .englishCaymanIslands:
            //        case .englishChristmasIsland:
            //        case .englishCocosKeelingIslands:
            //        case .englishCookIslands:
            //        case .englishCroatia:
            //        case .englishCyprus:
            //        case .englishCzechRepublic:
            //        case .englishDenmark:
            //        case .englishDiegoGarcia:
            //        case .englishDominica:
            //        case .englishEritrea:
            //        case .englishEstonia:
            //        case .englishEurope:
            //        case .englishFalklandIslands:
            //        case .englishFiji:
            //        case .englishFinland:
            //        case .englishFrance:
            //        case .englishGambia:
            //        case .englishGermany:
            //        case .englishGhana:
            //        case .englishGibraltar:
            //        case .englishGreece:
            //        case .englishGrenada:
            //        case .englishGuam:
            //        case .englishGuernsey:
            //        case .englishGuyana:
            //        case .englishHongKongSarChina:
            //        case .englishHungary:
            //        case .englishIceland:
            //        case .englishIndia:
            //        case .englishIreland:
            //        case .englishIsleOfMan:
            //        case .englishIsrael:
            //        case .englishItaly:
            //        case .englishJamaica:
            //        case .englishJersey:
            //        case .englishKenya:
            //        case .englishKiribati:
            //        case .englishLatvia:
            //        case .englishLesotho:
            //        case .englishLiberia:
            //        case .englishLithuania:
            //        case .englishLuxembourg:
            //        case .englishMacauSarChina:
            //        case .englishMadagascar:
            //        case .englishMalawi:
            //        case .englishMalaysia:
            //        case .englishMalta:
            //        case .englishMarshallIslands:
            //        case .englishMauritius:
            //        case .englishMicronesia:
            //        case .englishMontenegro:
            //        case .englishMontserrat:
            //        case .englishNamibia:
            //        case .englishNauru:
            //        case .englishNetherlands:
            //        case .englishNewZealand:
            //        case .englishNigeria:
            //        case .englishNiue:
            //        case .englishNorfolkIsland:
            //        case .englishNorthernMarianaIslands:
            //        case .englishNorway:
            //        case .englishPakistan:
            //        case .englishPalau:
            //        case .englishPapuaNewGuinea:
            //        case .englishPhilippines:
            //        case .englishPitcairnIslands:
            //        case .englishPoland:
            //        case .englishPortugal:
            //        case .englishPuertoRico:
            //        case .englishRomania:
            //        case .englishRussia:
            //        case .englishRwanda:
            //        case .englishSamoa:
            //        case .englishSeychelles:
            //        case .englishSierraLeone:
            //        case .englishSingapore:
            //        case .englishSintMaarten:
            //        case .englishSlovakia:
            //        case .englishSlovenia:
            //        case .englishSolomonIslands:
            //        case .englishSouthAfrica:
            //        case .englishSouthSudan:
            //        case .englishSpain:
            //        case .englishStHelena:
            //        case .englishStKittsNevis:
            //        case .englishStLucia:
            //        case .englishStVincentGrenadines:
            //        case .englishSudan:
            //        case .englishSwaziland:
            //        case .englishSweden:
            //        case .englishSwitzerland:
            //        case .englishTanzania:
            //        case .englishTokelau:
            //        case .englishTonga:
            //        case .englishTrinidadTobago:
            //        case .englishTurkey:
            //        case .englishTurksCaicosIslands:
            //        case .englishTuvalu:
            //        case .englishUSOutlyingIslands:
            //        case .englishUSVirginIslands:
            //        case .englishUganda:
            //        case .englishUnitedKingdom:
            //        case .englishUnitedStates:
            //        case .englishUnitedStatesComputer:
            //        case .englishVanuatu:
            //        case .englishWorld:
            //        case .englishZambia:
            //        case .englishZimbabwe:
            //        case .esperanto:
            //        case .estonianEstonia:
            //        case .ewe:
            //        case .eweGhana:
            //        case .eweTogo:
            //        case .ewondo:
            //        case .ewondoCameroon:
            //        case .faroese:
            //        case .faroeseFaroeIslands:
            //        case .filipinoPhilippines:
            //        case .finnishFinland:
            //        case .frenchAlgeria:
            //        case .frenchBelgium:
            //        case .frenchBenin:
            //        case .frenchBurkinaFaso:
            //        case .frenchBurundi:
            //        case .frenchCameroon:
            //        case .frenchCanada:
            //        case .frenchCentralAfricanRepublic:
            //        case .frenchChad:
            //        case .frenchComoros:
            //        case .frenchCongoBrazzaville:
            //        case .frenchCongoKinshasa:
            //        case .frenchCteDivoire:
            //        case .frenchDjibouti:
            //        case .frenchEquatorialGuinea:
            //        case .frenchFrance:
            //        case .frenchFrenchGuiana:
            //        case .frenchFrenchPolynesia:
            //        case .frenchGabon:
            //        case .frenchGuadeloupe:
            //        case .frenchGuinea:
            //        case .frenchHaiti:
            //        case .frenchLuxembourg:
            //        case .frenchMadagascar:
            //        case .frenchMali:
            //        case .frenchMartinique:
            //        case .frenchMauritania:
            //        case .frenchMauritius:
            //        case .frenchMayotte:
            //        case .frenchMonaco:
            //        case .frenchMorocco:
            //        case .frenchNewCaledonia:
            //        case .frenchNiger:
            //        case .frenchRunion:
            //        case .frenchRwanda:
            //        case .frenchSenegal:
            //        case .frenchSeychelles:
            //        case .frenchStBarthlemy:
            //        case .frenchStMartin:
            //        case .frenchStPierreMiquelon:
            //        case .frenchSwitzerland:
            //        case .frenchSyria:
            //        case .frenchTogo:
            //        case .frenchTunisia:
            //        case .frenchVanuatu:
            //        case .frenchWallisFutuna:
            //        case .friulian:
            //        case .friulianItaly:
            //        case .fulah:
            //        case .fulahCameroon:
            //        case .fulahGuinea:
            //        case .fulahMauritania:
            //        case .fulahSenegal:
            //        case .galicianSpain:
            //        case .ganda:
            //        case .gandaUganda:
            //        case .georgianGeorgia:
            //        case .germanAustria:
            //        case .germanBelgium:
            //        case .germanGermany:
            //        case .germanLiechtenstein:
            //        case .germanLuxembourg:
            //        case .germanSwitzerland:
            //        case .greek:
            //        case .greekCyprus:
            //        case .greekGreece:
            //        case .gujaratiIndia:
            //        case .gusii:
            //        case .gusiiKenya:
            //        case .hausa:
            //        case .hausaGhana:
            //        case .hausaNiger:
            //        case .hausaNigeria:
            //        case .hawaiian:
            //        case .hawaiianUnitedStates:
            //        case .hebrewIsrael:
            //        case .hindiIndia:
            //        case .hungarianHungary:
            //        case .icelandicIceland:
            //        case .igbo:
            //        case .igboNigeria:
            //        case .inariSami:
            //        case .inariSamiFinland:
            //        case .indonesianIndonesia:
            //        case .inuktitut:
            //        case .inuktitutUnifiedCanadianAboriginalSyllabics:
            //        case .inuktitutUnifiedCanadianAboriginalSyllabicsCanada:
            //        case .irish:
            //        case .irishIreland:
            //        case .italianItaly:
            //        case .italianSanMarino:
            //        case .italianSwitzerland:
            //        case .japaneseJapan:
            //        case .jolaFonyi:
            //        case .jolaFonyiSenegal:
            //        case .kabuverdianu:
            //        case .kabuverdianuCapeVerde:
            //        case .kabyle:
            //        case .kabyleAlgeria:
            //        case .kako:
            //        case .kakoCameroon:
            //        case .kalaallisut:
            //        case .kalaallisutGreenland:
            //        case .kalenjin:
            //        case .kalenjinKenya:
            //        case .kamba:
            //        case .kambaKenya:
            //        case .kannadaIndia:
            //        case .kashmiri:
            //        case .kashmiriArabic:
            //        case .kashmiriArabicIndia:
            //        case .kazakhCyrl:
            //        case .kazakhKazakhstan:
            //        case .khmerCambodia:
            //        case .kikuyu:
            //        case .kikuyuKenya:
            //        case .kinyarwanda:
            //        case .kinyarwandaRwanda:
            //        case .konkani:
            //        case .konkaniIndia:
            //        case .koreanNorthKorea:
            //        case .koreanSouthKorea:
            //        case .koyraChiini:
            //        case .koyraChiiniMali:
            //        case .koyraboroSenni:
            //        case .koyraboroSenniMali:
            //        case .kwasio:
            //        case .kwasioCameroon:
            //        case .kyrgyzCyrl:
            //        case .kyrgyzKyrgyzstan:
            //        case .lakota:
            //        case .lakotaUnitedStates:
            //        case .langi:
            //        case .langiTanzania:
            //        case .laoLaos:
            //        case .latvianLatvia:
            //        case .lingala:
            //        case .lingalaAngola:
            //        case .lingalaCentralAfricanRepublic:
            //        case .lingalaCongoBrazzaville:
            //        case .lingalaCongoKinshasa:
            //        case .lithuanianLithuania:
            //        case .lowerSorbian:
            //        case .lowerSorbianGermany:
            //        case .lubaKatanga:
            //        case .lubaKatangaCongoKinshasa:
            //        case .luo:
            //        case .luoKenya:
            //        case .luxembourgish:
            //        case .luxembourgishLuxembourg:
            //        case .luyia:
            //        case .luyiaKenya:
            //        case .macedonianMacedonia:
            //        case .machame:
            //        case .machameTanzania:
            //        case .makhuwaMeetto:
            //        case .makhuwaMeettoMozambique:
            //        case .makonde:
            //        case .makondeTanzania:
            //        case .malagasy:
            //        case .malagasyMadagascar:
            //        case .malay:
            //        case .malayLatn:
            //        case .malayArabic:
            //        case .malayArabicBrunei:
            //        case .malayArabicMalaysia:
            //        case .malayBrunei:
            //        case .malayMalaysia:
            //        case .malaySingapore:
            //        case .malayalamIndia:
            //        case .maltese:
            //        case .malteseMalta:
            //        case .manx:
            //        case .manxIsleOfMan:
            //        case .marathiIndia:
            //        case .masai:
            //        case .masaiKenya:
            //        case .masaiTanzania:
            //        case .meru:
            //        case .meruKenya:
            //        case .meta:
            //        case .metaCameroon:
            //        case .mongolianCyrl:
            //        case .mongolianMongolia:
            //        case .morisyen:
            //        case .morisyenMauritius:
            //        case .mundang:
            //        case .mundangCameroon:
            //        case .nama:
            //        case .namaNamibia:
            //        case .nepaliIndia:
            //        case .nepaliNepal:
            //        case .ngiemboon:
            //        case .ngiemboonCameroon:
            //        case .ngomba:
            //        case .ngombaCameroon:
            //        case .northNdebele:
            //        case .northNdebeleZimbabwe:
            //        case .northernSami:
            //        case .northernSamiFinland:
            //        case .northernSamiNorway:
            //        case .northernSamiSweden:
            //        case .norwegianBokmlNorway:
            //        case .norwegianBokmlSvalbardJanMayen:
            //        case .norwegianNynorsk:
            //        case .norwegianNynorskNorway:
            //        case .nuer:
            //        case .nuerSudan:
            //        case .nyankole:
            //        case .nyankoleUganda:
            //        case .oriya:
            //        case .oriyaIndia:
            //        case .oromo:
            //        case .oromoEthiopia:
            //        case .oromoKenya:
            //        case .ossetic:
            //        case .osseticGeorgia:
            //        case .osseticRussia:
            //        case .pashto:
            //        case .pashtoAfghanistan:
            //        case .persian:
            //        case .persianAfghanistan:
            //        case .persianIran:
            //        case .polishPoland:
            //        case .portugueseAngola:
            //        case .portugueseBrazil:
            //        case .portugueseCapeVerde:
            //        case .portugueseGuineaBissau:
            //        case .portugueseMacauSarChina:
            //        case .portugueseMozambique:
            //        case .portuguesePortugal:
            //        case .portugueseSoTomPrncipe:
            //        case .portugueseTimorLeste:
            //        case .punjabiGuru:
            //        case .punjabiArabic:
            //        case .punjabiArabicPakistan:
            //        case .punjabiIndia:
            //        case .quechua:
            //        case .quechuaBolivia:
            //        case .quechuaEcuador:
            //        case .quechuaPeru:
            //        case .romanianMoldova:
            //        case .romanianRomania:
            //        case .romansh:
            //        case .romanshSwitzerland:
            //        case .rombo:
            //        case .romboTanzania:
            //        case .rundi:
            //        case .rundiBurundi:
            //        case .russianBelarus:
            //        case .russianKazakhstan:
            //        case .russianKyrgyzstan:
            //        case .russianMoldova:
            //        case .russianRussia:
            //        case .russianUkraine:
            //        case .rwa:
            //        case .rwaTanzania:
            //        case .sakha:
            //        case .sakhaRussia:
            //        case .samburu:
            //        case .samburuKenya:
            //        case .sango:
            //        case .sangoCentralAfricanRepublic:
            //        case .sangu:
            //        case .sanguTanzania:
            //        case .scottishGaelic:
            //        case .scottishGaelicUnitedKingdom:
            //        case .sena:
            //        case .senaMozambique:
            //        case .serbianCyrl:
            //        case .serbianBosniaHerzegovina:
            //        case .serbianKosovo:
            //        case .serbianLatin:
            //        case .serbianLatinBosniaHerzegovina:
            //        case .serbianLatinKosovo:
            //        case .serbianLatinMontenegro:
            //        case .serbianLatinSerbia:
            //        case .serbianMontenegro:
            //        case .serbianSerbia:
            //        case .shambala:
            //        case .shambalaTanzania:
            //        case .shona:
            //        case .shonaZimbabwe:
            //        case .sichuanYi:
            //        case .sichuanYiChina:
            //        case .sinhalaSriLanka:
            //        case .slovakSlovakia:
            //        case .slovenianSlovenia:
            //        case .soga:
            //        case .sogaUganda:
            //        case .somali:
            //        case .somaliDjibouti:
            //        case .somaliEthiopia:
            //        case .somaliKenya:
            //        case .somaliSomalia:
            //        case .spanishArgentina:
            //        case .spanishBolivia:
            //        case .spanishCanaryIslands:
            //        case .spanishCeutaMelilla:
            //        case .spanishChile:
            //        case .spanishCostaRica:
            //        case .spanishCuba:
            //        case .spanishDominicanRepublic:
            //        case .spanishEcuador:
            //        case .spanishElSalvador:
            //        case .spanishEquatorialGuinea:
            //        case .spanishGuatemala:
            //        case .spanishHonduras:
            //        case .spanishLatinAmerica:
            //        case .spanishMexico:
            //        case .spanishNicaragua:
            //        case .spanishPanama:
            //        case .spanishParaguay:
            //        case .spanishPeru:
            //        case .spanishPhilippines:
            //        case .spanishPuertoRico:
            //        case .spanishSpain:
            //        case .spanishUnitedStates:
            //        case .spanishUruguay:
            //        case .spanishVenezuela:
            //        case .standardMoroccanTamazight:
            //        case .standardMoroccanTamazightMorocco:
            //        case .swahiliCongoKinshasa:
            //        case .swahiliKenya:
            //        case .swahiliTanzania:
            //        case .swahiliUganda:
            //        case .swedishlandIslands:
            //        case .swedishFinland:
            //        case .swedishSweden:
            //        case .swissGermanFrance:
            //        case .swissGermanLiechtenstein:
            //        case .swissGermanSwitzerland:
            //        case .tachelhit:
            //        case .tachelhitMorocco:
            //        case .tachelhitTifinagh:
            //        case .tachelhitTifinaghMorocco:
            //        case .taita:
            //        case .taitaKenya:
            //        case .tajik:
            //        case .tajikTajikistan:
            //        case .tamilIndia:
            //        case .tamilMalaysia:
            //        case .tamilSingapore:
            //        case .tamilSriLanka:
            //        case .tasawaq:
            //        case .tasawaqNiger:
            //        case .teluguIndia:
            //        case .teso:
            //        case .tesoKenya:
            //        case .tesoUganda:
            //        case .thaiThailand:
            //        case .tibetan:
            //        case .tibetanChina:
            //        case .tibetanIndia:
            //        case .tigrinya:
            //        case .tigrinyaEritrea:
            //        case .tigrinyaEthiopia:
            //        case .tongan:
            //        case .tonganTonga:
            //        case .turkishCyprus:
            //        case .turkishTurkey:
            //        case .turkmen:
            //        case .turkmenTurkmenistan:
            //        case .ukrainianUkraine:
            //        case .upperSorbian:
            //        case .upperSorbianGermany:
            //        case .urduIndia:
            //        case .urduPakistan:
            //        case .uyghur:
            //        case .uyghurArabic:
            //        case .uyghurArabicChina:
            //        case .uzbekCyrl:
            //        case .uzbekArabic:
            //        case .uzbekArabicAfghanistan:
            //        case .uzbekLatin:
            //        case .uzbekLatinUzbekistan:
            //        case .uzbekUzbekistan:
            //        case .vai:
            //        case .vaiLatin:
            //        case .vaiLatinLiberia:
            //        case .vaiLiberia:
            //        case .vietnameseVietnam:
            //        case .vunjo:
            //        case .vunjoTanzania:
            //        case .walser:
            //        case .walserSwitzerland:
            //        case .welshUnitedKingdom:
            //        case .westernFrisian:
            //        case .westernFrisianNetherlands:
            //        case .yangben:
            //        case .yangbenCameroon:
            //        case .yiddish:
            //        case .yiddishWorld:
            //        case .yoruba:
            //        case .yorubaBenin:
            //        case .yorubaNigeria:
            //        case .zarma:
            //        case .zarmaNiger:
            //        case .zulu:
            //        case .zuluSouthAfrica:
            
            //        case .arabic:
            // return [
            // .night: .range(fromHour: 00),
            // .night2: .range(fromHour: 01),
            // .morning1: .range(fromHour: 03),
            // .morning2: .range(fromHour: 06),
            // .afternoon1: .range(fromHour: 12),
            // .afternoon2: .range(fromHour: 13),
            // .evening: .range(fromHour: 18),
            //        ]
            
            //        case .bengali:
            //  return [
            // .morning1: .range(fromHour: 04),
            // .morning2: .range(fromHour: 06),
            // .afternoon1: .range(fromHour: 12),
            // .afternoon2: .range(fromHour: 16),
            // .evening: .range(fromHour: 18),
            // .night: .range(fromHour: 20),
            //        ]
            //        case .chakma:
            //  return [
            // .morning1: .range(fromHour: 04),
            // .morning2: .range(fromHour: 06),
            // .afternoon1: .range(fromHour: 12),
            // .afternoon2: .range(fromHour: 16),
            // .evening: .range(fromHour: 18),
            // .night: .range(fromHour: 20),
            //        ]
            
            //        case .greek:
            // return [
            // .morning1: .range(fromHour: 04),
            // .afternoon1: .range(fromHour: 12),
            // .evening: .range(fromHour: 17),
            // .night: .range(fromHour: 20),
            //        ]
            //        case .persian:
            // return [
            // .night2: .range(fromHour: 00),
            // .morning1: .range(fromHour: 01),
            // .morning2: .range(fromHour: 04),
            // .afternoon1: .range(fromHour: 12),
            // .afternoon2: .range(fromHour: 13),
            // .night: .range(fromHour: 19),
            //        ]
            
            //        case .malay:
            //   return [
            // .morning1: .range(fromHour: 00),
            // .morning2: .range(fromHour: 01),
            // .afternoon1: .range(fromHour: 12),
            // .evening: .range(fromHour: 14),
            // .night: .range(fromHour: 19),
            //        ]
            
            //        case .zulu:
            //   return [
            // .morning1: .range(fromHour: 00),
            // .morning2: .range(fromHour: 06),
            // .afternoon1: .range(fromHour: 10),
            // .evening: .range(fromHour: 13),
            // .night: .range(fromHour: 19),
            //        ]
        }
    }
}
