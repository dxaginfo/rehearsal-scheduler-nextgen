CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255) UNIQUE NOT NULL,
  password_hash VARCHAR(255) NOT NULL,
  role VARCHAR(50),
  phone VARCHAR(20),
  preferences JSONB,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE events (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  description TEXT,
  datetime_start TIMESTAMP,
  datetime_end TIMESTAMP,
  location VARCHAR(255),
  agenda TEXT,
  created_by INTEGER REFERENCES users(id),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE event_attendance (
  id SERIAL PRIMARY KEY,
  event_id INTEGER REFERENCES events(id),
  user_id INTEGER REFERENCES users(id),
  status VARCHAR(20),
  response_time TIMESTAMP
);

CREATE TABLE notifications (
  id SERIAL PRIMARY KEY,
  user_id INTEGER REFERENCES users(id),
  event_id INTEGER REFERENCES events(id),
  type VARCHAR(20),
  content TEXT,
  sent_at TIMESTAMP
);

CREATE TABLE polls (
  id SERIAL PRIMARY KEY,
  event_id INTEGER REFERENCES events(id),
  created_by INTEGER REFERENCES users(id),
  options JSONB,
  result JSONB
);
