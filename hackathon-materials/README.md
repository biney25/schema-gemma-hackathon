# Schema: Hacktoberfest Hack Day Delhi submission

Schema is a private scrapbook for the story behind a photograph. Photos preserve a scene; personal notes preserve who was there, what happened and why the day mattered. Schema brings those details together in a journal and a life archive.

## Gemma 4 edition

This edition adds a personal-memory assistant using Gemma 4 26B A4B through the Gemini API. With account consent and permission for individual pages, Schema retrieves matching journal text, sends it with a question, and returns a response with page references. If no permitted page matches, it says so. Photos and recordings are not sent to the AI service. The free-tier provider may use submitted text to improve its products.

The hosted demo currently limits AI access to approved accounts. Keyword matching selects candidate memories. A synthetic journal test returned a correctly cited answer using the live Gemma API; a full hosted account-to-answer and media-upload flow remains to be verified.

## Background and evidence

Schema began before this event. The team developed a separate Gemma integration, new repository and deployment for this edition. The earlier Kritical edition used TinyFish for public-event research. That workflow is included in the code, but is not configured in this hosted Gemma demo.

- Current live app: https://schema-gemma-hackathon.vercel.app
- Current source: https://github.com/biney25/schema-gemma-hackathon
- Earlier Kritical demo video: https://youtu.be/NKhx7bJQRio
- Earlier project field guide: https://schema-field-guide.gameazon340.chatgpt.site
- Earlier economics model (assumptions, not live billing): https://docs.google.com/spreadsheets/d/1PxYp6mDNpeTCxTnzUigj5cg8ibIK5ZQhE7zdPvr72Wg/edit?usp=sharing
- Earlier Kritical source: https://github.com/biney25/schema-kritical-hacks-2026
- Earlier Kritical pitch: [PDF](earlier-kritical-pitch.pdf). This is historical evidence and describes the prior edition, not the Gemma deployment.

## Stack and checks

Next.js, React, TypeScript, Supabase Auth, PostgreSQL, private media storage, Vercel, Gemma 4 and the Gemini API. The local suite passed 95 tests, the customer production build passed, and the new deployment and account confirmation were checked. Billing is disabled. The earlier ₹149 subscription and economics figures are proposals, not current product prices or measured outcomes.
