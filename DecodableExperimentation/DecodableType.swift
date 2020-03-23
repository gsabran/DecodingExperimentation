import Foundation


struct DecodableType: Decodable {
  let Wvpzl: [Double]
  let zfzHr: [Type_zfzHr]
  let ioKXN: Double
  let DSEpJ: [Type_DSEpJ]
  let xInEB: Double
  let CZqab: Double
  
  struct Type_zfzHr: Decodable {
    let XcKdj: Type_XcKdj
    let xsPRX: Double
    let rzPys: String
    let WgRgF: Double
    let Dkxhe: String
    let gGysX: [Type_gGysX]
    
    struct Type_XcKdj: Decodable {
      let KJsWE: String
      let pOkpi: Type_pOkpi
      let PwPNL: [String]
      let WGSHU: [Type_WGSHU]
      let NzKwB: String
      let CmhHE: Double
      
      struct Type_pOkpi: Decodable {
        let MZWjW: String
        let zQmbL: [Double]
        let sLCad: [Type_sLCad]
        let LYSSY: Double
        let CDjUB: String
        let dcqLa: Type_dcqLa
        
        struct Type_sLCad: Decodable {
          let hsLQP: Double
          let ZCoWf: String
          let ygLRG: Double
          let rxcgm: String
          let foSfA: Double
          let WCSbf: [Double]
          
        }
        struct Type_dcqLa: Decodable {
          let diugR: [String]
          let eknPb: Double
          let bzsFd: String
          let UyPhj: String
          let lMurI: String
          let YgjgW: Double
          
        }
      }
      struct Type_WGSHU: Decodable {
        let GSrmx: Double
        let FYSLL: [Double]
        let ReCyW: Double
        let fMkPa: String
        let PRxMS: Double
        let rWqDd: String
        
      }
    }
    struct Type_gGysX: Decodable {
      let qRNJl: Double
      let TBOCv: String
      let QKlKa: Double
      let mAASx: Double
      let BhsKO: String
      let pMDdr: Type_pMDdr
      
      struct Type_pMDdr: Decodable {
        let ndvAN: Double
        let qalwq: String
        let uFLDC: Double
        let HQAuo: Double
        let bQZug: Double
        let Fnfik: [String]
        
      }
    }
  }
  struct Type_DSEpJ: Decodable {
    let BSBOd: Double
    let SIjlu: Double
    let KYGaR: Double
    let qmrIE: Type_qmrIE
    let XHeqk: Type_XHeqk
    let aiwjr: String
    
    struct Type_qmrIE: Decodable {
      let COskH: Double
      let WjsgJ: Double
      let otpqz: Type_otpqz
      let eDLqm: Double
      let yyzvM: String
      let JdhlH: String
      
      struct Type_otpqz: Decodable {
        let ifokL: [String]
        let DXpQE: Double
        let YarRd: Double
        let EJAOW: String
        let fyQsE: Double
        let FFpXK: Double
        
      }
    }
    struct Type_XHeqk: Decodable {
      let UrIHx: Double
      let glRYh: Double
      let VpTHX: Double
      let wjuRb: Type_wjuRb
      let Gepld: Double
      let lQqdh: String
      
      struct Type_wjuRb: Decodable {
        let Mdlex: String
        let ECWuq: [Double]
        let eEKyp: Double
        let IiNcY: String
        let wXdpl: Double
        let zmSMh: String
        
      }
    }
  }
}