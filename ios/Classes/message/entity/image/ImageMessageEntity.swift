//  Created by 蒋具宏 on 2020/3/15.
//  图片消息实体
public class ImageMessageEntity: AbstractMessageEntity {

    /// 路径
    var path: String?;

    /// 图片数据
    var imageData: [ImageEntity]?;

    override init() {
        super.init(MessageNodeType.Image);
    }
}
