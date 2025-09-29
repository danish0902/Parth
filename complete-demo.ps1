# complete-demo.ps1: Complete DevOps demonstration script

Write-Host "=== DevOps Case Study: Podman Demonstration ===" -ForegroundColor Green
Write-Host ""

$PODMAN = "C:\Program Files\RedHat\Podman\podman.exe"

# Step 1: Check Podman installation
Write-Host "Step 1: Podman Installation & Setup" -ForegroundColor Cyan
Write-Host "--------------------------------------" -ForegroundColor Gray
& $PODMAN --version
& $PODMAN machine list
Write-Host ""

# Step 2: Show running containers
Write-Host "Step 2: Container Management" -ForegroundColor Cyan
Write-Host "----------------------------" -ForegroundColor Gray
& $PODMAN ps
Write-Host ""

# Step 3: Test Python app
Write-Host "Step 3: Python Application Test" -ForegroundColor Cyan
Write-Host "-------------------------------" -ForegroundColor Gray
Write-Host "Running Python app directly:" -ForegroundColor Yellow
py app.py
Write-Host ""

# Step 4: Run unit tests
Write-Host "Step 4: Unit Testing" -ForegroundColor Cyan
Write-Host "-------------------" -ForegroundColor Gray
py test_app.py
Write-Host ""

# Step 5: Build and run container
Write-Host "Step 5: Container Build & Run" -ForegroundColor Cyan
Write-Host "-----------------------------" -ForegroundColor Gray
Write-Host "Building container image..." -ForegroundColor Yellow
& $PODMAN build -t myapp-demo .
Write-Host ""
Write-Host "Running containerized app:" -ForegroundColor Yellow
& $PODMAN run --rm myapp-demo
Write-Host ""

# Step 6: Show all images
Write-Host "Step 6: Image Management" -ForegroundColor Cyan
Write-Host "-----------------------" -ForegroundColor Gray
& $PODMAN images
Write-Host ""

# Step 7: Final status
Write-Host "Step 7: Final System Status" -ForegroundColor Cyan
Write-Host "---------------------------" -ForegroundColor Gray
& $PODMAN ps
Write-Host ""

Write-Host "=== DEMONSTRATION COMPLETE ===" -ForegroundColor Green
Write-Host "Key Points Demonstrated:" -ForegroundColor Yellow
Write-Host "- Podman installation and setup" -ForegroundColor White
Write-Host "- Container lifecycle management" -ForegroundColor White
Write-Host "- Python application development" -ForegroundColor White
Write-Host "- Unit testing and quality assurance" -ForegroundColor White
Write-Host "- Container building and execution" -ForegroundColor White
Write-Host "- Image management" -ForegroundColor White
Write-Host ""
Write-Host "Visit http://localhost:8080 to see nginx running!" -ForegroundColor Cyan