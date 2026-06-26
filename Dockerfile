# clean base image containing only comfyui, comfy-cli and comfyui-manager
FROM runpod/worker-comfyui:5.8.4-base

# copy all input data (like images or videos) into comfyui (uncomment and adjust if needed)
# COPY input/ /comfyui/input/

# user-provided inputs override the auto-generated placeholders above.
RUN wget --progress=dot:giga -O '/comfyui/input/man_with_dog.png' "https://cool-anteater-319.convex.cloud/api/storage/b2cbdb8f-45f7-4793-8780-d3b8d9aaa4ae"
