# 🚀 DevOps Case Study: Podman Container Platform

![Podman](https://img.shields.io/badge/Podman-5.6.1-892CA0?style=flat-square&logo=podman&logoColor=white)
![Python](https://img.shields.io/badge/Python-3.9-3776AB?style=flat-square&logo=python&logoColor=white)
![CI/CD](https://img.shields.io/badge/CI/CD-GitHub_Actions-2088FF?style=flat-square&logo=github-actions&logoColor=white)
![Security](https://img.shields.io/badge/Security-Rootless-28A745?style=flat-square&logo=security&logoColor=white)

A **complete DevOps implementation** showcasing modern containerization with **Podman**, automated CI/CD pipelines, and rootless security. Perfect for learning container orchestration and production deployment strategies.

## 🎯 What This Project Does

- **🐳 Containerizes** a Python application using Podman (Docker alternative)
- **🧪 Automates testing** with unit tests and CI/CD pipelines
- **🔒 Implements security** through rootless, daemonless containers
- **🚀 Deploys applications** with automated scripts and orchestration
- **📊 Demonstrates** enterprise-grade DevOps practices

## ⚡ Quick Start (3 Minutes)

```powershell
# Clone and run the complete demo
git clone https://github.com/your-username/devops-podman-case-study
cd "Devops IA1"
.\complete-demo.ps1
```

**Result**: Full DevOps workflow from code → test → container → deployment

## 🏗️ Project Structure

```
📦 Core Files
├── 🐍 app.py                    # Python microservice
├── 🧪 test_app.py              # Unit tests  
├── 🐳 Dockerfile               # Container configuration
├── 💻 complete-demo.ps1        # Demo automation script
├── 🎼 podman-compose.yml       # Multi-container orchestration
└── 🔄 .github/workflows/       # CI/CD pipeline
```

## 🔧 Technologies Used

| Component | Technology | Purpose |
|-----------|------------|---------|
| **Container Runtime** | Podman 5.6.1 | Rootless container execution |
| **Application** | Python 3.9 | Microservice development |
| **Testing** | unittest | Automated quality assurance |
| **CI/CD** | GitHub Actions | Automated deployment pipeline |
| **Orchestration** | podman-compose | Multi-service management |
| **Web Server** | nginx | Production web serving |

## 🎬 Demo Flow

1. **Environment Setup** - Verify Podman installation
2. **Application Testing** - Run unit tests (2/2 pass)
3. **Container Build** - Create optimized image
4. **Service Deployment** - Launch multi-container stack
5. **Live Verification** - Access running services at http://localhost:8080

## 🔒 Security Features

- ✅ **Rootless containers** - No privileged access required
- ✅ **Daemonless architecture** - Eliminates daemon vulnerabilities  
- ✅ **Process isolation** - Enhanced security boundaries
- ✅ **User namespaces** - Better container isolation

## 📊 Why Podman vs Docker?

| Feature | Docker | Podman | Winner |
|---------|--------|---------|---------|
| **Security** | Daemon-based | Rootless | 🏆 Podman |
| **Performance** | Higher overhead | Lower resource usage | 🏆 Podman |
| **Compatibility** | Native | Docker-compatible | 🤝 Both |

## 🚀 Key Commands

```powershell
# Core demonstration commands
$PODMAN = "C:\Program Files\RedHat\Podman\podman.exe"

& $PODMAN --version              # Check installation
py test_app.py                   # Run tests
& $PODMAN build -t myapp .       # Build container
& $PODMAN run --rm myapp         # Run application
& $PODMAN images                 # View built images
```

## 🎓 Learning Outcomes

After running this project, you'll understand:
- **Container fundamentals** with hands-on Podman experience
- **CI/CD pipeline** implementation with GitHub Actions
- **Security best practices** for containerized applications
- **Production deployment** strategies and automation
- **DevOps workflow** from development to deployment

## 🚀 Deployment Workflow

This repository uses a modern CI/CD pipeline with automated staging and manual production deployment:

### Staging Deployment (Automatic)
- **Trigger**: Pull requests to `main` branch
- **Purpose**: Test code changes before merging
- **Environment**: `http://staging.example.com:8081`
- **Status**: ✅ Automated on PR creation

### Production Deployment (Manual)
- **Trigger**: Push to `main` branch (requires manual approval)
- **Purpose**: Deploy stable code to production
- **Environment**: `http://production.example.com:8080`
- **Status**: 🔐 Manual approval required

### Workflow Steps
1. **Create feature branch** → Work on changes
2. **Open pull request** → Staging deployment triggered automatically
3. **Review & test** → Verify changes in staging environment
4. **Merge to main** → Production deployment available (manual approval)

## 🐛 Troubleshooting

**Podman not found?**
```powershell
# Install Podman Desktop from: https://podman.io/getting-started/installation
```

**Tests failing?**
```powershell
# Ensure you're in the project directory
cd "C:\Users\Admin\Desktop\Devops IA1"
py test_app.py -v
```

**Port 8080 in use?**
```powershell
# Check what's using the port
netstat -ano | findstr :8080
```

## 📄 License

MIT License - Feel free to use this for learning and educational purposes.

---

**⭐ Star this repo if it helped you learn DevOps with Podman!**

Perfect for **students**, **developers**, and **DevOps beginners** wanting to understand modern containerization practices.