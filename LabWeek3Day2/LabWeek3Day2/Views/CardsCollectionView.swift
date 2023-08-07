//
//  CardsCollectionView.swift
//  LabWeek3Day2
//
//  Created by Rana MHD on 21/01/1445 AH.
//

import Foundation
import UIKit
import SnapKit

class CardsCollectionView: UIView {
    var categories : Array<String> = []

    var collectionView: UICollectionView = .init(
        frame: .zero,
        collectionViewLayout: UICollectionViewLayout()
    )
    
    func setCategories(categories: Array<String>) {
        self.categories = categories
    }

    init() {
        super.init(frame: .zero)
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 120, height: 60)
        layout.minimumLineSpacing = 2
        layout.minimumInteritemSpacing = 2
        layout.scrollDirection = .horizontal
        collectionView = .init(frame: .zero, collectionViewLayout: layout)
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(UICollectionViewCell.self ,forCellWithReuseIdentifier: "cell")
        collectionView.showsHorizontalScrollIndicator = false
        self.addSubview(collectionView)
        collectionView.snp.makeConstraints {
            $0.leading.top.trailing.bottom.equalTo(0)
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
        
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
}

extension CardsCollectionView: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return categories.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath as IndexPath)
        let label = UILabel()
        label.text = categories[indexPath.item]
        label.textAlignment = .center
        label.textColor = .darkGray
        cell.addSubview(label)
        label.snp.makeConstraints{
            $0.leading.top.trailing.bottom.equalTo(cell)
        }
        cell.backgroundColor = .gray.withAlphaComponent(0.2)
        cell.layer.cornerRadius = 10
        return cell
    }

}
