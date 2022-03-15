// TODO: replace to open api client code

const RoastedBeanKind = {
  SINGLE_ORIGIN: "single_origin",
  BLEND: "blend",
} as const
export type RoastedBeanKind =
  typeof RoastedBeanKind[keyof typeof RoastedBeanKind]

export type RoastedBean = {
  id: number
  name: string
  kind: RoastedBeanKind
  roastedOn: Date
}
