//
//  TheListViewController.swift
//  Myapp
//
//  Created by DeemsysInc on 18/10/19.
//  Copyright © 2019 deemsys. All rights reserved.
//

import Foundation
import UIKit

struct Movies {
    var movieId:Int
    var movieName:String
    var movieImage:String
}

class TheListViewController:ViewController
{
    var movies:[Movies]=[Movies(movieId: 1, movieName: "The Prestige", movieImage: "prestige"),Movies(movieId: 2, movieName: "Memento", movieImage: "memento"),Movies(movieId: 3, movieName: "Dunkirk", movieImage: "dunkirk"),Movies(movieId: 4, movieName: "Batman-The Dark Knight", movieImage: "thedarkknight"),Movies(movieId: 5, movieName: "Insomnia", movieImage: "insomnia"),Movies(movieId: 6, movieName: "Batman Begins", movieImage: "batmanbegins"),Movies(movieId: 7, movieName: "Inception", movieImage: "inception"),Movies(movieId: 8, movieName: "Interstellar", movieImage: "interstellar"),Movies(movieId: 9, movieName: "The Dark knight Rises", movieImage: "thedarkknightrises"),Movies(movieId: 10, movieName: "Following", movieImage: "following")]
    @IBOutlet weak var christopherMovies: UICollectionView!
    
    var collectionViewLayout:UICollectionViewFlowLayout!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        christopherMovies.delegate = self
        christopherMovies.dataSource = self
    }
//    func navigationController(_ navigationController: UINavigationController, willShow viewController: UIViewController, animated: Bool) {
//        let item = UIBarButtonItem(title: " ", style: .plain, target: nil, action: nil)
//        viewController.navigationItem.backBarButtonItem = item
//
//    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationItem.title = "Nolan Movies"
//        self.navigationItem.backBarButtonItem?.title = ""
//        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "One", style: .plain, target: nil, action: nil)

    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)

    }
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        setUpCollectionViewConfifuration()
    }
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return .lightContent
    }
    
    func setUpCollectionViewConfifuration()
    {
        let numberOfItemPerRow:CGFloat = 2
        let lineSpacing:CGFloat = 5
        let interItemSpacing:CGFloat = 5
        
        let width = (christopherMovies.frame.width - (numberOfItemPerRow-1)*interItemSpacing)/numberOfItemPerRow
        
        let height = width
        
        collectionViewLayout  = UICollectionViewFlowLayout()
        collectionViewLayout.itemSize = CGSize(width: width, height: height)
        collectionViewLayout.sectionInset = UIEdgeInsets.zero
        collectionViewLayout.scrollDirection = .vertical
        collectionViewLayout.minimumLineSpacing = lineSpacing
        collectionViewLayout.minimumInteritemSpacing = interItemSpacing
        
        christopherMovies.setCollectionViewLayout(collectionViewLayout, animated: true)
    }
}
extension TheListViewController:UICollectionViewDelegate,UICollectionViewDataSource
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return movies.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionCell", for: indexPath) as! TheListViewCell
        cell.movieImage.image = UIImage(named: movies[indexPath.item].movieImage)
        cell.movieName.text = movies[indexPath.item].movieName
        
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("The Item is selected");
    }
}

