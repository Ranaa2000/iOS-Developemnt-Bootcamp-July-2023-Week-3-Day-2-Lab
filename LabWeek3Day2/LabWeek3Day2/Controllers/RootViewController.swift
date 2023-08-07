//
//  RootViewController.swift
//  LabWeek3Day2
//
//  Created by Rana MHD on 21/01/1445 AH.
//

import Foundation
import UIKit
import SnapKit

class RootViewController: UIViewController {
    let categories : Array<String> = [
        "U.S. Politics",
        "Tech Companies",
        "TV and Movies",
        "Recipes",
        "Travel",
        "Celebs",
        "Restaurant"
    ]
    
    let categories2 : Array<String> = [
        "Travel Tips",
        "Luxury Homes",
        "Architecture",
        "Faction",
        "Mens style",
        "Cars",
        "Win & drink",
        "Kitchen Product"
    ]
    
    let categories3 : Array<String> = [
        "Health",
         "Exercise"

    ]
    
    let cardsCollectionView: CardsCollectionView = .init()
    let label: UILabel = .init()
    let cardLabel: UILabel = .init()

    let cardsCollectionView2: CardsCollectionView = .init()
    let cardLabel2: UILabel = .init()

    let cardsCollectionView3: CardsCollectionView = .init()
    let cardLabel3: UILabel = .init()
    
    let button: UIButton = .init(type: .system)

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        configureSubtitle()
        configureCardSubtitle()
        configureCardsCollectionView()
        configureCardSubtitle2()
        configureCardsCollectionView2()
        configureCardSubtitle3()
        configureCardsCollectionView3()
        configureButton()
        self.title = "Personalize your feed"
        
    }
    
    func configureSubtitle() {
        label.text = "Select 10 or more topics"
        label.textAlignment = .center
        label.textColor = .gray
        self.view.addSubview(label)
        label.snp.makeConstraints {
            $0.top.equalTo(100)
            $0.width.equalTo(self.view.frame.width)
        }
    }
    
    func configureCardSubtitle() {
        cardLabel.text = "Most Popular"
        cardLabel.textAlignment = .left
        cardLabel.textColor = .gray
        self.view.addSubview(cardLabel)
        cardLabel.snp.makeConstraints {
            $0.top.equalTo(label.snp.bottom)
            $0.width.equalTo(self.view.frame.width)
        }
    }

    func configureCardsCollectionView() {
        cardsCollectionView.setCategories(categories: categories)
        self.view.addSubview(cardsCollectionView)
        cardsCollectionView.snp.makeConstraints{
            $0.top.equalTo(cardLabel.snp.bottom)
            $0.width.equalTo(self.view.frame.width - 32)
            $0.height.equalTo (200)
            $0.leading.equalTo (16)
        }
    }
    
    func configureCardSubtitle2() {
        cardLabel2.text = "Life Style"
        cardLabel2.textAlignment = .left
        cardLabel2.textColor = .gray
        self.view.addSubview(cardLabel2)
        cardLabel2.snp.makeConstraints {
            $0.top.equalTo(cardsCollectionView.snp.bottom)
            $0.width.equalTo(self.view.frame.width)
        }
    }

    func configureCardsCollectionView2() {
        cardsCollectionView2.setCategories(categories: categories2)
        self.view.addSubview(cardsCollectionView2)
        cardsCollectionView2.snp.makeConstraints{
            $0.top.equalTo(cardLabel2.snp.bottom)
            $0.width.equalTo(self.view.frame.width - 32)
            $0.height.equalTo (200)
            $0.leading.equalTo (16)
        }
    }
    
    func configureCardSubtitle3() {
        cardLabel3.text = "Health"
        cardLabel3.textAlignment = .left
        cardLabel3.textColor = .gray
        self.view.addSubview(cardLabel3)
        cardLabel3.snp.makeConstraints {
            $0.top.equalTo(cardsCollectionView2.snp.bottom)
            $0.width.equalTo(self.view.frame.width)
        }
    }
    
    func configureCardsCollectionView3() {
        cardsCollectionView3.setCategories(categories: categories3)
        self.view.addSubview(cardsCollectionView3)
        cardsCollectionView3.snp.makeConstraints{
            $0.top.equalTo(cardLabel3.snp.bottom)
            $0.width.equalTo(self.view.frame.width - 32)
            $0.height.equalTo (200)
            $0.leading.equalTo (16)
        }
    }
    
    func configureButton() {
        button.setTitle("selected", for: .normal)
        button.frame = CGRect(x: 20, y: 20, width: 100, height: 50)
        self.view.addSubview(button)
        button.snp.makeConstraints{
            $0.top.equalTo(cardsCollectionView3.snp.bottom)
            $0.width.equalTo(self.view.frame.width)
        }
    }
}
