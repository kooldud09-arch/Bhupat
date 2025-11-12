# school_rjn - Demo (Render-ready)

This is a Render-ready demo package for **school_rjn** (blue-white branding). It uses a mock WhatsApp service for demo purposes (no real messages sent).

## What is included
- `backend/` - Node.js + TypeScript + Express + Prisma (mock WhatsApp service)
- `frontend/` - React + Vite + Tailwind (blue-white theme, demo pages)
- `docker-compose.yml` - for local testing (optional)
- `README_RENDER.md` - Render deployment + custom domain steps
- Seeded demo credentials and sample data

## Demo credentials (seeded)
- Admin: `admin@schoolrjn.in` / `password123`
- Teacher: `teacher@schoolrjn.in` / `password123`
- Parent: `parent@schoolrjn.in` / `password123`
- Student: `student@schoolrjn.in` / `password123`

## Quick local run (optional)
1. Copy repo locally.
2. Create backend `.env` based on `.env.example`.
3. Run (local DB) with Docker Compose:
   ```bash
   docker-compose up --build
   ```
4. Frontend dev:
   ```bash
   cd frontend
   npm install
   npm run dev
   ```
