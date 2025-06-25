# Getting Started

Welcome to the **Partner Technical Masterclass**! 🎉

This guide will help you get started with building your AI use cases using PhariaAI. Before diving into the hands-on development, please ensure you've completed the prerequisites below. The rest of this document contains essential service URLs and environment variables you'll need throughout the workshop as you build and deploy your solution.

## Prerequisites

- ✅ Completed **PhariaAcademy Learning** course.  
- ✅ Understand the core components of PhariaAI (PhariaStudio, PhariaKernel, PhariaAssistant).  
- ✅ Finish the PhariaAI account setup and login to [PhariaStudio](https://pharia-studio.partner.stage.product.pharia.com/).

_____

## Useful URLs
These are some useful links that would come in handy as you go through this workshop.
| Service | URL |
|---------|-----|
| Aleph Alpha Docs | https://docs.aleph-alpha.com/ |
| PhariaAI Domain | `*.partner.stage.product.pharia.com/`
| PhariaStudio | https://pharia-studio.partner.stage.product.pharia.com/ |
| PhariaOS | https://pharia-os.partner.stage.product.pharia.com/ |
| PhariaOS Manager | https://pharia-os-manager.partner.stage.product.pharia.com/ |
| PhariaAssistant | https://pharia-assistant.partner.stage.product.pharia.com/ |
| Pharia Kernel Address | https://pharia-kernel.partner.stage.product.pharia.com/ |
| PhariaInference API | https://inference-api.partner.stage.product.pharia.com/ |
| DocumentIndex Base URL | https://document-index.customer.pharia.com |
| API Gateway to All Services | https://api.partner.stage.product.pharia.com/ |


## Useful Environment Variables
These are some useful variables that will be needed for developing solutions with the current PhariaAI instance.
| Purpose | Value |
|---------|-----|
| OCI Registry | `registry.gitlab.aleph-alpha.de` |
| Skill Repository | `innovation/pharia-kernel-playground/skills` |
| Image Repository | `innovation/pharia-application-registry` |
| Pharia Kernel Playground | `customer-playground` |
| OCI Registry Token | Shared via email |
| PhariaAI Token | Obtain from [PhariaStudio](https://pharia-studio.partner.stage.product.pharia.com/) |

### Useful commands
- Setting env vars on windows with PowerShell from `.env` file
```
Get-Content ".env" | ForEach-Object {
    if ($_ -match '^\s*([^#][^=]+?)\s*=\s*(.*)\s*$') {
        $key = $matches[1].Trim()
        $value = $matches[2].Trim('"')  # Optional: remove quotes
        [System.Environment]::SetEnvironmentVariable($key, $value, "Process")
    }
}
```