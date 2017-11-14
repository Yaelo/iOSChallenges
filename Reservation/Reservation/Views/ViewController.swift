//
//  ViewController.swift
//  Reservation
//
//  Created by MCS Devices on 11/8/17.
//  Copyright © 2017 MCS Devices. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var offertLabel: UILabel!
    @IBOutlet weak var reserveButton: UIButton!
    
    let services = [Services.SwedishMassage, Services.DeepTissueMassage, Services.SportMassage , Services.Reflexologi , Services.TriggerPointTherapy]
    var service: Services = .DeepTissueMassage
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //tableView.rowHeight = (tableView.contentSize.height / 5.0)  - 1.0
        tableView.layer.cornerRadius = 15.0
        prepareScrollView()
        setUIOffers(indexPage: 0)
        setTitle()
        reserveButton.layer.cornerRadius = 8.0
    }
    fileprivate func setTitle(){
        self.navigationController?.title = "SPA Service"
    }
    func prepareScrollView(){
        self.scrollView.frame = CGRect(x:0, y:0, width:self.view.frame.width, height:self.view.frame.height)
        let scrollViewWidth:CGFloat = self.scrollView.frame.width
        let scrollViewHeight:CGFloat = self.scrollView.frame.height
        
        let imgOne = UIImageView(frame: CGRect(x:0, y:0,width:scrollViewWidth, height:scrollViewHeight))
        imgOne.image = UIImage(named: Constants.DeepTissueMassage)
        let imgTwo = UIImageView(frame: CGRect(x:scrollViewWidth, y:0,width:scrollViewWidth, height:scrollViewHeight))
        imgTwo.image = UIImage(named: Constants.Reflexologi)
        let imgThree = UIImageView(frame: CGRect(x:scrollViewWidth*2, y:0,width:scrollViewWidth, height:scrollViewHeight))
        imgThree.image = UIImage(named: Constants.SwedishMassage)
//        let imgFour = UIImageView(frame: CGRect(x:scrollViewWidth*3, y:0,width:scrollViewWidth, height:scrollViewHeight))
//        imgFour.image = UIImage(named: Constants.TriggerPointTherapy)
        
        self.scrollView.addSubview(imgOne)
        self.scrollView.addSubview(imgTwo)
        self.scrollView.addSubview(imgThree)
//        self.scrollView.addSubview(imgFour)
        
        self.scrollView.contentSize = CGSize(width:self.scrollView.frame.width * CGFloat(self.scrollView.subviews.count - 1), height:self.scrollView.frame.height)
        self.scrollView.delegate = self
        self.pageControl.currentPage = 0
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showReservationsAction(_ sender: Any) {
        goToViewController(identifier: Constants.ReservationViewController)
    }
    
    @IBAction func reserveButtonAction(_ sender: Any) {
        goToViewController(identifier: Constants.ScheduleViewController)
    }
    func goToViewController(identifier: String){
        if let destinationViewController = storyboard?.instantiateViewController(withIdentifier: identifier){
            if identifier == Constants.ScheduleViewController{
                (destinationViewController as! ScheduleViewController).service = service
            }
            navigationController?.pushViewController(destinationViewController, animated: true)
        }
    }
}

extension ViewController: UITableViewDataSource,UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return services.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        (cell.viewWithTag(1) as! UILabel).text = services[indexPath.row].rawValue
        //cell.backgroundColor = indexPath.row % 2 == 0 ? UIColor.white : UIColor.lightGray
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: Constants.scheduleSegue, sender: indexPath.row)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == Constants.scheduleSegue{
            if let nextView = segue.destination as? ScheduleViewController, let row = tableView.indexPathForSelectedRow?.row{
                nextView.service = services[row]
            }
        }
    }
}
extension ViewController: UIScrollViewDelegate{
    
    
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let pageWidth:CGFloat = scrollView.frame.width
        let contentOffset: CGFloat = self.scrollView.contentOffset.x
        let currentPage: CGFloat = floor((contentOffset-pageWidth/2)/pageWidth)+1
        let indexPage = Int(currentPage)
        
        switch indexPage {
        case 0:
            setUIOffers(indexPage: indexPage)
        case 1:
            setUIOffers(indexPage: indexPage)
        case 2:
            setUIOffers(indexPage: indexPage)
        default:
            print("no offers")
        }
        self.pageControl.currentPage = indexPage
    }
    func setUIOffers(indexPage: Int){
        let offers = getOffers()
        offertLabel.text = offers[indexPage].offert
        service = offers[indexPage].service
        offertLabel.layer.cornerRadius = 30.0
    }
//    func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
//        let pageWidth:CGFloat = scrollView.frame.width
//        let totalPages = scrollView.subviews.count
//        let maxWidth: CGFloat = pageWidth * CGFloat(totalPages)
//        let contentOffset: CGFloat = self.scrollView.contentOffset.x
//        let currentPage: CGFloat = floor((contentOffset-pageWidth/2)/pageWidth)+1
//        let slideToX = (currentPage) >= maxWidth ? 0 : currentPage
//
//        //self.scrollView.scrollRectToVisible(CGRect(x:slideToX, y:0, width:pageWidth, height:self.scrollView.frame.height), animated: true)
//    }
    func getOffers() -> [ServicesOfferts]{
        var offers: [ServicesOfferts] = []
        offers.append(ServicesOfferts(service: .DeepTissueMassage, offert: "10% off \(Services.DeepTissueMassage) April 10 - 30"))
        offers.append(ServicesOfferts(service: .SwedishMassage, offert: "50% off \(Services.SwedishMassage) May 1 - 10"))
        offers.append(ServicesOfferts(service: .Reflexologi, offert: "20% off \(Services.Reflexologi) June 1- 20"))
        return offers
    }
}
