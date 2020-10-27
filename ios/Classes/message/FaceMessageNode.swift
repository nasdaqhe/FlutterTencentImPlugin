//
// Created by 蒋具宏 on 2020/10/27.
//

import Foundation
import ImSDK

/// 表情消息实体
class FaceMessageNode: AbstractMessageNode {
    override func getV2TIMMessage(params: [String: Any]) -> V2TIMMessage {
        let index: Int32 = getParam(params: params, paramKey: "index")!;
        let data: String = getParam(params: params, paramKey: "data")!;
        return V2TIMManager.sharedInstance().createFaceMessage(index, data: data.data(using: String.Encoding.utf8))
    }

    override func getNote(elem: V2TIMElem) -> String {
        "[表情]";
    }

    override func analysis(elem: V2TIMElem) -> AbstractMessageEntity {
        let v2Elem = elem as! V2TIMFaceElem;
        let entity = FaceMessageEntity();
        entity.index = v2Elem.index;
        entity.data = v2Elem.data;
        return entity;
    }
}
