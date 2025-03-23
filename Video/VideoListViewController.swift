//
//  VideoListViewController.swift
//  Video
//
//  Created by Irina on 22/3/25.
//

import Foundation
import UIKit
import AVKit

class VideoListViewController: UIViewController {
    
    private let tableView = UITableView()

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Video List"
        view.backgroundColor = .white
        
        setupTableView()
    }

    private func setupTableView() {
        tableView.frame = view.bounds
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        view.addSubview(tableView)
    }
}


extension VideoListViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let video = videos[indexPath.row]
        
        cell.textLabel?.text = video.title
        cell.imageView?.image = UIImage(named: video.thumbnail)
        cell.accessoryType = .disclosureIndicator
        return cell
    }

    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let video = videos[indexPath.row]
        let playerVC = VideoPlayerViewController(videoURL: video.url)
        navigationController?.pushViewController(playerVC, animated: true)
    }
}
