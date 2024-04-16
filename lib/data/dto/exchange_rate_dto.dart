/// result : "success"
/// documentation : "https://www.exchangerate-api.com/docs"
/// terms_of_use : "https://www.exchangerate-api.com/terms"
/// time_last_update_unix : 1713225601
/// time_last_update_utc : "Tue, 16 Apr 2024 00:00:01 +0000"
/// time_next_update_unix : 1713312001
/// time_next_update_utc : "Wed, 17 Apr 2024 00:00:01 +0000"
/// base_code : "USD"
/// conversion_rates : {"USD":1,"AED":3.6725,"AFN":71.3305,"ALL":94.8926,"AMD":395.1172,"ANG":1.79,"AOA":843.9804,"ARS":864.75,"AUD":1.5484,"AWG":1.79,"AZN":1.7004,"BAM":1.8392,"BBD":2,"BDT":109.7305,"BGN":1.8388,"BHD":0.376,"BIF":2863.741,"BMD":1,"BND":1.362,"BOB":6.9323,"BRL":5.1255,"BSD":1,"BTN":83.5103,"BWP":13.7991,"BYN":3.2663,"BZD":2,"CAD":1.3767,"CDF":2748.3339,"CHF":0.9124,"CLP":963.3561,"CNY":7.2506,"COP":3853.1035,"CRC":501.1963,"CUP":24,"CVE":103.6908,"CZK":23.7841,"DJF":177.721,"DKK":7.017,"DOP":59.149,"DZD":134.5425,"EGP":48.2752,"ERN":15,"ETB":56.8641,"EUR":0.9404,"FJD":2.2668,"FKP":0.8028,"FOK":7.017,"GBP":0.8028,"GEL":2.669,"GGP":0.8028,"GHS":13.5204,"GIP":0.8028,"GMD":66.0793,"GNF":8576.863,"GTQ":7.7842,"GYD":209.2361,"HKD":7.8296,"HNL":24.6792,"HRK":7.0853,"HTG":132.5414,"HUF":370.2661,"IDR":16001.3582,"ILS":3.7408,"IMP":0.8028,"INR":83.5116,"IQD":1310.542,"IRR":42045.127,"ISK":141.4365,"JEP":0.8028,"JMD":154.9463,"JOD":0.709,"JPY":154.0846,"KES":130.3081,"KGS":89.2651,"KHR":4051.9321,"KID":1.5484,"KMF":462.6358,"KRW":1385.1241,"KWD":0.3081,"KYD":0.8333,"KZT":449.1188,"LAK":20921.7778,"LBP":89500,"LKR":298.7014,"LRD":193.963,"LSL":18.9831,"LYD":4.8335,"MAD":10.1392,"MDL":17.6453,"MGA":4358.9753,"MKD":57.481,"MMK":2097.2672,"MNT":3385.3193,"MOP":8.0646,"MRU":39.7391,"MUR":47.0948,"MVR":15.4359,"MWK":1741.7795,"MXN":16.6899,"MYR":4.7788,"MZN":64.0401,"NAD":18.9831,"NGN":1143.8914,"NIO":36.7992,"NOK":10.9352,"NPR":133.6165,"NZD":1.6906,"OMR":0.3845,"PAB":1,"PEN":3.6995,"PGK":3.7813,"PHP":56.8958,"PKR":278.1672,"PLN":4.0415,"PYG":7363.1894,"QAR":3.64,"RON":4.6702,"RSD":109.9923,"RUB":93.552,"RWF":1300.8457,"SAR":3.75,"SBD":8.5103,"SCR":13.9109,"SDG":454.0078,"SEK":10.8817,"SGD":1.3621,"SHP":0.8028,"SLE":22.5923,"SLL":22592.3183,"SOS":571.4039,"SRD":34.9392,"SSP":1560.1044,"STN":23.0393,"SYP":12914.47,"SZL":18.9831,"THB":36.7431,"TJS":10.9354,"TMT":3.4998,"TND":3.1433,"TOP":2.3463,"TRY":32.4265,"TTD":6.764,"TVD":1.5484,"TWD":32.4135,"TZS":2581.8298,"UAH":39.5925,"UGX":3804.8654,"UYU":38.7394,"UZS":12752.7754,"VES":36.2889,"VND":25180.8809,"VUV":120.1495,"WST":2.7684,"XAF":616.8477,"XCD":2.7,"XDR":0.7596,"XOF":616.8477,"XPF":112.2172,"YER":250.248,"ZAR":18.9835,"ZMW":24.9932,"ZWL":13.4027}

class ExchangeRateDto {
  ExchangeRateDto({
      String result, 
      String documentation, 
      String termsOfUse, 
      num timeLastUpdateUnix, 
      String timeLastUpdateUtc, 
      num timeNextUpdateUnix, 
      String timeNextUpdateUtc, 
      String baseCode, 
      ConversionRates conversionRates,}){
    _result = result;
    _documentation = documentation;
    _termsOfUse = termsOfUse;
    _timeLastUpdateUnix = timeLastUpdateUnix;
    _timeLastUpdateUtc = timeLastUpdateUtc;
    _timeNextUpdateUnix = timeNextUpdateUnix;
    _timeNextUpdateUtc = timeNextUpdateUtc;
    _baseCode = baseCode;
    _conversionRates = conversionRates;
}

