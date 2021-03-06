after :regions do
  now = Time.current
  OriginCountry.upsert_all([
    { id: 1, name: 'エチオピア', region_id: 1, created_at: now, updated_at: now },
    { id: 2, name: 'ケニア', region_id: 1, created_at: now, updated_at: now },
    { id: 3, name: 'タンザニア', region_id: 1, created_at: now, updated_at: now },
    { id: 4, name: 'ルワンダ', region_id: 1, created_at: now, updated_at: now },
    { id: 5, name: 'ブルンジ', region_id: 1, created_at: now, updated_at: now },
    { id: 6, name: 'イエメン', region_id: 2, created_at: now, updated_at: now },
    { id: 7, name: 'ブラジル', region_id: 3, created_at: now, updated_at: now },
    { id: 8, name: 'コロンビア', region_id: 3, created_at: now, updated_at: now },
    { id: 9, name: 'エクアドル', region_id: 3, created_at: now, updated_at: now },
    { id: 10, name: 'ペルー', region_id: 3, created_at: now, updated_at: now },
    { id: 11, name: 'ボリビア', region_id: 3, created_at: now, updated_at: now },
    { id: 12, name: 'メキシコ', region_id: 4, created_at: now, updated_at: now },
    { id: 13, name: 'グアテマラ', region_id: 4, created_at: now, updated_at: now },
    { id: 14, name: 'コスタリカ', region_id: 4, created_at: now, updated_at: now },
    { id: 15, name: 'エルサルバドル', region_id: 4, created_at: now, updated_at: now },
    { id: 16, name: 'ニカラグア', region_id: 4, created_at: now, updated_at: now },
    { id: 17, name: 'ホンジュラス', region_id: 4, created_at: now, updated_at: now },
    { id: 18, name: 'パナマ', region_id: 4, created_at: now, updated_at: now },
    { id: 19, name: 'ジャマイカ', region_id: 5, created_at: now, updated_at: now },
    { id: 20, name: 'ハイチ', region_id: 5, created_at: now, updated_at: now },
    { id: 21, name: 'ドミニカ', region_id: 5, created_at: now, updated_at: now },
    { id: 22, name: 'インド', region_id: 6, created_at: now, updated_at: now },
    { id: 23, name: 'インドネシア', region_id: 6, created_at: now, updated_at: now },
    { id: 24, name: 'パプアニューギニア', region_id: 6, created_at: now, updated_at: now },
    { id: 25, name: '中国', region_id: 6, created_at: now, updated_at: now },
  ])
end
