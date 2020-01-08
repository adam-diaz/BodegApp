//
//  ImageHelper.swift
//  BodegApp
//
//  Created by Adam Diaz on 1/7/20.
//  Copyright © 2020 Adam Diaz. All rights reserved.
//


import UIKit

extension UIImageView {
    func getImage(with urlString: String, completion: @escaping (Result<UIImage, AppError>) -> ()) {
        
        let activityIndicator = UIActivityIndicatorView(style: .medium)
        activityIndicator.color = .blue
        activityIndicator.startAnimating()
        activityIndicator.center = center
        addSubview(activityIndicator)
        
        guard let url = URL(string: urlString) else {
            completion(.failure(.badURL(urlString)))
            return
        }
        
        let request = URLRequest(url: url)
        
        NetworkHelper.shared.performDataTask(with: request) { [weak activityIndicator] (result) in
            DispatchQueue.main.async {
              activityIndicator?.stopAnimating()
            }
            switch result {
            case .failure(let appError):
                completion(.failure(appError))
            case .success(let data):
                if let image = UIImage(data: data) {
                    completion(.success(image))
                }
            }
        }
    }
}
