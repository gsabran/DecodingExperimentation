import Foundation


struct BasicType {
  let Wvpzl: [Double]
  let zfzHr: [Type_zfzHr]
  let ioKXN: Double
  let DSEpJ: [Type_DSEpJ]
  let xInEB: Double
  let CZqab: Double

  init(_ dict: [String: Any]) throws {
    Wvpzl = try parse(dict["Wvpzl"], as: [Double].self)
    zfzHr = try parse(dict["zfzHr"], as: [[String: Any]].self).map { try Type_zfzHr($0) }
    ioKXN = try parse(dict["ioKXN"], as: Double.self)
    DSEpJ = try parse(dict["DSEpJ"], as: [[String: Any]].self).map { try Type_DSEpJ($0) }
    xInEB = try parse(dict["xInEB"], as: Double.self)
    CZqab = try parse(dict["CZqab"], as: Double.self)
  }
  
  struct Type_zfzHr {
    let XcKdj: Type_XcKdj
    let xsPRX: Double
    let rzPys: String
    let WgRgF: Double
    let Dkxhe: String
    let gGysX: [Type_gGysX]
  
    init(_ dict: [String: Any]) throws {
      XcKdj = try Type_XcKdj(try parse(dict["XcKdj"], as: [String: Any].self))
      xsPRX = try parse(dict["xsPRX"], as: Double.self)
      rzPys = try parse(dict["rzPys"], as: String.self)
      WgRgF = try parse(dict["WgRgF"], as: Double.self)
      Dkxhe = try parse(dict["Dkxhe"], as: String.self)
      gGysX = try parse(dict["gGysX"], as: [[String: Any]].self).map { try Type_gGysX($0) }
    }
    
    struct Type_XcKdj {
      let KJsWE: String
      let pOkpi: Type_pOkpi
      let PwPNL: [String]
      let WGSHU: [Type_WGSHU]
      let NzKwB: String
      let CmhHE: Double
    
      init(_ dict: [String: Any]) throws {
        KJsWE = try parse(dict["KJsWE"], as: String.self)
        pOkpi = try Type_pOkpi(try parse(dict["pOkpi"], as: [String: Any].self))
        PwPNL = try parse(dict["PwPNL"], as: [String].self)
        WGSHU = try parse(dict["WGSHU"], as: [[String: Any]].self).map { try Type_WGSHU($0) }
        NzKwB = try parse(dict["NzKwB"], as: String.self)
        CmhHE = try parse(dict["CmhHE"], as: Double.self)
      }
      
      struct Type_pOkpi {
        let MZWjW: String
        let zQmbL: [Double]
        let sLCad: [Type_sLCad]
        let LYSSY: Double
        let CDjUB: String
        let dcqLa: Type_dcqLa
      
        init(_ dict: [String: Any]) throws {
          MZWjW = try parse(dict["MZWjW"], as: String.self)
          zQmbL = try parse(dict["zQmbL"], as: [Double].self)
          sLCad = try parse(dict["sLCad"], as: [[String: Any]].self).map { try Type_sLCad($0) }
          LYSSY = try parse(dict["LYSSY"], as: Double.self)
          CDjUB = try parse(dict["CDjUB"], as: String.self)
          dcqLa = try Type_dcqLa(try parse(dict["dcqLa"], as: [String: Any].self))
        }
        
        struct Type_sLCad {
          let hsLQP: Double
          let ZCoWf: String
          let ygLRG: Double
          let rxcgm: String
          let foSfA: Double
          let WCSbf: [Double]
        
          init(_ dict: [String: Any]) throws {
            hsLQP = try parse(dict["hsLQP"], as: Double.self)
            ZCoWf = try parse(dict["ZCoWf"], as: String.self)
            ygLRG = try parse(dict["ygLRG"], as: Double.self)
            rxcgm = try parse(dict["rxcgm"], as: String.self)
            foSfA = try parse(dict["foSfA"], as: Double.self)
            WCSbf = try parse(dict["WCSbf"], as: [Double].self)
          }
          
        }
        struct Type_dcqLa {
          let diugR: [String]
          let eknPb: Double
          let bzsFd: String
          let UyPhj: String
          let lMurI: String
          let YgjgW: Double
        
          init(_ dict: [String: Any]) throws {
            diugR = try parse(dict["diugR"], as: [String].self)
            eknPb = try parse(dict["eknPb"], as: Double.self)
            bzsFd = try parse(dict["bzsFd"], as: String.self)
            UyPhj = try parse(dict["UyPhj"], as: String.self)
            lMurI = try parse(dict["lMurI"], as: String.self)
            YgjgW = try parse(dict["YgjgW"], as: Double.self)
          }
          
        }
      }
      struct Type_WGSHU {
        let GSrmx: Double
        let FYSLL: [Double]
        let ReCyW: Double
        let fMkPa: String
        let PRxMS: Double
        let rWqDd: String
      
