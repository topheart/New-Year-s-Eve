-- Add marquee_enabled column to wall_review_settings
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'wall_review_settings' AND column_name = 'marquee_enabled') THEN
        ALTER TABLE public.wall_review_settings ADD COLUMN marquee_enabled boolean NOT NULL DEFAULT true;
    END IF;
END $$;
