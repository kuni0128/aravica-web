now = Time.current
Variety.upsert_all([
  { id: 1, name: 'ティピカ', created_at: now, updated_at: now },
  { id: 2, name: 'ブルー・マウンテン', created_at: now, updated_at: now },
  { id: 3, name: 'コナ', created_at: now, updated_at: now },
  { id: 4, name: 'マラゴジッペ', created_at: now, updated_at: now },
  { id: 5, name: 'ブルボン', created_at: now, updated_at: now },
  { id: 6, name: 'ムンド・ノーボ', created_at: now, updated_at: now },
  { id: 7, name: 'カトゥーラ', created_at: now, updated_at: now },
  { id: 8, name: 'カトゥアイ', created_at: now, updated_at: now },
  { id: 9, name: 'SL28', created_at: now, updated_at: now },
  { id: 10, name: 'SL34', created_at: now, updated_at: now },
  { id: 11, name: 'パカマラ', created_at: now, updated_at: now },
  { id: 12, name: 'バリエダ・コロンビア', created_at: now, updated_at: now },
  { id: 13, name: 'スマトラ', created_at: now, updated_at: now },
  { id: 14, name: 'モカ', created_at: now, updated_at: now },
  { id: 15, name: 'ゲイシャ', created_at: now, updated_at: now },
  { id: 16, name: 'ジャパニカ', created_at: now, updated_at: now },
  { id: 99, name: 'その他', created_at: now, updated_at: now },
])
