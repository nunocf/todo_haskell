-- Your database schema. Use the Schema Designer at http://localhost:8001/ to add some tables.
CREATE TABLE todos (
    id UUID DEFAULT uuid_generate_v4() PRIMARY KEY NOT NULL,
    title TEXT NOT NULL,
    due_at TIMESTAMP WITH TIME ZONE DEFAULT NOW() NOT NULL,
    is_completed BOOLEAN DEFAULT false NOT NULL,
    description TEXT DEFAULT NULL,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW() NOT NULL
);
