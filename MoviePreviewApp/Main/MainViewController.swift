//
//  MainViewController.swift
//  MoviePreviewApp
//
//  Created by Mac on 2022/03/01.
//

import UIKit

class MainViewController: UIViewController {
    var sampleMovies: [SampleMovie] = []
    var movies: [Movie] = []
    
    override func viewDidLoad() {
        super .viewDidLoad()
        
        let mainCollectionView: UICollectionView = {
            let layout = UICollectionViewFlowLayout()
            layout.scrollDirection = .vertical
            layout.sectionInset = UIEdgeInsets(top: 5, left: 0, bottom: 5, right: 0)
            
            let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
            
            return collectionView
        }()
        
        self.view.addSubview(mainCollectionView)
        
        mainCollectionView.dataSource = self
        mainCollectionView.delegate = self
    }
}

extension MainViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch section {
        case 0:
            return 1
        default:
            return 0
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
    }
    
}
