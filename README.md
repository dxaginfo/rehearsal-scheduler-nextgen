# Rehearsal Scheduler App

Automatically schedules band rehearsals, sends reminders, tracks attendance, and suggests optimal rehearsal times. Mobile-responsive, with calendar integration, notifications, and secure user roles.

## Features
- User authentication
- Rehearsal/event creation & management
- RSVP, attendance & reminders
- Calendar integration (Google/Outlook)
- Admin dashboard, analytics
- Secure, mobile-ready design

## Stack
- React.js, Node.js/Express, PostgreSQL
- JWT auth, SendGrid/Twilio notifications

## Setup Instructions
1. Clone the repo: `git clone https://github.com/dxaginfo/rehearsal-scheduler-nextgen.git`
2. Install dependencies for client and server
3. Set up PostgreSQL & .env files
4. Start dev servers for client and server
5. Deploy to Vercel/Heroku (or your preferred hosts)

## Deployment
- All CI/CD via GitHub Actions by default.
- Configure your API keys for calendar and notifications.

## Security
- All user data and notifications are secured/encrypted via JWT and HTTPS.

## More
Detailed project plan in Google Docs: https://docs.google.com/document/d/1k99XS-gG24VNQPRDoeIpw2dI893xEc3sIaaM6_5YxYY