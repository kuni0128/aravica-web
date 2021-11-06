now = Time.current
Region.upsert_all([
  { id: 1, name: '南米', created_at: now, updated_at: now },
  { id: 2, name: '中米', created_at: now, updated_at: now },
  { id: 3, name: 'アフリカ', created_at: now, updated_at: now },
  { id: 4, name: 'カリブ海', created_at: now, updated_at: now },
  { id: 5, name: 'アジア', created_at: now, updated_at: now },
])
