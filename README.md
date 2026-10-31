# Schema: the story behind your photos

Schema is a private scrapbook for keeping photos and personal notes together in a life archive. This edition adapts the existing Schema project for Hacktoberfest Hack Day Delhi and adds a Gemma 4 memory assistant.

## How Gemma helps

Users can ask about their memories or reflect on permitted pages. After account-level consent and permission for each page, Schema selects relevant journal text and sends it with the question to `gemma-4-26b-a4b-it` through the Gemini API. Answers cite the selected pages. If no permitted memory matches, Schema says so instead of inventing an answer. Photos and recordings are not sent to the model. Google may use free-tier content to improve its products.

The hosted assistant is currently limited to approved demo accounts. Retrieval uses keyword matching, not semantic search. A real Gemma response was tested using a synthetic journal entry; the complete hosted account-to-answer flow has not yet been verified.

## Project

- Live prototype: https://schema-gemma-hackathon.vercel.app
- Source: https://github.com/biney25/schema-gemma-hackathon
- Stack: Next.js, React, TypeScript, Supabase Auth, Postgres, private storage, Vercel, and Gemma 4 via the Gemini API.
- Project history: Schema existed before this event and was previously developed for Kritical Hacks. This edition uses a separate source copy and deployment.

## Setup and validation

See [web app setup](docs/KRITICAL_SETUP.md), [Gemma setup and privacy](docs/FREE_AI.md), and `.env.example`. Use a separate Supabase project, apply the migrations and deploy the upload and worker functions before running the customer app.

```bash
pnpm install --frozen-lockfile
pnpm test
pnpm check
pnpm customer:build
pnpm customer:dev
```

The local suite passed 95 tests, the production build passed, and the new Supabase project was configured separately. Signed-in hosted media upload and the full hosted AI flow still need end-to-end verification. Billing is disabled.

This repository also contains an optional TinyFish event research implementation from the earlier edition. It is not configured for the current hosted demo.

## License

Schema's project code is available under the [MIT License](LICENSE). Bundled third-party components retain their own licenses, including those in `vendor/` and `build/`.
