//
//  PortfolioViewController.swift
//  avcorp
//
//  Created by Akash Jambhulkar on 08/07/19.
//  Copyright © 2019 Akash Jambhulkar. All rights reserved.
//

import UIKit

class PortfolioViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var mainTableView: UITableView!
    
    let arrTitle = ["Innovi track", "MESHWAA ACADEMY", "NALANDA TRUST INDIA", "ENERGETICAQUA", "MAA JYOTISH", "E-WHIZZ", "MY BABASAHEB"]
    let arrDesc = ["""
Security is most important nowadays! We understand the significance of safety in the fast-growing world, where everyone has to become independent and travel alone. Hence, we have developed mobile app tracker through which you can track and stay connected with your loved one, family members, old parents, and employees anytime, anywhere.
        
        Locate your employees and secures their safety while they are leaving home or offices. Moreover, track your field staff, stay connected with them, and monitor their activities easily with mobile tracker application.
        
        Tracking down your family and aged parents from anywhere, at any time is now easy. Just download our app and turn your mobile into real-time GPS tracker.
""", """
fearless life

Our Company Is Established By Licensed & Insured.

Frankly behavior and atmosphere

To develop the student personality

Our Improvment Day After Day.

To help the students achieve their aspiration.

To create environment conducive to all round development of students
""", """
we are an Educational and Charitable Trust based in Palanpur, the largest city in the Banaskantha Gujarat in India. We work within 8 University across India.

NALANDA is committed to changing minds and behavioural patterns that impede the development of communities by using Education as a Techanical study and Social education.

NALANDA NGO was formed in 2004 with the purpose of education training to slum dwellers as a professional company of performers, educators, political activists, and workshop leaders. This has provided permanent employment and valuable skills to these individuals, as well as facilitate their ability to promote critical consciousness and practical solutions within their own communities and beyond.
""", """
Established in year 2016, we, “Harsiddha Enterprise” is an ISO 9001:2008 certified organization engaged in manufacturing and supplying a quality range of Water Purifiers and Treatment Plants.Our products array is not limited to only purification plant, it also consists Water Treatment Plant, RO Plants, and Filtration Plant that is processed by experience engineers of domain & with the help of latest machines & tools.
""", """
માં જ્યોતિષ માં આપને આપણા જન્મ ગ્રહો થકી થતા દોષો મોથી નીકળવાના સરળ રસ્તાઓનું સૂચન કરવામો આવે છે તથા પૂજા વિધિ કરી આપવામો આવે છે આધારભૂત ગ્રંથો જેવા કે લાલકિતાબ, ક્લીકિતાબઃ , સરળ ગ્રહ થકી નિદાન ઉપચાર કાર્ય થાય છે

આ સંસ્થા સાબર મંત્રો જે સરળ ભાષામો સિદ્ધ કરેલ છે તે થાકી ગ્રહ દોષ પ્રેત નિવારણ ,સંતાન દોષ ,લગ્નયોગ , ધંધાનું બંધન ,કુખબંધન, ગૃહબંધન, વશીકરણ, સ્તંભન ,ઉચ્ચારણ, જેવા ati કઠિન પ્રસ્નોનું તાત્કાલિક નિવારણ કરવામો આવે છે...
""", """
With our customer centric approach, we understand your requirements and deliver you with end-to- end web and custom e-learning solutions.

Backed by a competent team and active support staff, we persistently work towards offering highest quality of IT services like website design and development, software development, logo design, customised e-module development.
""", """
ભીમરાવ રામજી આંબેડકર (૧૪ એપ્રિલ ૧૮૯૧ – ૬ ડીસેમ્બર ૧૯૫૬) એક કાયદાશાસ્ત્રી,રાજનેતા,તત્વચિંતક,નૃવંશશાસ્ત્રી,ઇ￵તહાસકાર અને અર્થશાસ્ત્રી હતા. એક ગરીબ મહારાષ્ટ્ર પરીવારમાં જન્મેલા આંબેડકરે ભારતની વર્ણવ્યવસ્થાના નામેઓળખાતી સામાિજક ભેદભાવનીપરંપરા વિરુદ્ધ ઝુંબેશ ચલાવી. તેઓએ બોદ્ધ ધર્મનો અંગી-કાર કર્યો અનેલાખો દિલતોનેથેરાવાદ બોદ્ધ પરંપરામાંધર્મપરીવર્તન કરવા માટે પ્રેરીત કર્યો.
"""]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        mainTableView.delegate = self
        mainTableView.dataSource = self
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrTitle.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PortfolioCell", for: indexPath) as! PortfolioCell
        
        cell.img.image = UIImage(named: "\(indexPath.row)")
        cell.lblTitle.text = arrTitle[indexPath.row]
        cell.lblDesc.text = arrDesc[indexPath.row]
        
        return cell
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
