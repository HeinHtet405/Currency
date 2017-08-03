//
//  CurrencyVC.swift
//  Currency
//
//  Created by Hein Htet on 7/20/17.
//  Copyright © 2017 Hein Htet. All rights reserved.
//

import UIKit
import Alamofire

class CurrencyVC: UITableViewController {
    
    var currencyList: [Currency] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getLatestData()
    }
    
    func getLatestData() {
        Alamofire.request(CURRENCY_URL).responseJSON {
            response in
            let result = response.result
            if let dict = result.value as? Dictionary<String, AnyObject> {
                if let info = dict["info"] as? String {
                    print(info)
                }
                
                if let rates = dict["rates"] as? Dictionary<String, AnyObject> {
                    if let usd = rates["USD"] as? String {
                        self.currencyList.append(Currency(countryName: "United State", countryImage: "usd.png", priceOne: "1 Dollar", priceTwo: usd + " Ks"))
                    }
                    if let eur = rates["EUR"] as? String {
                       self.currencyList.append(Currency(countryName: "Euro", countryImage: "eur.png", priceOne: "1 euro", priceTwo: eur + " Ks"))
                    }
                    if let sgd = rates["SGD"] as? String {
                        self.currencyList.append(Currency(countryName: "Singapore", countryImage: "sgd.png", priceOne: "1 Dollar", priceTwo: sgd + " Ks"))
                    }
                    if let gbp = rates["GBP"] as? String {
                        self.currencyList.append(Currency(countryName: "England", countryImage: "gbp.png", priceOne: "1 Pound", priceTwo: gbp + " Ks"))
                    }
                    if let chf = rates["CHF"] as? String {
                        self.currencyList.append(Currency(countryName: "Switzerland", countryImage: "chf.png", priceOne: "1 Franc", priceTwo: chf + " Ks"))
                    }
                    if let jpy = rates["JPY"] as? String {
                        self.currencyList.append(Currency(countryName: "Japan", countryImage: "jpy.png", priceOne: "1 Yen", priceTwo: jpy + " Ks"))
                    }
                    if let aud = rates["AUD"] as? String {
                        self.currencyList.append(Currency(countryName: "Australia", countryImage: "aud.png", priceOne: "1 Dollar", priceTwo: aud + " Ks"))
                    }
                    if let btd = rates["BTD"] as? String {
                        self.currencyList.append(Currency(countryName: "Bangladesh", countryImage: "bdt.png", priceOne: "1 Taka", priceTwo: btd + " Ks"))
                    }
                    if let bnd = rates["BND"] as? String {
                        self.currencyList.append(Currency(countryName: "Brunei", countryImage: "bnd.png", priceOne: "1 Dollar", priceTwo: bnd + " Ks"))
                    }
                    if let khr = rates["KHR"] as? String {
                        self.currencyList.append(Currency(countryName: "Cambodia", countryImage: "khr.png", priceOne: "1 Riel", priceTwo: khr + " Ks"))
                    }
                    if let cad = rates["CAD"] as? String {
                       self.currencyList.append(Currency(countryName: "Canada", countryImage: "cad.png", priceOne: "1 Dollar", priceTwo: cad + " Ks"))
                    }
                    if let cny = rates["CNY"] as? String {
                        self.currencyList.append(Currency(countryName: "China", countryImage: "cny.png", priceOne: "1 Yuan", priceTwo: cny + " Ks"))
                    }
                    if let hkd = rates["HKD"] as? String {
                        self.currencyList.append(Currency(countryName: "Hong Kong", countryImage: "hkd.png", priceOne: "1 Dollar", priceTwo: hkd + " Ks"))
                    }
                    if let inr = rates["INR"] as? String {
                        self.currencyList.append(Currency(countryName: "India", countryImage: "inr.png", priceOne: "1 Rupee", priceTwo: inr + " Ks"))
                    }
                    if let idr = rates["IDR"] as? String {
                        self.currencyList.append(Currency(countryName: "Indonesia", countryImage: "idr.png", priceOne: "1 Rupiah", priceTwo: idr + " Ks"))
                    }
                    if let krw = rates["KRW"] as? String {
                        self.currencyList.append(Currency(countryName: "Korea", countryImage: "krw.png", priceOne: "1 Won", priceTwo: krw + " Ks"))
                    }
                    if let lak = rates["LAK"] as? String {
                        self.currencyList.append(Currency(countryName: "Lao", countryImage: "lak.png", priceOne: "1 Kip", priceTwo: lak + " Ks"))
                    }
                    if let myr = rates["MYR"] as? String {
                        self.currencyList.append(Currency(countryName: "Malaysia", countryImage: "myr.png", priceOne: "1 Ringgit", priceTwo: myr + " Ks"))
                    }
                    if let nzd = rates["NZD"] as? String {
                        self.currencyList.append(Currency(countryName: "New Zealand", countryImage: "nzd.png", priceOne: "1 Dollar", priceTwo: nzd + " Ks"))
                    }
                    if let pkr = rates["PKR"] as? String {
                        self.currencyList.append(Currency(countryName: "Pakistan", countryImage: "pkr.png", priceOne: "1 Rupee", priceTwo: pkr + " Ks"))
                    }
                    if let php = rates["PHP"] as? String {
                        self.currencyList.append(Currency(countryName: "Philippine", countryImage: "php.png", priceOne: "1 Peso", priceTwo: php + " Ks"))
                    }
                    if let lkr = rates["LKR"] as? String {
                        self.currencyList.append(Currency(countryName: "Linka of Sri", countryImage: "lkr.png", priceOne: "1 Rupee", priceTwo: lkr + " Ks"))
                    }
                    if let thb = rates["THB"] as? String {
                         self.currencyList.append(Currency(countryName: "Thailand", countryImage: "thb.png", priceOne: "1 Baht", priceTwo: thb + " Ks"))
                    }
                    if let vnd = rates["VND"] as? String {
                        self.currencyList.append(Currency(countryName: "Vietname", countryImage: "vnd.png", priceOne: "1 Dong", priceTwo: vnd + " Ks"))
                    }
                    if let brl = rates["BRL"] as? String {
                        self.currencyList.append(Currency(countryName: "Brazil", countryImage: "brl.png", priceOne: "1 Real", priceTwo: brl + " Ks"))
                    }
                    if let czk = rates["CZK"] as? String {
                        self.currencyList.append(Currency(countryName: "Czech of Republic", countryImage: "czk.png", priceOne: "1 Koruna", priceTwo: czk + " Ks"))
                    }
                    if let dkk = rates["DKK"] as? String {
                        self.currencyList.append(Currency(countryName: "Denmark", countryImage: "dkk.png", priceOne: "1 Krone", priceTwo: dkk + " Ks"))
                    }
                    if let egp = rates["EGP"] as? String {
                        self.currencyList.append(Currency(countryName: "Egypt", countryImage: "egp.png", priceOne: "1 Pound", priceTwo: egp + " Ks"))
                    }
                    if let ils = rates["ILS"] as? String {
                        self.currencyList.append(Currency(countryName: "Israeli", countryImage: "ils.png", priceOne: "1 Shekel", priceTwo: ils + " Ks"))
                    }
                    if let kes = rates["KES"] as? String {
                        self.currencyList.append(Currency(countryName: "Kenya", countryImage: "kes.png", priceOne: "1 Shilling", priceTwo: kes + " Ks"))
                    }
                    if let kwd = rates["KWD"] as? String {
                        self.currencyList.append(Currency(countryName: "Kuwaiti", countryImage: "kwd.png", priceOne: "1 Dinar", priceTwo: kwd + " Ks"))
                    }
                    if let npr = rates["NPR"] as? String {
                        self.currencyList.append(Currency(countryName: "Nepalese", countryImage: "npr.png", priceOne: "1 Rupee", priceTwo: npr + " Ks"))
                    }
                    if let nok = rates["NOK"] as? String {
                        self.currencyList.append(Currency(countryName: "Norway", countryImage: "nok.png", priceOne: "1 Kroner", priceTwo: nok + " Ks"))
                    }
                    if let rub = rates["RUB"] as? String {
                        self.currencyList.append(Currency(countryName: "Russia", countryImage: "rub.png", priceOne: "1 Rouble", priceTwo: rub + " Ks"))
                    }
                    if let sar = rates["SAR"] as? String {
                        self.currencyList.append(Currency(countryName: "Saudi Arabia", countryImage: "sar.png", priceOne: "1 Riyal", priceTwo: sar + " Ks"))
                    }
                    if let rsd = rates["RSD"] as? String {
                        self.currencyList.append(Currency(countryName: "Serbia", countryImage: "rsd.png", priceOne: "1 Dina", priceTwo: rsd + " Ks"))
                    }
                    if let zar = rates["ZAR"] as? String {
                        self.currencyList.append(Currency(countryName: "South Africa", countryImage: "zar.png", priceOne: "1 Rand", priceTwo: zar + " Ks"))
                    }
                    if let sek = rates["SEK"] as? String {
                        self.currencyList.append(Currency(countryName: "Sweden", countryImage: "sek.png", priceOne: "1 Krona", priceTwo: sek + " Ks"))
                    }
                    self.tableView.reloadData()
                }
            }
        }
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
            return 1
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return currencyList.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "currencyCell", for: indexPath) as! CurrencyCell
        
        cell.countryName.text = currencyList[indexPath.row].countryName
        cell.countryImage.image = UIImage(named: currencyList[indexPath.row].countryImage)
        cell.priceOne.text = currencyList[indexPath.row].priceOne
        cell.priceTwo.text = currencyList[indexPath.row].priceTwo

        return cell
    }
}
