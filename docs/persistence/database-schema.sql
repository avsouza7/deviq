-- DevIQ Database Schema (SQLite)

CREATE TABLE executions (
  id TEXT PRIMARY KEY,
  project_name TEXT NOT NULL,
  profile TEXT,
  status TEXT NOT NULL,
  started_at TEXT NOT NULL,
  finished_at TEXT,
  deviq_version TEXT NOT NULL
);

CREATE TABLE sessions (
  id TEXT PRIMARY KEY,
  execution_id TEXT NOT NULL REFERENCES executions(id),
  started_at TEXT,
  finished_at TEXT
);

CREATE TABLE evidences (
  id TEXT PRIMARY KEY,
  session_id TEXT NOT NULL REFERENCES sessions(id),
  type TEXT NOT NULL,
  source TEXT NOT NULL,
  uri TEXT,
  collected_at TEXT NOT NULL
);

CREATE TABLE insights (
  id TEXT PRIMARY KEY,
  execution_id TEXT NOT NULL REFERENCES executions(id),
  title TEXT NOT NULL,
  priority TEXT,
  confidence REAL
);

CREATE TABLE recommendations (
  id TEXT PRIMARY KEY,
  execution_id TEXT NOT NULL REFERENCES executions(id),
  insight_id TEXT REFERENCES insights(id),
  priority TEXT,
  description TEXT NOT NULL
);

CREATE INDEX idx_execution_project ON executions(project_name);
CREATE INDEX idx_evidence_session ON evidences(session_id);
CREATE INDEX idx_recommendation_execution ON recommendations(execution_id);
