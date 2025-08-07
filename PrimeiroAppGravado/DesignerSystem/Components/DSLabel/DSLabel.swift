



import UIKit

struct LabelDTO {
    let text: String
    let textColor: UIColor
    let font: UIFont
    let numberOflines: Int
    let textAlignmnet: NSTextAlignment
    
    init(text: String, textColor: UIColor = DSColors.textColorTitle, font: UIFont = DSFonts.titleSemiBold16, numberOflines: Int = 0, textAlignmnet: NSTextAlignment = .left) {
        self.text = text
        self.textColor = textColor
        self.font = font
        self.numberOflines = numberOflines
        self.textAlignmnet = textAlignmnet
    }
}


protocol Labeling: UIView {
    func setDTO(_ dto: LabelDTO)
    var text: String? {get set}
}


class DSLabel: UILabel {
    
    func configure(_ dto: LabelDTO){
        self.text = dto.text
        self.textColor = dto.textColor
        self.font = dto.font
        self.numberOfLines = dto.numberOflines
        self.textAlignment = dto.textAlignmnet
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}

final class DSLabelAdapter: DSLabel, Labeling {
    func setDTO(_ dto: LabelDTO) {
        configure(dto)
    }
    
    
}
