-- Add missing columns to wall_review_settings table
ALTER TABLE public.wall_review_settings
ADD COLUMN IF NOT EXISTS marquee_enabled boolean NOT NULL DEFAULT true,
ADD COLUMN IF NOT EXISTS show_online_status boolean NOT NULL DEFAULT true;
