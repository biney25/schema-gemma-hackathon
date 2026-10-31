# Schema: The Story Behind Your Photos

## The problem
A photo captures a scene, but the details that made it meaningful can get scattered across notes, chats and memory. People need a private place to keep their own story beside the photo.

## The solution
Schema is a private scrapbook for photos and personal notes, organized into a life archive. A Gemma 4 memory assistant helps users revisit permitted journal pages by answering questions with references to the relevant entries.

## How Gemma 4 works
After account-level AI consent and permission for individual pages, Schema retrieves matching journal text and sends it with the user's question to Gemma 4 26B A4B through the Gemini API. The assistant cites the selected pages and says when no permitted memory matches. Retrieval currently uses keyword matching. Photos and recordings are not sent to Gemma. Google may use free-tier content to improve its products. AI in the hosted demo is limited to approved accounts.

## Technology
Next.js, React and TypeScript power the interface. Supabase provides authentication, PostgreSQL and private storage. Vercel hosts the app. Gemma 4 provides the memory assistant via the Gemini API.

## Current status
The live deployment is ready and account confirmation has been tested. The local suite passed 95 tests and the production build passed. A live Gemma call through the app's adapter produced a cited answer using a synthetic journal entry. Signed-in hosted AI and media-upload workflows still need end-to-end testing. Billing is disabled.

## Links
- Live app: https://schema-gemma-hackathon.vercel.app
- Source code: https://github.com/biney25/schema-gemma-hackathon
- AI setup and privacy: https://github.com/biney25/schema-gemma-hackathon/blob/main/docs/FREE_AI.md
- Application setup: https://github.com/biney25/schema-gemma-hackathon/blob/main/docs/KRITICAL_SETUP.md