  ExchangeRateDto.fromJson(dynamic json) {
    _result = json['result'];
    _documentation = json['documentation'];
    _termsOfUse = json['terms_of_use'];
    _timeLastUpdateUnix = json['time_last_update_unix'];
    _timeLastUpdateUtc = json['time_last_update_utc'];
    _timeNextUpdateUnix = json['time_next_update_unix'];
    _timeNextUpdateUtc = json['time_next_update_utc'];
    _baseCode = json['base_code'];
    _conversionRates = json['conversion_rates'] != null ? ConversionRates.fromJson(json['conversion_rates']) : null;
  }
  String _result;
  String _documentation;
  String _termsOfUse;
  num _timeLastUpdateUnix;
  String _timeLastUpdateUtc;
  num _timeNextUpdateUnix;
  String _timeNextUpdateUtc;
  String _baseCode;
  ConversionRates _conversionRates;
ExchangeRateDto copyWith({  String result,
  String documentation,
  String termsOfUse,
  num timeLastUpdateUnix,
  String timeLastUpdateUtc,
  num timeNextUpdateUnix,
  String timeNextUpdateUtc,
  String baseCode,
  ConversionRates conversionRates,
}) => ExchangeRateDto(  result: result ?? _result,
  documentation: documentation ?? _documentation,
  termsOfUse: termsOfUse ?? _termsOfUse,
  timeLastUpdateUnix: timeLastUpdateUnix ?? _timeLastUpdateUnix,
  timeLastUpdateUtc: timeLastUpdateUtc ?? _timeLastUpdateUtc,
  timeNextUpdateUnix: timeNextUpdateUnix ?? _timeNextUpdateUnix,
  timeNextUpdateUtc: timeNextUpdateUtc ?? _timeNextUpdateUtc,
  baseCode: baseCode ?? _baseCode,
  conversionRates: conversionRates ?? _conversionRates,
);
  String get result => _result;
  String get documentation => _documentation;
  String get termsOfUse => _termsOfUse;
  num get timeLastUpdateUnix => _timeLastUpdateUnix;
  String get timeLastUpdateUtc => _timeLastUpdateUtc;
  num get timeNextUpdateUnix => _timeNextUpdateUnix;
  String get timeNextUpdateUtc => _timeNextUpdateUtc;
  String get baseCode => _baseCode;
  ConversionRates get conversionRates => _conversionRates;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['result'] = _result;
    map['documentation'] = _documentation;
    map['terms_of_use'] = _termsOfUse;
    map['time_last_update_unix'] = _timeLastUpdateUnix;
    map['time_last_update_utc'] = _timeLastUpdateUtc;
    map['time_next_update_unix'] = _timeNextUpdateUnix;
    map['time_next_update_utc'] = _timeNextUpdateUtc;
    map['base_code'] = _baseCode;
    if (_conversionRates != null) {
      map['conversion_rates'] = _conversionRates.toJson();
    }
    return map;
  }

}

/// USD : 1
/// AED : 3.6725
/// AFN : 71.3305
/// ALL : 94.8926
/// AMD : 395.1172
/// ANG : 1.79
/// AOA : 843.9804
/// ARS : 864.75
/// AUD : 1.5484
/// AWG : 1.79
/// AZN : 1.7004
/// BAM : 1.8392
/// BBD : 2
/// BDT : 109.7305
/// BGN : 1.8388
/// BHD : 0.376
/// BIF : 2863.741
/// BMD : 1
/// BND : 1.362
/// BOB : 6.9323
/// BRL : 5.1255
/// BSD : 1
/// BTN : 83.5103
/// BWP : 13.7991
/// BYN : 3.2663
/// BZD : 2
/// CAD : 1.3767
/// CDF : 2748.3339
/// CHF : 0.9124
/// CLP : 963.3561
/// CNY : 7.2506
/// COP : 3853.1035
/// CRC : 501.1963
/// CUP : 24
/// CVE : 103.6908
/// CZK : 23.7841
/// DJF : 177.721
/// DKK : 7.017
/// DOP : 59.149
/// DZD : 134.5425
/// EGP : 48.2752
/// ERN : 15
/// ETB : 56.8641
/// EUR : 0.9404
/// FJD : 2.2668
/// FKP : 0.8028
/// FOK : 7.017
/// GBP : 0.8028
/// GEL : 2.669
/// GGP : 0.8028
/// GHS : 13.5204
/// GIP : 0.8028
/// GMD : 66.0793
/// GNF : 8576.863
/// GTQ : 7.7842
/// GYD : 209.2361
/// HKD : 7.8296
/// HNL : 24.6792
/// HRK : 7.0853
/// HTG : 132.5414
/// HUF : 370.2661
/// IDR : 16001.3582
/// ILS : 3.7408
/// IMP : 0.8028
/// INR : 83.5116
/// IQD : 1310.542
/// IRR : 42045.127
/// ISK : 141.4365
/// JEP : 0.8028
/// JMD : 154.9463
/// JOD : 0.709
/// JPY : 154.0846
/// KES : 130.3081
/// KGS : 89.2651
/// KHR : 4051.9321
/// KID : 1.5484
/// KMF : 462.6358
/// KRW : 1385.1241
/// KWD : 0.3081
/// KYD : 0.8333
/// KZT : 449.1188
/// LAK : 20921.7778
/// LBP : 89500
/// LKR : 298.7014
/// LRD : 193.963
/// LSL : 18.9831
/// LYD : 4.8335
/// MAD : 10.1392
/// MDL : 17.6453
/// MGA : 4358.9753
/// MKD : 57.481
/// MMK : 2097.2672
/// MNT : 3385.3193
/// MOP : 8.0646
/// MRU : 39.7391
/// MUR : 47.0948
/// MVR : 15.4359
/// MWK : 1741.7795
/// MXN : 16.6899
/// MYR : 4.7788
/// MZN : 64.0401
/// NAD : 18.9831
/// NGN : 1143.8914
/// NIO : 36.7992
/// NOK : 10.9352
/// NPR : 133.6165
/// NZD : 1.6906
/// OMR : 0.3845
/// PAB : 1
/// PEN : 3.6995
/// PGK : 3.7813
/// PHP : 56.8958
/// PKR : 278.1672
/// PLN : 4.0415
/// PYG : 7363.1894
/// QAR : 3.64
/// RON : 4.6702
/// RSD : 109.9923
/// RUB : 93.552
/// RWF : 1300.8457
/// SAR : 3.75
/// SBD : 8.5103
/// SCR : 13.9109
/// SDG : 454.0078
/// SEK : 10.8817
/// SGD : 1.3621
/// SHP : 0.8028
/// SLE : 22.5923
/// SLL : 22592.3183
/// SOS : 571.4039
/// SRD : 34.9392
/// SSP : 1560.1044
/// STN : 23.0393
/// SYP : 12914.47
/// SZL : 18.9831
/// THB : 36.7431
/// TJS : 10.9354
/// TMT : 3.4998
/// TND : 3.1433
/// TOP : 2.3463
/// TRY : 32.4265
/// TTD : 6.764
/// TVD : 1.5484
/// TWD : 32.4135
/// TZS : 2581.8298
/// UAH : 39.5925
/// UGX : 3804.8654
/// UYU : 38.7394
/// UZS : 12752.7754
/// VES : 36.2889
/// VND : 25180.8809
/// VUV : 120.1495
/// WST : 2.7684
/// XAF : 616.8477
/// XCD : 2.7
/// XDR : 0.7596
/// XOF : 616.8477
/// XPF : 112.2172
/// YER : 250.248
/// ZAR : 18.9835
/// ZMW : 24.9932
/// ZWL : 13.4027

