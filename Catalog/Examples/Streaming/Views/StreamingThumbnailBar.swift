//
//  Copyright © 2021 PSPDFKit GmbH. All rights reserved.
//
//  The PSPDFKit Sample applications are licensed with a modified BSD license.
//  Please see License for details. This notice may not be removed from this file.
//

import Foundation

/// Subclass that uses a custom image loader for the thumbnail bar.
final class StreamingThumbnailBar: ThumbnailBar {
    override func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        super.collectionView(collectionView, willDisplay: cell, forItemAt: indexPath)

        StreamingImageLoader.configure(cell: cell as? PDFPageCell,
                                       documentFetcher: { [weak self] in
            self?.thumbnailBarDataSource?.document
        })
    }
}
