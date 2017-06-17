//
//  CarTableViewController.swift
//  AdaptivePresentationExercise
//
//  Created by Wismin Effendi on 6/16/17.
//  Copyright © 2017 iShinobi. All rights reserved.
//

import UIKit

class CarTableViewController: UITableViewController {

    var cars: [Car] = CarData.audi
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.contentInset = UIEdgeInsetsMake(20, 0, 0, 0)
    }



    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cars.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CarCell", for: indexPath)
        let car = cars[indexPath.row]
        cell.textLabel?.text = car.title
        if car.otherInfo != nil {
            cell.accessoryType = .detailButton
        } else {
            cell.accessoryType = .none
        }
        return cell
    }
    
    override func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWith indexPath: IndexPath) {
        let car = cars[indexPath.row]
        let detailText = car.otherInfo!
        let tableCell = tableView.cellForRow(at: indexPath)!
        var accessoryView = tableCell.accessoryView
        if accessoryView == nil {
            for subView in tableCell.subviews {
                if let button = subView as? UIButton {
                    accessoryView = button
                    break
                }
            }
        }
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let infoViewController = storyboard.instantiateViewController(withIdentifier: "InformationViewController") as! InformationViewController
        infoViewController.detailText = detailText
        infoViewController.modalPresentationStyle = .popover
        let popover: UIPopoverPresentationController = infoViewController.popoverPresentationController!
        popover.sourceView = accessoryView
        popover.sourceRect = accessoryView!.bounds
        popover.delegate = self
        present(infoViewController, animated: true, completion: nil)
    }
    
}

extension CarTableViewController: UIPopoverPresentationControllerDelegate {
    
    func adaptivePresentationStyle(for controller: UIPresentationController) -> UIModalPresentationStyle {
        return .fullScreen
    }
    
    func presentationController(_ controller: UIPresentationController, viewControllerForAdaptivePresentationStyle style: UIModalPresentationStyle) -> UIViewController? {
        
        let navigationController = UINavigationController(rootViewController: controller.presentedViewController)
        let doneButton = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(CarTableViewController.dismissPopoverViewController))
        navigationController.topViewController?.navigationItem.rightBarButtonItem = doneButton
        
        return navigationController
    }
    
    // MARK: - Helper 
    func dismissPopoverViewController() {
        self.dismiss(animated: true, completion: nil)
    }
}
