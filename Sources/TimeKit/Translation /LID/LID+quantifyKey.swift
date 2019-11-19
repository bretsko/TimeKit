//
//
////
//
// //TODO: need to reimpl (or bridge to LangID)
//public extension LID {
//
//    enum PluralForm: Str, StrEnumT {
//        case zero, one, two, few, many, other
//    }
//
//    func quantifyKey(for value: Double) -> PluralForm? {
//
//        switch self {
//
//        case .sr_Latn, .uk:
//            // .sr,
//
//            let mod10 = Int(value) % 10
//            let mod100 = Int(value) % 100
//
//            switch mod10 {
//            case 1:
//                switch mod100 {
//                case 11:
//                    return .many
//                default:
//                    return .one
//                }
//            case 2, 3, 4:
//                switch mod100 {
//                case 12, 13, 14:
//                    return .many
//                default:
//                    return .few
//                }
//            default:
//                return .many
//            }
//
//        case .ru, .sk, .sl:
//            let mod10 = Int(value) % 10
//            let mod100 = Int(value) % 100
//
//            switch mod100 {
//            case 11...14:
//                return .many
//
//            default:
//                switch mod10 {
//                case 1:
//                    return .one
//                case 2...4:
//                    return .few
//                default:
//                    return .many
//                }
//            }
//
//        case .ro:
//            let mod100 = Int(value) % 100
//
//            switch value {
//            case 0:
//                return .few
//            case 1:
//                return .one
//            default:
//                if mod100 > 1 && mod100 <= 19 {
//                    return .few
//                }
//            }
//            return .other
//
//        case .pa:
//            switch value {
//            case 0, 1:
//                return .one
//            default:
//                return .other
//            }
//
//        case .mt:
//            switch value {
//            case 1:
//                return .one
//            case 0:
//                return .few
//            case 2...10:
//                return .few
//            case 11...19:
//                return .many
//            default:
//                return .other
//            }
//
//        case .lt, .lv:
//            let mod10 = Int(value) % 10
//            let mod100 = Int(value) % 100
//
//            if value == 0 {
//                return .zero
//            }
//
//            if value == 1 {
//                return .one
//            }
//
//            switch mod10 {
//            case 1:
//                if mod100 != 11 {
//                    return .one
//                }
//                return .many
//            default:
//                return .many
//            }
//
//        case .ksh, .se:
//            switch value {
//            case 0:
//                return .zero
//            case 1:
//                return .one
//            default:
//                return .other
//            }
//
//        case ._is:
//            let mod10 = Int(value) % 10
//            let mod100 = Int(value) % 100
//
//            if value == 0 {
//                return .zero
//            }
//
//            if value == 1 {
//                return .one
//            }
//
//            switch mod10 {
//            case 1:
//                if mod100 != 11 {
//                    return .one
//                }
//                return .many
//            default:
//                return .many
//            }
//
//        case .id, .ja, .ms, .my, .mzn, .sah, .se_FI, .si, .th, .yue_Hans, .yue_Hant,
//             .zh_Hans_HK, .zh_Hans_MO, .zh_Hans_SG, .zh_Hant_HK, .zh:
//            //.zh_Hant_MO
//
//            return .other
//
//        case .hy:
//            return value >= 0 && value < 2 ? .one : .other
//
//        case .ga, .gd:
//            switch Int(value) {
//            case 1:
//                return .one
//            case 2:
//                return .two
//            case 3...6:
//                return .few
//            case 7...10:
//                return .many
//            default:
//                return .other
//            }
//
//        case .fr_CA, .fr:
//            return value >= 0 && value < 2 ? .one : .other
//
//        case .dz, .kea, .ko, .kok, .lkt, .lo:
//            return nil
//
//        case .cs: // LID.czech
//            switch value {
//            case 1:
//                return .one
//            case 2, 3, 4:
//                return .few
//            default:
//                return .other
//            }
//
//        case .cy:
//            switch value {
//            case 0:
//                return .zero
//            case 1:
//                return .one
//            case 2:
//                return .two
//            case 3:
//                return .few
//            case 6:
//                return .many
//            default:
//                return .other
//            }
//
//        case .dsb:
//            //.cz,
//            switch value {
//            case 1:
//                return .one
//            case 2, 3, 4:
//                return .few
//            default:
//                return .other
//            }
//
//        case .br:
//            let n = Int(value)
//            return n % 10 == 1 && n % 100 != 11 && n % 100 != 71 && n % 100 != 91 ? .zero : n % 10 == 2 && n % 100 != 12 && n % 100 != 72 && n % 100 != 92 ? .one : (n % 10 == 3 || n % 10 == 4 || n % 10 == 9) && n % 100 != 13 && n % 100 != 14 && n % 100 != 19 && n % 100 != 73 && n % 100 != 74 && n % 100 != 79 && n % 100 != 93 && n % 100 != 94 && n % 100 != 99 ? .two : n % 1_000_000 == 0 && n != 0 ? .many : .other
//
//        case .be, .bs, .bs_Cyrl, .hr, .hsb, .pl:
//            let mod10 = Int(value) % 10
//            let mod100 = Int(value) % 100
//
//            switch mod10 {
//            case 1:
//                switch mod100 {
//                case 11:
//                    return .many
//                default:
//                    return .one
//                }
//            case 2, 3, 4:
//                switch mod100 {
//                case 12, 13, 14:
//                    return .many
//                default:
//                    return .few
//                }
//            default:
//                return .many
//            }
//
//        case .ar, .ar_AE, .he:
//            switch value {
//            case 0:
//                return .zero
//            case 1:
//                return .one
//            case 2:
//                return .two
//            default:
//                let mod100 = Int(value) % 100
//                if mod100 >= 3 && mod100 <= 10 {
//                    return .few
//                } else if mod100 >= 11 {
//                    return .many
//                } else {
//                    return .other
//                }
//            }
//
//        case .am, .bn, .fa, .gu, .kn, .mr, .zu:
//            return value >= 0 && value <= 1 ? .one : .other
//
//        default:
//            return value == 1 ? .one : .other
//        }
//    }
//}
