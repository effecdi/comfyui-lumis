# Base: official RunPod worker-comfyui with Flux Dev fp8 (already cached on RunPod nodes)
FROM ghcr.io/runpod-workers/worker-comfyui:5.8.5-flux1-dev-fp8

# Add Korean webtoon LoRA (Lumis custom) — only 164MB new layer
RUN mkdir -p /comfyui/models/loras && \
    wget -q -O /comfyui/models/loras/manwha_style.safetensors \
    "https://huggingface.co/Knkchn/manhwa-flux-lora/resolve/main/manwha_style.safetensors"
