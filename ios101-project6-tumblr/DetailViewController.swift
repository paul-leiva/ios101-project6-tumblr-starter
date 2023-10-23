//
//  DetailViewController.swift
//  ios101-project6-tumblr
//
//  Created by Paul Leiva on 10/22/23.
//

import UIKit
import Nuke

class DetailViewController: UIViewController {

    @IBOutlet weak var postDetailImageView: UIImageView!
    @IBOutlet weak var postDetailTextView: UITextView!
    
    var post: Post!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        /// Set the post photo for the DetailViewController
        if let postDetailPhotoURL = post.photos.first {
            let photoURL = postDetailPhotoURL.originalSize.url
            
            /// Load the photo into the ImageView with Nuke library
            Nuke.loadImage(with: photoURL, into: postDetailImageView)
        }
        
        /// Set the long caption for the DetailViewController
        postDetailTextView.text = post.caption.trimHTMLTags()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
