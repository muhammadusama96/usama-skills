# Colibri — learned 2026-11-05 from JustVugg/colibri

Source: https://github.com/JustVugg/colibri (cloned to ~/workspace/colibri, 62 MB, README 893 lines, v2.1.0 in the README example). Via Beyond Tahir's Instagram post shared by the user, 2026-11-05.

## What it is — and what it is NOT
- Colibri is a **large language model inference engine**, written in pure C, one file per model family. It is NOT a voice-cloning tool, NOT text-to-speech, and does NOT clone a voice. It cannot help the voice-cloning task directly.
- Idea: a mixture-of-experts (MoE) model is huge on disk but only uses a small part per token. Colibri keeps the dense part in RAM and streams the routed experts from disk (NVMe) when the router asks for them, through a cache that learns which experts the user's work uses. Placement decides speed only, never the model's decisions or precision.
- No GPU required. GPU (CUDA/Vulkan/Metal) is a faster place to hold weights, not a requirement. For large models the disk sets the speed; for small ones the RAM does.

## Requirements
- Minimum 8 GB RAM (16 GB+ better), 22 GB free disk for the smallest model, internet for the model download. Downloads resume if stopped.
- One-step setup: Linux/macOS `./start-here.sh`, Windows `START-HERE.bat`. It checks the machine, recommends a model that fits, builds/downloads the engine, downloads the model, then opens a dashboard at http://127.0.0.1:8000/ with OpenAI-compatible (`/v1`) and Anthropic-compatible APIs.
- AI-assistant setup: `docs/AI_SETUP.md` in the repo; MCP server via `coli mcp`.
- Commands: `./coli chat`, `./coli web`, `./coli serve`, `./coli plan`, `./coli doctor`, `./coli tune`, `./coli import <file.gguf>`.

## Models (from the README tables)
- Small, run from RAM: Qwen3.6-35B-A3B (`qwen36-35b`, 23 GB download, 10/20 GB RAM, ~6 tok/s CPU), Qwen3-Coder-30B-A3B (`qwen3-coder-30b`, 19 GB, 8/18 GB RAM), OLMoE 7B (14 GB, 8 GB RAM, ~22 tok/s CPU, good to learn on), Qwen-Image-2.1 (33 GB, image generation, non-commercial licence).
- Large, experts stream from disk: DeepSeek V4 Flash 284B (167 GB, 16/32 GB RAM, ~1 tok/s CPU), GLM-5.2 744B (429 GB, 16/24 GB RAM, 0.05–0.1 tok/s cold on a 25 GB laptop — very slow without a big machine), Kimi K3 2.8T (1.56 TB, ~9 s per token on CPU). These are NOT practical on a normal laptop for everyday chat.
- Also reads GGUF files as they are, including Mistral-Large-4, Muse Spark Open, Flint, LFM3-VL.
- Decision models (System One, not chat): Laya, GLiNER2.5-Decide, Clef.

## System One — relevant to Jev
- `POST /v1/systemone` answers closed questions (choice / yes-no / score) with probabilities and confidence, without generating text. It is API-compatible with TypeSafe Jev: a Jev client can switch by changing its base URL to http://127.0.0.1:8000. So Colibri can locally replace the Jev API key route — no key, no cloud — once a model is running.

## Honest limits for the user / this VM
- This Muse VM has 7.7 GB RAM and 4 CPUs, no GPU — below Colibri's 8 GB minimum, so even the smallest model (OLMoE / Qwen3-Coder) would not run usefully here. Do NOT try to run Colibri in this VM as a voice-cloning fallback.
- On the user's Windows PC it could work IF the PC has 16 GB+ RAM and 25+ GB free disk, starting with Qwen3.6-35B or OLMoE. The 22B–35B claim in the post is real for those small models, but the 744B models are ~0.1 tok/s on a laptop — slow to the point of unusable for chat.
- Licence: Colibri itself is free and open source; model weights carry their own licences — check each model's licence before commercial use.
