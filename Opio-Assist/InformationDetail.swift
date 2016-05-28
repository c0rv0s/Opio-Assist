//
//  informationDetail.swift
//  Opio-Assist
//
//  Created by Nathan Mueller on 5/16/16.
//  Copyright © 2016 OneNathan. All rights reserved.
//

import Foundation
import UIKit
import AVFoundation
import SafariServices

class InformationDetail: UITableViewController {
    
    //side effects
    var dataSourceSideEffects = ["Side effects of Buprenorphine", "Side effects of Buprenorphine", "Interactions with Buprenorphine", "Common Side Effects from Buprenorphine", "Naltrexone Fact Sheet", "Side effects of Methadone", "Interaction with Methadone", "Dealing with Methadone", "Constipations During MMT", "Getting help for Sexual Problems", "Methadone & Mental Functioning", "Sleep Problems During MMT",  ]
    
    var URLsSideEffects = ["http://www.samhsa.gov/medication-assisted-treatment/treatment/buprenorphine", "https://www.nlm.nih.gov/medlineplus/druginfo/meds/a605002.html", "http://store.samhsa.gov/shin/content/SMA09-4442/SMA09-4442.pdf", "http://www.naabt.org/buprenorphine-side-effects.cfm", "http://www.samhsa.gov/medication-assisted-treatment/treatment/methadone", "https://www.nlm.nih.gov/medlineplus/druginfo/meds/a682134.html", "http://healthqwest.us/pdfs/Methadone.Brochure.pdf", "http://www.atforum.com/documents/english/Constipation_During_MMT.pdf", "http://www.atforum.com/documents/english/Getting_help_for_sexual_problems.pdf", "http://www.atforum.com/documents/english/Methadone_and_Mental_Functioning.pdf", "http://www.atforum.com/documents/english/Sleep_Problems_During_MMT.pdf", ]
    
    //medication
    var dataSourceMedication = ["What buprenorphine treatment is like", "How to find buprenorphine treatment", "An intro to buprenorphine treatment", "Withdrawal and buprenorphine", "How buprenorphine works", "MAT info about Naltrexone", "Facts about Naltrexone", "Information on Naltrexone", "Medlineplus drug interaction", "Methadone with other Drugs", "Dangers of Substance Abuse During MMT", "Dealing with Pain", "Methadone Drug Interaction Checker", "Drug Interaction Checker", "Methadone abuse worksheet", "MMT brochure", "How to Use Methadone Safely", "Facts about Naltrexone", "Facts about Buprenorphine", "Common Problems in Patients Recovering from Chemical Dependency", "Methadone user success stories", "NCADD Recovery Stories", "Know Your Rights ", "Treating opiate addiction PT1", "Treating opiate addiction PT2"]
    
    var URLsMedication = ["http://www.naabt.org/education/what_bt_like.cfm", "http://www.naabt.org/tl/buprenorphine-suboxone-treatment.cfm", "http://www.naabt.org/documents/naabt_brochure%20Version%202.pdf", "http://www.naabt.org/documents/NAABT_PrecipWD.pdf", "http://www.naabt.org/collateral/How_Bupe_Works.pdf", "http://www.samhsa.gov/medication-assisted-treatment/treatment/naltrexone", "http://store.samhsa.gov/shin/content/SMA12-4444/SMA12-4444.pdf", "http://pubs.niaaa.nih.gov/publications/combine/appendixC.htm", "https://www.nlm.nih.gov/medlineplus/medlineplus.html", "http://atforum.com/documents/english/Methadone_Interactions_with_other_drugs.pdf", "http://atforum.com/documents/english/The_dangers_of_substance_abuse_during_MMT.pdf", "http://atforum.com/patient-education-brochures/", "http://reference.medscape.com/drug/methadose-dolophine-methadone-343317#3", "http://www.webmd.com/interaction-checker/default.htm", "http://www.methadone.us/matrix.pdf", "http://atforum.com/documents/english/Telling_others_about_MMT.pdf", "http://store.samhsa.gov/product/Follow-Directions-How-to-Use-Methadone-Safely/SMA09-4409", "http://store.samhsa.gov/shin/content/SMA12-4444/SMA12-4444.pdf", "http://store.samhsa.gov/product/The-Facts-about-Buprenorphine-for-Treatment-of-Opioid-Addiction/SMA15-4442", "http://www.aafp.org/afp/2003/1115/p1971.html", "http://www.methadone.us/methadone-success-stories/", "https://ncadd.org/people-in-recovery", "http://www.samhsa.gov/sites/default/files/partnersforrecovery/docs/Know_Your_Rights_Brochure_0110.pdf", "http://www.health.harvard.edu/addiction/treating-opiate-addiction-part-i-detoxification-and-maintenance", "http://www.health.harvard.edu/mind-and-mood/treating_opiate_addiction_alternatives_to_maintenance"]
    
