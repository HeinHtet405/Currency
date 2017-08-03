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
                        self.currencyList.append(Currency(countryName: "United State", countryImage: "usd.png", priceOne: "1 Dollar", priceTwo: usd))
                    }
                    if let eur = rates["EUR"] as? String {
                       self.currencyList.append(Currency(countryName: "Euro", countryImage: "eur.png", priceOne: "1 euro", priceTwo: eur))
                    }
                    if let sgd = rates["SGD"] as? String {
                        self.currencyList.append(Currency(countryName: "Singapore", countryImage: "sgd.png", priceOne: "1 Dollar", priceTwo: sgd))
                    }
                    if let gbp = rates["GBP"] as? String {
                        self.currencyList.append(Currency(countryName: "England", countryImage: "gbp.png", priceOne: "1 Pound", priceTwo: gbp))
                    }
                    if let chf = rates["CHF"] as? String {
                        self.currencyList.append(Currency(countryName: "Switzerland", countryImage: "chf.png", priceOne: "1 Franc", priceTwo: chf))
                    }
                    if let jpy = rates["JPY"] as? String {
                        self.currencyList.append(Currency(countryName: "Japan", countryImage: "jpy.png", priceOne: "1 Yen", priceTwo: jpy))
                    }
                    if let aud = rates["AUD"] as? String {
                        self.currencyList.append(Currency(countryName: "Australia", countryImage: "aud.png", priceOne: "1 Dollar", priceTwo: aud))
                    }
                    if let btd = rates["BTD"] as? String {
                        self.currencyList.append(Currency(countryName: "Bangladesh", countryImage: "bdt.png", priceOne: "1 Taka", priceTwo: btd))
                    }
                    if let bnd = rates["BND"] as? String {
                        self.currencyList.append(Currency(countryName: "Brunei", countryImage: "bnd.png", priceOne: "1 Dollar", priceTwo: bnd))
                    }
                    if let khr = rates["KHR"] as? String {
                        self.currencyList.append(Currency(countryName: "Cambodia", countryImage: "khr.png", priceOne: "1 Riel", priceTwo: khr))
                    }
                    if let cad = rates["CAD"] as? String {
                       self.currencyList.append(Currency(countryName: "Canada", countryImage: "cad.png", priceOne: "1 Dollar", priceTwo: cad))
                    }
                    if let cny = rates["CNY"] as? String {
                        self.currencyList.append(Currency(countryName: "China", countryImage: "cny.png", priceOne: "1 Yuan", priceTwo: cny))
                    }
                    if let hkd = rates["HKD"] as? String {
                        self.currencyList.append(Currency(countryName: "Hong Kong", countryImage: "hkd.png", priceOne: "1 Dollar", priceTwo: hkd))
                    }
                    if let inr = rates["INR"] as? String {
                        self.currencyList.append(Currency(countryName: "India", countryImage: "inr.png", priceOne: "1 Rupee", priceTwo: inr))
                    }
                    if let idr = rates["IDR"] as? String {
                        self.currencyList.append(Currency(countryName: "Indonesia", countryImage: "idr.png", priceOne: "1 Rupiah", priceTwo: idr))
                    }
                    if let krw = rates["KRW"] as? String {
                        self.currencyList.append(Currency(countryName: "Korea", countryImage: "krw.png", priceOne: "1 Won", priceTwo: krw))
                    }
                    if let lak = rates["LAK"] as? String {
                        self.currencyList.append(Currency(countryName: "Lao", countryImage: "lak.png", priceOne: "1 Kip", priceTwo: lak))
                    }
                    if let myr = rates["MYR"] as? String {
                        self.currencyList.append(Currency(countryName: "Malaysia", countryImage: "myr.png", priceOne: "1 Ringgit", priceTwo: myr))
                    }
                    if let nzd = rates["NZD"] as? String {
                        self.currencyList.append(Currency(countryName: "New Zealand", countryImage: "nzd.png", priceOne: "1 Dollar", priceTwo: nzd))
                    }
                    if let pkr = rates["PKR"] as? String {
                        self.currencyList.append(Currency(countryName: "Pakistan", countryImage: "pkr.png", priceOne: "1 Rupee", priceTwo: pkr))
                    }
                    if let php = rates["PHP"] as? String {
                        self.currencyList.append(Currency(countryName: "Philippine", countryImage: "php.png", priceOne: "1 Peso", priceTwo: php))
                    }
                    if let lkr = rates["LKR"] as? String {
                        self.currencyList.append(Currency(countryName: "Linka of Sri", countryImage: "lkr.png", priceOne: "1 Rupee", priceTwo: lkr))
                    }
                    if let thb = rates["THB"] as? String {
                         self.currencyList.append(Currency(countryName: "Thailand", countryImage: "thb.png", priceOne: "1 Baht", priceTwo: thb))
                    }
                    if let vnd = rates["VND"] as? String {
                        self.currencyList.append(Currency(countryName: "Vietname", countryImage: "vnd.png", priceOne: "1 Dong", priceTwo: vnd))
                    }
                    if let brl = rates["BRL"] as? String {
                        self.currencyList.append(Currency(countryName: "Brazil", countryImage: "brl.png", priceOne: "1 Real", priceTwo: brl))
                    }
                    if let czk = rates["CZK"] as? String {
                        self.currencyList.append(Currency(countryName: "Czech of Republic", countryImage: "czk.png", priceOne: "1 Koruna", priceTwo: czk))
                    }
                    if let dkk = rates["DKK"] as? String {
                        self.currencyList.append(Currency(countryName: "Denmark", countryImage: "dkk.png", priceOne: "1 Krone", priceTwo: dkk))
                    }
                    if let egp = rates["EGP"] as? String {
                        self.currencyList.append(Currency(countryName: "Egypt", countryImage: "egp.png", priceOne: "1 Pound", priceTwo: egp))
                    }
                    if let ils = rates["ILS"] as? String {
                        self.currencyList.append(Currency(countryName: "Israeli", countryImage: "ils.png", priceOne: "1 Shekel", priceTwo: ils))
                    }
                    if let kes = rates["KES"] as? String {
                        self.currencyList.append(Currency(countryName: "Kenya", countryImage: "kes.png", priceOne: "1 Shilling", priceTwo: kes))
                    }
                    if let kwd = rates["KWD"] as? String {
                        self.currencyList.append(Currency(countryName: "Kuwaiti", countryImage: "kwd.png", priceOne: "1 Dinar", priceTwo: kwd))
                    }
                    if let npr = rates["NPR"] as? String {
                        self.currencyList.append(Currency(countryName: "Nepalese", countryImage: "npr.png", priceOne: "1 Rupee", priceTwo: npr))
                    }
                    if let nok = rates["NOK"] as? String {
                        self.currencyList.append(Currency(countryName: "Norway", countryImage: "nok.png", priceOne: "1 Kroner", priceTwo: nok))
                    }
                    if let rub = rates["RUB"] as? String {
                        self.currencyList.append(Currency(countryName: "Russia", countryImage: "rub.png", priceOne: "1 Rouble", priceTwo: rub))
                    }
                    if let sar = rates["SAR"] as? String {
                        self.currencyList.append(Currency(countryName: "Saudi Arabia", countryImage: "sar.png", priceOne: "1 Riyal", priceTwo: sar))
                    }
                    if let rsd = rates["RSD"] as? String {
                        self.currencyList.append(Currency(countryName: "Serbia", countryImage: "rsd.png", priceOne: "1 Dina", priceTwo: rsd))
                    }
                    if let zar = rates["ZAR"] as? String {
                        self.currencyList.append(Currency(countryName: "South Africa", countryImage: "zar.png", priceOne: "1 Rand", priceTwo: zar))
                    }
                    if let sek = rates["SEK"] as? String {
                        self.currencyList.append(Currency(countryName: "Sweden", countryImage: "sek.png", priceOne: "1 Krona", priceTwo: sek))
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