        init(_ dict: [String: Any]) throws {
          GSrmx = try parse(dict["GSrmx"], as: Double.self)
          FYSLL = try parse(dict["FYSLL"], as: [Double].self)
          ReCyW = try parse(dict["ReCyW"], as: Double.self)
          fMkPa = try parse(dict["fMkPa"], as: String.self)
          PRxMS = try parse(dict["PRxMS"], as: Double.self)
          rWqDd = try parse(dict["rWqDd"], as: String.self)
        }
        
      }
    }
    struct Type_gGysX {
      let qRNJl: Double
      let TBOCv: String
      let QKlKa: Double
      let mAASx: Double
      let BhsKO: String
      let pMDdr: Type_pMDdr
    
      init(_ dict: [String: Any]) throws {
        qRNJl = try parse(dict["qRNJl"], as: Double.self)
        TBOCv = try parse(dict["TBOCv"], as: String.self)
        QKlKa = try parse(dict["QKlKa"], as: Double.self)
        mAASx = try parse(dict["mAASx"], as: Double.self)
        BhsKO = try parse(dict["BhsKO"], as: String.self)
        pMDdr = try Type_pMDdr(try parse(dict["pMDdr"], as: [String: Any].self))
      }
      
      struct Type_pMDdr {
        let ndvAN: Double
        let qalwq: String
        let uFLDC: Double
        let HQAuo: Double
        let bQZug: Double
        let Fnfik: [String]
      
        init(_ dict: [String: Any]) throws {
          ndvAN = try parse(dict["ndvAN"], as: Double.self)
          qalwq = try parse(dict["qalwq"], as: String.self)
          uFLDC = try parse(dict["uFLDC"], as: Double.self)
          HQAuo = try parse(dict["HQAuo"], as: Double.self)
          bQZug = try parse(dict["bQZug"], as: Double.self)
          Fnfik = try parse(dict["Fnfik"], as: [String].self)
        }
        
      }
    }
  }
  struct Type_DSEpJ {
    let BSBOd: Double
    let SIjlu: Double
    let KYGaR: Double
    let qmrIE: Type_qmrIE
    let XHeqk: Type_XHeqk
    let aiwjr: String
  
    init(_ dict: [String: Any]) throws {
      BSBOd = try parse(dict["BSBOd"], as: Double.self)
      SIjlu = try parse(dict["SIjlu"], as: Double.self)
      KYGaR = try parse(dict["KYGaR"], as: Double.self)
      qmrIE = try Type_qmrIE(try parse(dict["qmrIE"], as: [String: Any].self))
      XHeqk = try Type_XHeqk(try parse(dict["XHeqk"], as: [String: Any].self))
      aiwjr = try parse(dict["aiwjr"], as: String.self)
    }
    
    struct Type_qmrIE {
      let COskH: Double
      let WjsgJ: Double
      let otpqz: Type_otpqz
      let eDLqm: Double
      let yyzvM: String
      let JdhlH: String
    
      init(_ dict: [String: Any]) throws {
        COskH = try parse(dict["COskH"], as: Double.self)
        WjsgJ = try parse(dict["WjsgJ"], as: Double.self)
        otpqz = try Type_otpqz(try parse(dict["otpqz"], as: [String: Any].self))
        eDLqm = try parse(dict["eDLqm"], as: Double.self)
        yyzvM = try parse(dict["yyzvM"], as: String.self)
        JdhlH = try parse(dict["JdhlH"], as: String.self)
      }
      
      struct Type_otpqz {
        let ifokL: [String]
        let DXpQE: Double
        let YarRd: Double
        let EJAOW: String
        let fyQsE: Double
        let FFpXK: Double
      
        init(_ dict: [String: Any]) throws {
          ifokL = try parse(dict["ifokL"], as: [String].self)
          DXpQE = try parse(dict["DXpQE"], as: Double.self)
          YarRd = try parse(dict["YarRd"], as: Double.self)
          EJAOW = try parse(dict["EJAOW"], as: String.self)
          fyQsE = try parse(dict["fyQsE"], as: Double.self)
          FFpXK = try parse(dict["FFpXK"], as: Double.self)
        }
        
      }
    }
    struct Type_XHeqk {
      let UrIHx: Double
      let glRYh: Double
      let VpTHX: Double
      let wjuRb: Type_wjuRb
      let Gepld: Double
      let lQqdh: String
    
      init(_ dict: [String: Any]) throws {
        UrIHx = try parse(dict["UrIHx"], as: Double.self)
        glRYh = try parse(dict["glRYh"], as: Double.self)
        VpTHX = try parse(dict["VpTHX"], as: Double.self)
        wjuRb = try Type_wjuRb(try parse(dict["wjuRb"], as: [String: Any].self))
        Gepld = try parse(dict["Gepld"], as: Double.self)
        lQqdh = try parse(dict["lQqdh"], as: String.self)
      }
      
      struct Type_wjuRb {
        let Mdlex: String
        let ECWuq: [Double]
        let eEKyp: Double
        let IiNcY: String
        let wXdpl: Double
        let zmSMh: String
      
        init(_ dict: [String: Any]) throws {
          Mdlex = try parse(dict["Mdlex"], as: String.self)
          ECWuq = try parse(dict["ECWuq"], as: [Double].self)
          eEKyp = try parse(dict["eEKyp"], as: Double.self)
          IiNcY = try parse(dict["IiNcY"], as: String.self)
          wXdpl = try parse(dict["wXdpl"], as: Double.self)
          zmSMh = try parse(dict["zmSMh"], as: String.self)
        }
        
      }
    }
  }
}