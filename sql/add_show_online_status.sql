-- Add show_online_status column to wall_review_settings
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'wall_review_settings' AND column_name = 'show_online_status') THEN
        ALTER TABLE public.wall_review_settings ADD COLUMN show_online_status boolean NOT NULL DEFAULT true;
    END IF;
END $$;