class ConversionRates {
  ConversionRates({
      num usd, 
      num aed, 
      num afn, 
      num all, 
      num amd, 
      num ang, 
      num aoa, 
      num ars, 
      num aud, 
      num awg, 
      num azn, 
      num bam, 
      num bbd, 
      num bdt, 
      num bgn, 
      num bhd, 
      num bif, 
      num bmd, 
      num bnd, 
      num bob, 
      num brl, 
      num bsd, 
      num btn, 
      num bwp, 
      num byn, 
      num bzd, 
      num cad, 
      num cdf, 
      num chf, 
      num clp, 
      num cny, 
      num cop, 
      num crc, 
      num cup, 
      num cve, 
      num czk, 
      num djf, 
      num dkk, 
      num dop, 
      num dzd, 
      num egp, 
      num ern, 
      num etb, 
      num eur, 
      num fjd, 
      num fkp, 
      num fok, 
      num gbp, 
      num gel, 
      num ggp, 
      num ghs, 
      num gip, 
      num gmd, 
      num gnf, 
      num gtq, 
      num gyd, 
      num hkd, 
      num hnl, 
      num hrk, 
      num htg, 
      num huf, 
      num idr, 
      num ils, 
      num imp, 
      num inr, 
      num iqd, 
      num irr, 
      num isk, 
      num jep, 
      num jmd, 
      num jod, 
      num jpy, 
      num kes, 
      num kgs, 
      num khr, 
      num kid, 
      num kmf, 
      num krw, 
      num kwd, 
      num kyd, 
      num kzt, 
      num lak, 
      num lbp, 
      num lkr, 
      num lrd, 
      num lsl, 
      num lyd, 
      num mad, 
      num mdl, 
      num mga, 
      num mkd, 
      num mmk, 
      num mnt, 
      num mop, 
      num mru, 
      num mur, 
      num mvr, 
      num mwk, 
      num mxn, 
      num myr, 
      num mzn, 
      num nad, 
      num ngn, 
      num nio, 
      num nok, 
      num npr, 
      num nzd, 
      num omr, 
      num pab, 
      num pen, 
      num pgk, 
      num php, 
      num pkr, 
      num pln, 
      num pyg, 
      num qar, 
      num ron, 
      num rsd, 
      num rub, 
      num rwf, 
      num sar, 
      num sbd, 
      num scr, 
      num sdg, 
      num sek, 
      num sgd, 
      num shp, 
      num sle, 
      num sll, 
      num sos, 
      num srd, 
      num ssp, 
      num stn, 
      num syp, 
      num szl, 
      num thb, 
      num tjs, 
      num tmt, 
      num tnd, 
      num top, 
      num try, 
      num ttd, 
      num tvd, 
      num twd, 
      num tzs, 
      num uah, 
      num ugx, 
      num uyu, 
      num uzs, 
      num ves, 
      num vnd, 
      num vuv, 
      num wst, 
      num xaf, 
      num xcd, 
      num xdr, 
      num xof, 
      num xpf, 
      num yer, 
      num zar, 
      num zmw, 
      num zwl,}){
    _usd = usd;
    _aed = aed;
    _afn = afn;
    _all = all;
    _amd = amd;
    _ang = ang;
    _aoa = aoa;
    _ars = ars;
    _aud = aud;
    _awg = awg;
    _azn = azn;
    _bam = bam;
    _bbd = bbd;
    _bdt = bdt;
    _bgn = bgn;
    _bhd = bhd;
    _bif = bif;
    _bmd = bmd;
    _bnd = bnd;
    _bob = bob;
    _brl = brl;
    _bsd = bsd;
    _btn = btn;
    _bwp = bwp;
    _byn = byn;
    _bzd = bzd;
    _cad = cad;
    _cdf = cdf;
    _chf = chf;
    _clp = clp;
    _cny = cny;
    _cop = cop;
    _crc = crc;
    _cup = cup;
    _cve = cve;
    _czk = czk;
    _djf = djf;
    _dkk = dkk;
    _dop = dop;
    _dzd = dzd;
    _egp = egp;
    _ern = ern;
    _etb = etb;
    _eur = eur;
    _fjd = fjd;
    _fkp = fkp;
    _fok = fok;
    _gbp = gbp;
    _gel = gel;
    _ggp = ggp;
    _ghs = ghs;
    _gip = gip;
    _gmd = gmd;
    _gnf = gnf;
    _gtq = gtq;
    _gyd = gyd;
    _hkd = hkd;
    _hnl = hnl;
    _hrk = hrk;
    _htg = htg;
    _huf = huf;
    _idr = idr;
    _ils = ils;
    _imp = imp;
    _inr = inr;
    _iqd = iqd;
    _irr = irr;
    _isk = isk;
    _jep = jep;
    _jmd = jmd;
    _jod = jod;
    _jpy = jpy;
    _kes = kes;
    _kgs = kgs;
    _khr = khr;
    _kid = kid;
    _kmf = kmf;
    _krw = krw;
    _kwd = kwd;
    _kyd = kyd;
    _kzt = kzt;
    _lak = lak;
    _lbp = lbp;
    _lkr = lkr;
    _lrd = lrd;
    _lsl = lsl;
    _lyd = lyd;
    _mad = mad;
    _mdl = mdl;
    _mga = mga;
    _mkd = mkd;
    _mmk = mmk;
    _mnt = mnt;
    _mop = mop;
    _mru = mru;
    _mur = mur;
    _mvr = mvr;
    _mwk = mwk;
    _mxn = mxn;
    _myr = myr;
    _mzn = mzn;
    _nad = nad;
    _ngn = ngn;
    _nio = nio;
    _nok = nok;
    _npr = npr;
    _nzd = nzd;
    _omr = omr;
    _pab = pab;
    _pen = pen;
    _pgk = pgk;
    _php = php;
    _pkr = pkr;
    _pln = pln;
    _pyg = pyg;
    _qar = qar;
    _ron = ron;
    _rsd = rsd;
    _rub = rub;
    _rwf = rwf;
    _sar = sar;
    _sbd = sbd;
    _scr = scr;
    _sdg = sdg;
    _sek = sek;
    _sgd = sgd;
    _shp = shp;
    _sle = sle;
    _sll = sll;
    _sos = sos;
    _srd = srd;
    _ssp = ssp;
    _stn = stn;
    _syp = syp;
    _szl = szl;
    _thb = thb;
    _tjs = tjs;
    _tmt = tmt;
    _tnd = tnd;
    _top = top;
    _try = try;
    _ttd = ttd;
    _tvd = tvd;
    _twd = twd;
    _tzs = tzs;
    _uah = uah;
    _ugx = ugx;
    _uyu = uyu;
    _uzs = uzs;
    _ves = ves;
    _vnd = vnd;
    _vuv = vuv;
    _wst = wst;
    _xaf = xaf;
    _xcd = xcd;
    _xdr = xdr;
    _xof = xof;
    _xpf = xpf;
    _yer = yer;
    _zar = zar;
    _zmw = zmw;
    _zwl = zwl;
}

