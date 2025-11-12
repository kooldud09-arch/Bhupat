# Deploying school_rjn demo to Render

Recommended: host the demo on Render (free tier) for quick demo sharing.

## Steps (Render.com)
1. Sign in to Render using GitHub/GitLab.
2. Create a new **Web Service** -> connect to the repo (or upload this project as a Git repo).
3. For **Backend**:
   - Build command: `npm ci && npm run build`
   - Start command: `npm run start`
   - Environment: set `DATABASE_URL` to a managed Postgres (Render offers managed DB) or use a Render Postgres service.
   - Set `WHATSAPP_PROVIDER=mock`
4. For **Frontend** (optional, can be served by Render or as static site):
   - Build command: `npm ci && npm run build`
   - Start command: `npm run preview` (or serve statically)
5. After deploy, get the Render subdomain (e.g., `schoolrjn.onrender.com`) and share with schools.

## Custom domain (schoolrjn.in)
1. In Render dashboard, add custom domain `schoolrjn.in` to the service.
2. In GoDaddy DNS, add an A record pointing to Render IP or CNAME as instructed by Render.
3. Render provides automatic TLS (Let's Encrypt).

## Notes
- This demo uses a **mock WhatsApp**; no real messages are sent. For production, switch to `meta` or `twilio` and provide credentials in environment variables.
