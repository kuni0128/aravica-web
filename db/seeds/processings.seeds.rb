now = Time.current
Processing.upsert_all([
  { id: 1, name: 'ウォッシュド', created_at: now, updated_at: now },
  { id: 2, name: 'ナチュラル', created_at: now, updated_at: now },
  { id: 3, name: 'パルプドナチュラル', created_at: now, updated_at: now },
  { id: 4, name: 'アナエロビック', created_at: now, updated_at: now },
  { id: 5, name: 'スマトラ式', created_at: now, updated_at: now },
])
