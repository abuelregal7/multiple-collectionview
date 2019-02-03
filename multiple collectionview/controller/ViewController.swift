//
//  ViewController.swift
//  multiple collectionview
//
//  Created by Ahmed abu elregal on 11/18/18.
//  Copyright © 2018 Ahmed abu elregal. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    var selected : Int!
//    var icon1 : [UIImage] = [
//
//        UIImage(named: "01d")!,
//        UIImage(named: "01n")!,
//        UIImage(named: "02d")!,
//        UIImage(named: "02n")!,
//        UIImage(named: "03d")!,
//        UIImage(named: "03n")!,
//        UIImage(named: "04d")!,
//        UIImage(named: "04n")!,
//        UIImage(named: "09d")!,
//        UIImage(named: "09n")!,
//        UIImage(named: "10d")!,
//        UIImage(named: "10n")!,
//        UIImage(named: "11d")!,
//        UIImage(named: "11n")!,
//        UIImage(named: "13d")!,
//        UIImage(named: "13n")!,
//        UIImage(named: "50d")!,
//        UIImage(named: "50n")!
//    ]
    var arabic_image1 = ["images1","images2","images3","images4","images5","images6","images7","images8","images9","images10"]
    var arabic_image2 = ["images1","images2","images3","images4","images5","images6","images7","images8","images9","images10"]
    
    @IBOutlet weak var firstCollectionView: UICollectionView!
    @IBOutlet weak var secondCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        firstCollectionView.dataSource = self
        firstCollectionView.delegate = self
        secondCollectionView.dataSource = self
        secondCollectionView.delegate = self
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if (selected == 0)
        {
            return arabic_image1.count
        }
        else
        {
            return arabic_image2.count
        }
       
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if (collectionView == self.firstCollectionView)
        {
            let cell : image1CollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "image1CollectionViewCell", for: indexPath) as! image1CollectionViewCell
            cell.image1.image = UIImage(named: (arabic_image1[indexPath.row]))
            return cell
        }
        else
        {
            let cell : image2CollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "image2CollectionViewCell", for: indexPath) as! image2CollectionViewCell
            cell.image2.image = UIImage(named: arabic_image2[indexPath.row])
            return cell
        }
        
    }
    
    
    

}

