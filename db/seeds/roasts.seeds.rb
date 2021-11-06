now = Time.current
Roast.upsert_all([
  { id: 1, name: 'ライトロースト', depth: 1, created_at: now, updated_at: now },
  { id: 2, name: 'シナモンロースト', depth: 1, created_at: now, updated_at: now },
  { id: 3, name: 'ミディアムロースト', depth: 2, created_at: now, updated_at: now },
  { id: 4, name: 'ハイロースト', depth: 2, created_at: now, updated_at: now },
  { id: 5, name: 'シティロースト', depth: 3, created_at: now, updated_at: now },
  { id: 6, name: 'フルシティロースト', depth: 3, created_at: now, updated_at: now },
  { id: 7, name: 'フレンチロースト', depth: 3, created_at: now, updated_at: now },
  { id: 8, name: 'イタリアンロースト', depth: 3, created_at: now, updated_at: now },
])