  ConversionRates.fromJson(dynamic json) {
    _usd = json['USD'];
    _aed = json['AED'];
    _afn = json['AFN'];
    _all = json['ALL'];
    _amd = json['AMD'];
    _ang = json['ANG'];
    _aoa = json['AOA'];
    _ars = json['ARS'];
    _aud = json['AUD'];
    _awg = json['AWG'];
    _azn = json['AZN'];
    _bam = json['BAM'];
    _bbd = json['BBD'];
    _bdt = json['BDT'];
    _bgn = json['BGN'];
    _bhd = json['BHD'];
    _bif = json['BIF'];
    _bmd = json['BMD'];
    _bnd = json['BND'];
    _bob = json['BOB'];
    _brl = json['BRL'];
    _bsd = json['BSD'];
    _btn = json['BTN'];
    _bwp = json['BWP'];
    _byn = json['BYN'];
    _bzd = json['BZD'];
    _cad = json['CAD'];
    _cdf = json['CDF'];
    _chf = json['CHF'];
    _clp = json['CLP'];
    _cny = json['CNY'];
    _cop = json['COP'];
    _crc = json['CRC'];
    _cup = json['CUP'];
    _cve = json['CVE'];
    _czk = json['CZK'];
    _djf = json['DJF'];
    _dkk = json['DKK'];
    _dop = json['DOP'];
    _dzd = json['DZD'];
    _egp = json['EGP'];
    _ern = json['ERN'];
    _etb = json['ETB'];
    _eur = json['EUR'];
    _fjd = json['FJD'];
    _fkp = json['FKP'];
    _fok = json['FOK'];
    _gbp = json['GBP'];
    _gel = json['GEL'];
    _ggp = json['GGP'];
    _ghs = json['GHS'];
    _gip = json['GIP'];
    _gmd = json['GMD'];
    _gnf = json['GNF'];
    _gtq = json['GTQ'];
    _gyd = json['GYD'];
    _hkd = json['HKD'];
    _hnl = json['HNL'];
    _hrk = json['HRK'];
    _htg = json['HTG'];
    _huf = json['HUF'];
    _idr = json['IDR'];
    _ils = json['ILS'];
    _imp = json['IMP'];
    _inr = json['INR'];
    _iqd = json['IQD'];
    _irr = json['IRR'];
    _isk = json['ISK'];
    _jep = json['JEP'];
    _jmd = json['JMD'];
    _jod = json['JOD'];
    _jpy = json['JPY'];
    _kes = json['KES'];
    _kgs = json['KGS'];
    _khr = json['KHR'];
    _kid = json['KID'];
    _kmf = json['KMF'];
    _krw = json['KRW'];
    _kwd = json['KWD'];
    _kyd = json['KYD'];
    _kzt = json['KZT'];
    _lak = json['LAK'];
    _lbp = json['LBP'];
    _lkr = json['LKR'];
    _lrd = json['LRD'];
    _lsl = json['LSL'];
    _lyd = json['LYD'];
    _mad = json['MAD'];
    _mdl = json['MDL'];
    _mga = json['MGA'];
    _mkd = json['MKD'];
    _mmk = json['MMK'];
    _mnt = json['MNT'];
    _mop = json['MOP'];
    _mru = json['MRU'];
    _mur = json['MUR'];
    _mvr = json['MVR'];
    _mwk = json['MWK'];
    _mxn = json['MXN'];
    _myr = json['MYR'];
    _mzn = json['MZN'];
    _nad = json['NAD'];
    _ngn = json['NGN'];
    _nio = json['NIO'];
    _nok = json['NOK'];
    _npr = json['NPR'];
    _nzd = json['NZD'];
    _omr = json['OMR'];
    _pab = json['PAB'];
    _pen = json['PEN'];
    _pgk = json['PGK'];
    _php = json['PHP'];
    _pkr = json['PKR'];
    _pln = json['PLN'];
    _pyg = json['PYG'];
    _qar = json['QAR'];
    _ron = json['RON'];
    _rsd = json['RSD'];
    _rub = json['RUB'];
    _rwf = json['RWF'];
    _sar = json['SAR'];
    _sbd = json['SBD'];
    _scr = json['SCR'];
    _sdg = json['SDG'];
    _sek = json['SEK'];
    _sgd = json['SGD'];
    _shp = json['SHP'];
    _sle = json['SLE'];
    _sll = json['SLL'];
    _sos = json['SOS'];
    _srd = json['SRD'];
    _ssp = json['SSP'];
    _stn = json['STN'];
    _syp = json['SYP'];
    _szl = json['SZL'];
    _thb = json['THB'];
    _tjs = json['TJS'];
    _tmt = json['TMT'];
    _tnd = json['TND'];
    _top = json['TOP'];
    _try = json['TRY'];
    _ttd = json['TTD'];
    _tvd = json['TVD'];
    _twd = json['TWD'];
    _tzs = json['TZS'];
    _uah = json['UAH'];
    _ugx = json['UGX'];
    _uyu = json['UYU'];
    _uzs = json['UZS'];
    _ves = json['VES'];
    _vnd = json['VND'];
    _vuv = json['VUV'];
    _wst = json['WST'];
    _xaf = json['XAF'];
    _xcd = json['XCD'];
    _xdr = json['XDR'];
    _xof = json['XOF'];
    _xpf = json['XPF'];
    _yer = json['YER'];
    _zar = json['ZAR'];
    _zmw = json['ZMW'];
    _zwl = json['ZWL'];
  }
  num _usd;
  num _aed;
  num _afn;
  num _all;
  num _amd;
  num _ang;
  num _aoa;
  num _ars;
  num _aud;
  num _awg;
  num _azn;
  num _bam;
  num _bbd;
  num _bdt;
  num _bgn;
  num _bhd;
  num _bif;
  num _bmd;
  num _bnd;
  num _bob;
  num _brl;
  num _bsd;
  num _btn;
  num _bwp;
  num _byn;
  num _bzd;
  num _cad;
  num _cdf;
  num _chf;
  num _clp;
  num _cny;
  num _cop;
  num _crc;
  num _cup;
  num _cve;
  num _czk;
  num _djf;
  num _dkk;
  num _dop;
  num _dzd;
  num _egp;
  num _ern;
  num _etb;
  num _eur;
  num _fjd;
  num _fkp;
  num _fok;
  num _gbp;
  num _gel;
  num _ggp;
  num _ghs;
  num _gip;
  num _gmd;
  num _gnf;
  num _gtq;
  num _gyd;
  num _hkd;
  num _hnl;
  num _hrk;
  num _htg;
  num _huf;
  num _idr;
  num _ils;
  num _imp;
  num _inr;
  num _iqd;
  num _irr;
  num _isk;
  num _jep;
  num _jmd;
  num _jod;
  num _jpy;
  num _kes;
  num _kgs;
  num _khr;
  num _kid;
  num _kmf;
  num _krw;
  num _kwd;
  num _kyd;
  num _kzt;
  num _lak;
  num _lbp;
  num _lkr;
  num _lrd;
  num _lsl;
  num _lyd;
  num _mad;
  num _mdl;
  num _mga;
  num _mkd;
  num _mmk;
  num _mnt;
  num _mop;
  num _mru;
  num _mur;
  num _mvr;
  num _mwk;
  num _mxn;
  num _myr;
  num _mzn;
  num _nad;
  num _ngn;
  num _nio;
  num _nok;
  num _npr;
  num _nzd;
  num _omr;
  num _pab;
  num _pen;
  num _pgk;
  num _php;
  num _pkr;
  num _pln;
  num _pyg;
  num _qar;
  num _ron;
  num _rsd;
  num _rub;
  num _rwf;
  num _sar;
  num _sbd;
  num _scr;
  num _sdg;
  num _sek;
  num _sgd;
  num _shp;
  num _sle;
  num _sll;
  num _sos;
  num _srd;
  num _ssp;
  num _stn;
  num _syp;
  num _szl;
  num _thb;
  num _tjs;
  num _tmt;
  num _tnd;
  num _top;
  num _try;
  num _ttd;
  num _tvd;
  num _twd;
  num _tzs;
  num _uah;
  num _ugx;
  num _uyu;
  num _uzs;
  num _ves;
  num _vnd;
  num _vuv;
  num _wst;
  num _xaf;
  num _xcd;
  num _xdr;
  num _xof;
  num _xpf;
  num _yer;
  num _zar;
  num _zmw;
  num _zwl;
ConversionRates copyWith({  num usd,
  num aed,
  num afn,
  num all,
  num amd,
  num ang,
  num aoa,
  num ars,
  num aud,
  num awg,
  num azn,
  num bam,
  num bbd,
  num bdt,
  num bgn,
  num bhd,
  num bif,
  num bmd,
  num bnd,
  num bob,
  num brl,
  num bsd,
  num btn,
  num bwp,
  num byn,
  num bzd,
  num cad,
  num cdf,
  num chf,
  num clp,
  num cny,
  num cop,
  num crc,
  num cup,
  num cve,
  num czk,
  num djf,
  num dkk,
  num dop,
  num dzd,
  num egp,
  num ern,
  num etb,
  num eur,
  num fjd,
  num fkp,
  num fok,
  num gbp,
  num gel,
  num ggp,
  num ghs,
  num gip,
  num gmd,
  num gnf,
  num gtq,
  num gyd,
  num hkd,
  num hnl,
  num hrk,
  num htg,
  num huf,
  num idr,
  num ils,
  num imp,
  num inr,
  num iqd,
  num irr,
  num isk,
  num jep,
  num jmd,
  num jod,
  num jpy,
  num kes,
  num kgs,
  num khr,
  num kid,
  num kmf,
  num krw,
  num kwd,
  num kyd,
  num kzt,
  num lak,
  num lbp,
  num lkr,
  num lrd,
  num lsl,
  num lyd,
  num mad,
  num mdl,
  num mga,
  num mkd,
  num mmk,
  num mnt,
  num mop,
  num mru,
  num mur,
  num mvr,
  num mwk,
  num mxn,
  num myr,
  num mzn,
  num nad,
  num ngn,
  num nio,
  num nok,
  num npr,
  num nzd,
  num omr,
  num pab,
  num pen,
  num pgk,
  num php,
  num pkr,
  num pln,
  num pyg,
  num qar,
  num ron,
  num rsd,
  num rub,
  num rwf,
  num sar,
  num sbd,
  num scr,
  num sdg,
  num sek,
  num sgd,
  num shp,
  num sle,
  num sll,
  num sos,
  num srd,
  num ssp,
  num stn,
  num syp,
  num szl,
  num thb,
  num tjs,
  num tmt,
  num tnd,
  num top,
  num try,
  num ttd,
  num tvd,
  num twd,
  num tzs,
  num uah,
  num ugx,
  num uyu,
  num uzs,
  num ves,
  num vnd,
  num vuv,
  num wst,
  num xaf,
  num xcd,
  num xdr,
  num xof,
  num xpf,
  num yer,
  num zar,
  num zmw,
  num zwl,
}) => ConversionRates(  usd: usd ?? _usd,
  aed: aed ?? _aed,
  afn: afn ?? _afn,
  all: all ?? _all,
  amd: amd ?? _amd,
  ang: ang ?? _ang,
  aoa: aoa ?? _aoa,
  ars: ars ?? _ars,
  aud: aud ?? _aud,
  awg: awg ?? _awg,
  azn: azn ?? _azn,
  bam: bam ?? _bam,
  bbd: bbd ?? _bbd,
  bdt: bdt ?? _bdt,
  bgn: bgn ?? _bgn,
  bhd: bhd ?? _bhd,
  bif: bif ?? _bif,
  bmd: bmd ?? _bmd,
  bnd: bnd ?? _bnd,
  bob: bob ?? _bob,
  brl: brl ?? _brl,
  bsd: bsd ?? _bsd,
  btn: btn ?? _btn,
  bwp: bwp ?? _bwp,
  byn: byn ?? _byn,
  bzd: bzd ?? _bzd,
  cad: cad ?? _cad,
  cdf: cdf ?? _cdf,
  chf: chf ?? _chf,
  clp: clp ?? _clp,
  cny: cny ?? _cny,
  cop: cop ?? _cop,
  crc: crc ?? _crc,
  cup: cup ?? _cup,
  cve: cve ?? _cve,
  czk: czk ?? _czk,
  djf: djf ?? _djf,
  dkk: dkk ?? _dkk,
  dop: dop ?? _dop,
  dzd: dzd ?? _dzd,
  egp: egp ?? _egp,
  ern: ern ?? _ern,
  etb: etb ?? _etb,
  eur: eur ?? _eur,
  fjd: fjd ?? _fjd,
  fkp: fkp ?? _fkp,
  fok: fok ?? _fok,
  gbp: gbp ?? _gbp,
  gel: gel ?? _gel,
  ggp: ggp ?? _ggp,
  ghs: ghs ?? _ghs,
  gip: gip ?? _gip,
  gmd: gmd ?? _gmd,
  gnf: gnf ?? _gnf,
  gtq: gtq ?? _gtq,
  gyd: gyd ?? _gyd,
  hkd: hkd ?? _hkd,
  hnl: hnl ?? _hnl,
  hrk: hrk ?? _hrk,
  htg: htg ?? _htg,
  huf: huf ?? _huf,
  idr: idr ?? _idr,
  ils: ils ?? _ils,
  imp: imp ?? _imp,
  inr: inr ?? _inr,
  iqd: iqd ?? _iqd,
  irr: irr ?? _irr,
  isk: isk ?? _isk,
  jep: jep ?? _jep,
  jmd: jmd ?? _jmd,
  jod: jod ?? _jod,
  jpy: jpy ?? _jpy,
  kes: kes ?? _kes,
  kgs: kgs ?? _kgs,
  khr: khr ?? _khr,
  kid: kid ?? _kid,
  kmf: kmf ?? _kmf,
  krw: krw ?? _krw,
  kwd: kwd ?? _kwd,
  kyd: kyd ?? _kyd,
  kzt: kzt ?? _kzt,
  lak: lak ?? _lak,
  lbp: lbp ?? _lbp,
  lkr: lkr ?? _lkr,
  lrd: lrd ?? _lrd,
  lsl: lsl ?? _lsl,
  lyd: lyd ?? _lyd,
  mad: mad ?? _mad,
  mdl: mdl ?? _mdl,
  mga: mga ?? _mga,
  mkd: mkd ?? _mkd,
  mmk: mmk ?? _mmk,
  mnt: mnt ?? _mnt,
  mop: mop ?? _mop,
  mru: mru ?? _mru,
  mur: mur ?? _mur,
  mvr: mvr ?? _mvr,
  mwk: mwk ?? _mwk,
  mxn: mxn ?? _mxn,
  myr: myr ?? _myr,
  mzn: mzn ?? _mzn,
  nad: nad ?? _nad,
  ngn: ngn ?? _ngn,
  nio: nio ?? _nio,
  nok: nok ?? _nok,
  npr: npr ?? _npr,
  nzd: nzd ?? _nzd,
  omr: omr ?? _omr,
  pab: pab ?? _pab,
  pen: pen ?? _pen,
  pgk: pgk ?? _pgk,
  php: php ?? _php,
  pkr: pkr ?? _pkr,
  pln: pln ?? _pln,
  pyg: pyg ?? _pyg,
  qar: qar ?? _qar,
  ron: ron ?? _ron,
  rsd: rsd ?? _rsd,
  rub: rub ?? _rub,
  rwf: rwf ?? _rwf,
  sar: sar ?? _sar,
  sbd: sbd ?? _sbd,
  scr: scr ?? _scr,
  sdg: sdg ?? _sdg,
  sek: sek ?? _sek,
  sgd: sgd ?? _sgd,
  shp: shp ?? _shp,
  sle: sle ?? _sle,
  sll: sll ?? _sll,
  sos: sos ?? _sos,
  srd: srd ?? _srd,
  ssp: ssp ?? _ssp,
  stn: stn ?? _stn,
  syp: syp ?? _syp,
  szl: szl ?? _szl,
  thb: thb ?? _thb,
  tjs: tjs ?? _tjs,
  tmt: tmt ?? _tmt,
  tnd: tnd ?? _tnd,
  top: top ?? _top,
  try: try ?? _try,
  ttd: ttd ?? _ttd,
  tvd: tvd ?? _tvd,
  twd: twd ?? _twd,
  tzs: tzs ?? _tzs,
  uah: uah ?? _uah,
  ugx: ugx ?? _ugx,
  uyu: uyu ?? _uyu,
  uzs: uzs ?? _uzs,
  ves: ves ?? _ves,
  vnd: vnd ?? _vnd,
  vuv: vuv ?? _vuv,
  wst: wst ?? _wst,
  xaf: xaf ?? _xaf,
  xcd: xcd ?? _xcd,
  xdr: xdr ?? _xdr,
  xof: xof ?? _xof,
  xpf: xpf ?? _xpf,
  yer: yer ?? _yer,
  zar: zar ?? _zar,
  zmw: zmw ?? _zmw,
  zwl: zwl ?? _zwl,
);
  num get usd => _usd;
  num get aed => _aed;
  num get afn => _afn;
  num get all => _all;
  num get amd => _amd;
  num get ang => _ang;
  num get aoa => _aoa;
  num get ars => _ars;
  num get aud => _aud;
  num get awg => _awg;
  num get azn => _azn;
  num get bam => _bam;
  num get bbd => _bbd;
  num get bdt => _bdt;
  num get bgn => _bgn;
  num get bhd => _bhd;
  num get bif => _bif;
  num get bmd => _bmd;
  num get bnd => _bnd;
  num get bob => _bob;
  num get brl => _brl;
  num get bsd => _bsd;
  num get btn => _btn;
  num get bwp => _bwp;
  num get byn => _byn;
  num get bzd => _bzd;
  num get cad => _cad;
  num get cdf => _cdf;
  num get chf => _chf;
  num get clp => _clp;
  num get cny => _cny;
  num get cop => _cop;
  num get crc => _crc;
  num get cup => _cup;
  num get cve => _cve;
  num get czk => _czk;
  num get djf => _djf;
  num get dkk => _dkk;
  num get dop => _dop;
  num get dzd => _dzd;
  num get egp => _egp;
  num get ern => _ern;
  num get etb => _etb;
  num get eur => _eur;
  num get fjd => _fjd;
  num get fkp => _fkp;
  num get fok => _fok;
  num get gbp => _gbp;
  num get gel => _gel;
  num get ggp => _ggp;
  num get ghs => _ghs;
  num get gip => _gip;
  num get gmd => _gmd;
  num get gnf => _gnf;
  num get gtq => _gtq;
  num get gyd => _gyd;
  num get hkd => _hkd;
  num get hnl => _hnl;
  num get hrk => _hrk;
  num get htg => _htg;
  num get huf => _huf;
  num get idr => _idr;
  num get ils => _ils;
  num get imp => _imp;
  num get inr => _inr;
  num get iqd => _iqd;
  num get irr => _irr;
  num get isk => _isk;
  num get jep => _jep;
  num get jmd => _jmd;
  num get jod => _jod;
  num get jpy => _jpy;
  num get kes => _kes;
  num get kgs => _kgs;
  num get khr => _khr;
  num get kid => _kid;
  num get kmf => _kmf;
  num get krw => _krw;
  num get kwd => _kwd;
  num get kyd => _kyd;
  num get kzt => _kzt;
  num get lak => _lak;
  num get lbp => _lbp;
  num get lkr => _lkr;
  num get lrd => _lrd;
  num get lsl => _lsl;
  num get lyd => _lyd;
  num get mad => _mad;
  num get mdl => _mdl;
  num get mga => _mga;
  num get mkd => _mkd;
  num get mmk => _mmk;
  num get mnt => _mnt;
  num get mop => _mop;
  num get mru => _mru;
  num get mur => _mur;
  num get mvr => _mvr;
  num get mwk => _mwk;
  num get mxn => _mxn;
  num get myr => _myr;
  num get mzn => _mzn;
  num get nad => _nad;
  num get ngn => _ngn;
  num get nio => _nio;
  num get nok => _nok;
  num get npr => _npr;
  num get nzd => _nzd;
  num get omr => _omr;
  num get pab => _pab;
  num get pen => _pen;
  num get pgk => _pgk;
  num get php => _php;
  num get pkr => _pkr;
  num get pln => _pln;
  num get pyg => _pyg;
  num get qar => _qar;
  num get ron => _ron;
  num get rsd => _rsd;
  num get rub => _rub;
  num get rwf => _rwf;
  num get sar => _sar;
  num get sbd => _sbd;
  num get scr => _scr;
  num get sdg => _sdg;
  num get sek => _sek;
  num get sgd => _sgd;
  num get shp => _shp;
  num get sle => _sle;
  num get sll => _sll;
  num get sos => _sos;
  num get srd => _srd;
  num get ssp => _ssp;
  num get stn => _stn;
  num get syp => _syp;
  num get szl => _szl;
  num get thb => _thb;
  num get tjs => _tjs;
  num get tmt => _tmt;
  num get tnd => _tnd;
  num get top => _top;
  num get try => _try;
  num get ttd => _ttd;
  num get tvd => _tvd;
  num get twd => _twd;
  num get tzs => _tzs;
  num get uah => _uah;
  num get ugx => _ugx;
  num get uyu => _uyu;
  num get uzs => _uzs;
  num get ves => _ves;
  num get vnd => _vnd;
  num get vuv => _vuv;
  num get wst => _wst;
  num get xaf => _xaf;
  num get xcd => _xcd;
  num get xdr => _xdr;
  num get xof => _xof;
  num get xpf => _xpf;
  num get yer => _yer;
  num get zar => _zar;
  num get zmw => _zmw;
  num get zwl => _zwl;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['USD'] = _usd;
    map['AED'] = _aed;
    map['AFN'] = _afn;
    map['ALL'] = _all;
    map['AMD'] = _amd;
    map['ANG'] = _ang;
    map['AOA'] = _aoa;
    map['ARS'] = _ars;
    map['AUD'] = _aud;
    map['AWG'] = _awg;
    map['AZN'] = _azn;
    map['BAM'] = _bam;
    map['BBD'] = _bbd;
    map['BDT'] = _bdt;
    map['BGN'] = _bgn;
    map['BHD'] = _bhd;
    map['BIF'] = _bif;
    map['BMD'] = _bmd;
    map['BND'] = _bnd;
    map['BOB'] = _bob;
    map['BRL'] = _brl;
    map['BSD'] = _bsd;
    map['BTN'] = _btn;
    map['BWP'] = _bwp;
    map['BYN'] = _byn;
    map['BZD'] = _bzd;
    map['CAD'] = _cad;
    map['CDF'] = _cdf;
    map['CHF'] = _chf;
    map['CLP'] = _clp;
    map['CNY'] = _cny;
    map['COP'] = _cop;
    map['CRC'] = _crc;
    map['CUP'] = _cup;
    map['CVE'] = _cve;
    map['CZK'] = _czk;
    map['DJF'] = _djf;
    map['DKK'] = _dkk;
    map['DOP'] = _dop;
    map['DZD'] = _dzd;
    map['EGP'] = _egp;
    map['ERN'] = _ern;
    map['ETB'] = _etb;
    map['EUR'] = _eur;
    map['FJD'] = _fjd;
    map['FKP'] = _fkp;
    map['FOK'] = _fok;
    map['GBP'] = _gbp;
    map['GEL'] = _gel;
    map['GGP'] = _ggp;
    map['GHS'] = _ghs;
    map['GIP'] = _gip;
    map['GMD'] = _gmd;
    map['GNF'] = _gnf;
    map['GTQ'] = _gtq;
    map['GYD'] = _gyd;
    map['HKD'] = _hkd;
    map['HNL'] = _hnl;
    map['HRK'] = _hrk;
    map['HTG'] = _htg;
    map['HUF'] = _huf;
    map['IDR'] = _idr;
    map['ILS'] = _ils;
    map['IMP'] = _imp;
    map['INR'] = _inr;
    map['IQD'] = _iqd;
    map['IRR'] = _irr;
    map['ISK'] = _isk;
    map['JEP'] = _jep;
    map['JMD'] = _jmd;
    map['JOD'] = _jod;
    map['JPY'] = _jpy;
    map['KES'] = _kes;
    map['KGS'] = _kgs;
    map['KHR'] = _khr;
    map['KID'] = _kid;
    map['KMF'] = _kmf;
    map['KRW'] = _krw;
    map['KWD'] = _kwd;
    map['KYD'] = _kyd;
    map['KZT'] = _kzt;
    map['LAK'] = _lak;
    map['LBP'] = _lbp;
    map['LKR'] = _lkr;
    map['LRD'] = _lrd;
    map['LSL'] = _lsl;
    map['LYD'] = _lyd;
    map['MAD'] = _mad;
    map['MDL'] = _mdl;
    map['MGA'] = _mga;
    map['MKD'] = _mkd;
    map['MMK'] = _mmk;
    map['MNT'] = _mnt;
    map['MOP'] = _mop;
    map['MRU'] = _mru;
    map['MUR'] = _mur;
    map['MVR'] = _mvr;
    map['MWK'] = _mwk;
    map['MXN'] = _mxn;
    map['MYR'] = _myr;
    map['MZN'] = _mzn;
    map['NAD'] = _nad;
    map['NGN'] = _ngn;
    map['NIO'] = _nio;
    map['NOK'] = _nok;
    map['NPR'] = _npr;
    map['NZD'] = _nzd;
    map['OMR'] = _omr;
    map['PAB'] = _pab;
    map['PEN'] = _pen;
    map['PGK'] = _pgk;
    map['PHP'] = _php;
    map['PKR'] = _pkr;
    map['PLN'] = _pln;
    map['PYG'] = _pyg;
    map['QAR'] = _qar;
    map['RON'] = _ron;
    map['RSD'] = _rsd;
    map['RUB'] = _rub;
    map['RWF'] = _rwf;
    map['SAR'] = _sar;
    map['SBD'] = _sbd;
    map['SCR'] = _scr;
    map['SDG'] = _sdg;
    map['SEK'] = _sek;
    map['SGD'] = _sgd;
    map['SHP'] = _shp;
    map['SLE'] = _sle;
    map['SLL'] = _sll;
    map['SOS'] = _sos;
    map['SRD'] = _srd;
    map['SSP'] = _ssp;
    map['STN'] = _stn;
    map['SYP'] = _syp;
    map['SZL'] = _szl;
    map['THB'] = _thb;
    map['TJS'] = _tjs;
    map['TMT'] = _tmt;
    map['TND'] = _tnd;
    map['TOP'] = _top;
    map['TRY'] = _try;
    map['TTD'] = _ttd;
    map['TVD'] = _tvd;
    map['TWD'] = _twd;
    map['TZS'] = _tzs;
    map['UAH'] = _uah;
    map['UGX'] = _ugx;
    map['UYU'] = _uyu;
    map['UZS'] = _uzs;
    map['VES'] = _ves;
    map['VND'] = _vnd;
    map['VUV'] = _vuv;
    map['WST'] = _wst;
    map['XAF'] = _xaf;
    map['XCD'] = _xcd;
    map['XDR'] = _xdr;
    map['XOF'] = _xof;
    map['XPF'] = _xpf;
    map['YER'] = _yer;
    map['ZAR'] = _zar;
    map['ZMW'] = _zmw;
    map['ZWL'] = _zwl;
    return map;
  }

}