    //relationships
    var dataSourceRelations = ["Telling Others about MAT", "Facts for Family & Friends", "Consumer Guide to MAT", "Buprenorphine emergency card", "Recovery Month stories", "Buprenorphine user stories", "NA Meeting location finder", "AA Meeting location finder", "Anger Management", "CDA Meeting finder", "SMART Meeting Finder", "Recovery Worksheets", "Faces and Voices of Recovery", "Narcotics Anonymous", "Heroin Anonymous", "In the Rooms"]
    
    var URLsRelations = ["http://atforum.com/documents/english/Telling_others_about_MMT.pdf", "http://store.samhsa.gov/product/Medication-Assisted-Treatment-for-Opioid-Addiction-Facts-for-Families-and-Friends/SMA15-4443", "http://www.ncadd.org/images/stories/PDF/Consumer-Guide-Medication-Assisted-Recovery.pdf", "http://www.naabt.org/documents/EmergencyCard.pdf", "https://www.youtube.com/playlist?list=PLAWzAhT15N-qurIyzUG8bI8OHA1w80utI", "http://www.naabt.org/true_stories.cfm", "http://store.samhsa.gov/shin/content/SMA13-4213/SMA13-4213.pdf", "http://cdawebsitedev.com/meetings.html", "http://www.smartrecovery.org/meetings_db/view/", "http://www.smartrecovery.org/resources/toolchest.htm", "http://www.facesandvoicesofrecovery.org/guide/support/", "http://www.na.org.za/meeting-api", "http://www.heroinanonymous.org/HAUS.html", "http://www.intherooms.com/"]
    
    //relapse
    var dataSourceRelapse = ["Common Problems in Patients Recovering from Chemical Dependency", "Recovery Month stories", "Buprenorphine user stories", "Methadone user success stories", "NCADD Recovery Stories", "Meeting location finder", "Recovery Worksheets"]
    
    var URLsRelapse = ["http://www.aafp.org/afp/2003/1115/p1971.html", "https://www.youtube.com/playlist?list=PLAWzAhT15N-qurIyzUG8bI8OHA1w80utI", "http://www.naabt.org/true_stories.cfm", "http://www.methadone.us/methadone-success-stories/", "https://ncadd.org/people-in-recovery", "http://www.addictionsurvivors.org/vbulletin/forumdisplay.php?f=45", "http://www.smartrecovery.org/resources/toolchest.htm"]
    
    //doctors
    var dataSourceDoctors = ["Know Your Rights ", "Methadone Clinics by state", "NA Meeting location finder", "AA Meeting location finder", "Meeting location finder", "CDA Meeting finder", "SMART Meeting Finder", "Faces and Voices of Recovery", "Narcotics Anonymous", "Heroin Anonymous", "In the Rooms"]
    
    var URLsDoctors = ["http://www.samhsa.gov/sites/default/files/partnersforrecovery/docs/Know_Your_Rights_Brochure_0110.pdf", "http://www.methadone.us/methadone-clinics/", "http://www.na.org.za/meeting-api", "http://www.aa.org/pages/en_US/find-aa-resources", "http://www.addictionsurvivors.org/vbulletin/forumdisplay.php?f=45", "http://cdawebsitedev.com/meetings.html", "http://www.smartrecovery.org/meetings_db/view/", "http://www.facesandvoicesofrecovery.org/guide/support/", "http://www.na.org.za/meeting-api", "http://www.heroinanonymous.org/HAUS.html", "http://www.intherooms.com/"]
    
    //parenting
    var dataSourceParent = [ "Child's drug use/alcohol use", "Intervention", "Tips for Speaking with Children by age", "MAT for parents of teens using", "Keeping Your Teens Drug-Free"]
    
    var URLsParent = ["http://www.drugfree.org/wp-content/uploads/2012/04/treatment_guide-2014.pdf", "http://www.drugfree.org/wp-content/uploads/2014/05/MAT_EBOOK_2014v2.pdf", "http://www.drugfree.org/the-parent-toolkit/age-by-age-advice/", "http://www.drugfree.org/wp-content/uploads/2014/05/MAT_EBOOK_2014v2.pdf", "http://store.samhsa.gov/product/Keeping-Your-Teens-Drug-Free-A-Guide-for-African-American-Parents-and-Caregivers/PHD1116?WT.ac=AD20120720_PHD1116"]
    
