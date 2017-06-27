CREATE OR REPLACE FUNCTION update_datetime()	
RETURNS TRIGGER AS $$
BEGIN
    NEW.last_update = now();
    RETURN NEW;	
END;
$$ language 'plpgsql';