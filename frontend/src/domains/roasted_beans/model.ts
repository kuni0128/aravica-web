import { RoastedBean as Schema } from "./types"
import { RoastedBeanKind } from "./types"

export class RoastedBean implements Schema {
  constructor(
    public name: string,
    public kind: RoastedBeanKind,
    public roastedOn: Date
  ) {}
}

const rb = new RoastedBean("隠坊ブレンド", "blend", new Date())