    //timemanagemetn
    var dataSourceTime = []
    
    
    //family
    var dataSourceFamily = ["Intervention",  "Getting help for Sexual Problems"]
    
    var URLsFamily = ["http://www.drugfree.org/wp-content/uploads/2014/05/MAT_EBOOK_2014v2.pdf", "http://www.atforum.com/documents/english/Getting_help_for_sexual_problems.pdf"]
    

    var set = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController!.navigationBar.barTintColor = UIColor(red: 216/255, green: 216/255, blue: 216/255, alpha: 1)
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if set == "Side Effects" {
            return dataSourceSideEffects.count
        }
        if set == "Medication" {
            return dataSourceMedication.count
        }
        if set == "Relationships" {
            return dataSourceRelations.count
        }
        if set == "Relapse" {
            return dataSourceRelapse.count
        }
        if set == "Doctors" {
            return dataSourceDoctors.count
        }
        if set == "Parenting" {
            return dataSourceParent.count
        }
        else {
            return self.dataSourceFamily.count
        }
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell 	{
        
        let cell:InfoDetailCell = self.tableView.dequeueReusableCellWithIdentifier("InfoDetailCell") as! InfoDetailCell
        
        if set == "Side Effects" {
            cell.cellLabel = dataSourceSideEffects[indexPath.row]
            print(dataSourceSideEffects[indexPath.row])
            cell.titleLabel!.text = dataSourceSideEffects[indexPath.row]
        }
        if set == "Medication" {
            cell.cellLabel = dataSourceMedication[indexPath.row]
            print(dataSourceMedication[indexPath.row])
            cell.titleLabel!.text = dataSourceMedication[indexPath.row]
        }
        if set == "Relationships" {
            cell.cellLabel = dataSourceRelations[indexPath.row]
            print(dataSourceRelations[indexPath.row])
            cell.titleLabel!.text = dataSourceRelations[indexPath.row]
        }
        if set == "Relapse" {
            cell.cellLabel = dataSourceRelapse[indexPath.row]
            print(dataSourceRelapse[indexPath.row])
            cell.titleLabel!.text = dataSourceRelapse[indexPath.row]
        }
        if set == "Doctors" {
            cell.cellLabel = dataSourceDoctors[indexPath.row]
            print(dataSourceDoctors[indexPath.row])
            cell.titleLabel!.text = dataSourceDoctors[indexPath.row]
        }
        if set == "Parenting" {
            cell.cellLabel = dataSourceParent[indexPath.row]
            print(dataSourceParent[indexPath.row])
            cell.titleLabel!.text = dataSourceParent[indexPath.row]
        }
        if set == "Family" {
            cell.cellLabel = dataSourceFamily[indexPath.row]
            print(dataSourceFamily[indexPath.row])
            cell.titleLabel!.text = dataSourceFamily[indexPath.row]
        }

        return cell
        
    }
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 50
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        if set == "Side Effects" {
            let svc = SFSafariViewController(URL: NSURL(string: URLsSideEffects[indexPath.row] as! String)!)
            self.presentViewController(svc, animated: true, completion: nil)
        }
        if set == "Medication" {
            let svc = SFSafariViewController(URL: NSURL(string: URLsMedication[indexPath.row] as! String)!)
            self.presentViewController(svc, animated: true, completion: nil)
        }
        if set == "Relationships" {
            let svc = SFSafariViewController(URL: NSURL(string: URLsRelations[indexPath.row] as! String)!)
            self.presentViewController(svc, animated: true, completion: nil)
        }
        if set == "Relapse" {
            let svc = SFSafariViewController(URL: NSURL(string: URLsRelapse[indexPath.row] as! String)!)
            self.presentViewController(svc, animated: true, completion: nil)
        }
        if set == "Doctors" {   
            let svc = SFSafariViewController(URL: NSURL(string: URLsDoctors[indexPath.row] as! String)!)
            self.presentViewController(svc, animated: true, completion: nil)
        }
        if set == "Parenting" {
            let svc = SFSafariViewController(URL: NSURL(string: URLsParent[indexPath.row] as! String)!)
            self.presentViewController(svc, animated: true, completion: nil)
        }
        if set == "Family" {
            let svc = SFSafariViewController(URL: NSURL(string: URLsFamily[indexPath.row] as! String)!)
            self.presentViewController(svc, animated: true, completion: nil)
        }
    }
}

