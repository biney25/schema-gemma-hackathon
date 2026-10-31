# Gemma 4 setup and privacy

Set `AI_PROVIDER=gemma`, `GEMINI_API_KEY`, `AI_ALLOWED_EMAILS`, and `AI_ENABLED=true` on the separate deployment. Never commit credentials.

Only text from individually permitted pages is sent, after account consent. Photos and recordings are not sent. Google says free-tier content may be used to improve products. No paid fallback is configured.

See [Gemma API documentation](https://ai.google.dev/gemma/docs/core/gemma_on_gemini_api) and [pricing](https://ai.google.dev/gemini-api/docs/pricing). Test with synthetic data before use.
