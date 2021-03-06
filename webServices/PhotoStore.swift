//
//  PhotoStore.swift
//  webServices
//
//  Created by d182_oscar_a on 11/05/18.
//  Copyright © 2018 d182_oscar_a. All rights reserved.
//

import Foundation

class PhotoStore {
    
    private let session: URLSession = {
        let config = URLSessionConfiguration.default
        return URLSession(configuration: config)
    }()
    
    
    func fetchInterestingPhotos() {
        let url = FlickrAPI.interestingPhotosURL
        let request = URLRequest(url: url)
        let task = session.dataTask(with: request) {
            (data, response, error) -> Void in
            if let jsonData = data {
                if let jsonString = String(data: jsonData,
                                           encoding: .utf8) {
                    print(jsonString)
            }
            } else if let requestError = error {
                print("Error fetching interesting photos: \(requestError)")
            } else {
                print("Unexpected error with the request")
            }
        }
        task.resume()
    }

}
