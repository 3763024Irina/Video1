//
//  VideoPlayerViewController.swift
//  Video
//
//  Created by Irina on 22/3/25.
//

import Foundation
import UIKit
import AVKit

class VideoPlayerViewController: UIViewController {
    
    private let videoURL: String
    
    init(videoURL: String) {
        self.videoURL = videoURL
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        playVideo()
    }

    private func playVideo() {
        guard let url = URL(string: videoURL) else { return }
        let player = AVPlayer(url: url)
        let playerVC = AVPlayerViewController()
        playerVC.player = player

        // Подписка на окончание видео
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(videoDidEnd),
                                               name: .AVPlayerItemDidPlayToEndTime,
                                               object: player.currentItem)

        present(playerVC, animated: true) {
            player.play()
        }
    }

    // Метод для закрытия после завершения видео
    @objc private func videoDidEnd() {
        dismiss(animated: true)
    }

}

