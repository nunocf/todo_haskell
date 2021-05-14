

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;


SET SESSION AUTHORIZATION DEFAULT;

ALTER TABLE public.todos DISABLE TRIGGER ALL;

INSERT INTO public.todos (id, title, due_at, is_completed, description, created_at) VALUES ('ba9d125d-4a1b-46fe-aa92-821e10be667e', 'Buy bananas 🍌', '2021-05-14 12:02:05.419125+02', false, 'Have at it you monkey', '2021-05-14 12:25:30.606319+02');
INSERT INTO public.todos (id, title, due_at, is_completed, description, created_at) VALUES ('941fc619-7830-4b67-9fa4-5400a09882fb', 'Go for a walk 🚶‍♂️', '2021-05-14 12:40:24.667415+02', false, '', '2021-05-14 12:40:24.667415+02');


ALTER TABLE public.todos ENABLE TRIGGER ALL;


