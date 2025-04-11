use chrono::{DateTime, Utc};

pub struct History {
    id: i32,

    provider_id: i32,
    token_id: i32,

    operation_id: i32,
    apr: f64,

    created_at: DateTime<Utc>,
}
