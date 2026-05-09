# ArcCommander

ArcCommander is an enterprise-oriented RAID controller management and automation framework designed for storage validation, disk array monitoring, and firmware verification workflows.

The project focuses on automating repetitive RAID operations in server and data center environments using CLI-driven orchestration.

---

# Problem Statement

Managing enterprise RAID controllers manually introduces several challenges:

- repetitive validation procedures
- inconsistent configuration handling
- difficult large-scale deployment
- limited automation for recovery workflows
- insufficient logging and traceability

ArcCommander was developed to simplify and standardize RAID operations through automation and centralized workflow control.

---

# System Architecture

```text
Operator / Automation Framework
            ↓
      ArcCommander
            ↓
      arcconf.exe CLI
            ↓
 RAID Controller Firmware
            ↓
 Physical Disk Arrays
```

---

# Core Capabilities

## RAID Automation

- automated RAID configuration
- RAID health verification
- rebuild monitoring
- degraded disk detection
- consistency validation

## Workflow Control

- suspend and resume execution
- task orchestration
- automated retry handling
- recovery-oriented execution flow

## Logging and Diagnostics

- centralized log management
- execution trace collection
- controller status monitoring
- persistent configuration handling

## Infrastructure Integration

- batch-script automation
- Windows server integration
- firmware validation support
- automation-friendly CLI design

---

# Design Decisions

| Design | Purpose |
|---|---|
| CLI-based architecture | suitable for headless environments |
| batch-script orchestration | lightweight deployment |
| registry-based configuration | persistent local configuration |
| modular execution flow | easier maintenance and extensibility |
| logging-first design | simplified debugging and validation |

---

# Technology Stack

- Windows Batch Script
- arcconf.exe
- Windows Registry
- RAID Controller CLI
- Storage Validation Workflow

---

# Installation

Run the installer:

```bash
ArcInstaller
```

Ensure the following dependencies are available:

- Windows OS
- arcconf.exe
- RAID controller driver and firmware

---

# Usage

Execute:

```bash
ArcCommander.bat
```

The framework will:

1. initialize RAID controller communication
2. validate disk array status
3. monitor rebuild operations
4. collect logs and execution status
5. maintain persistent workflow control

---

# Example Validation Workflow

```text
Create RAID
    ↓
Verify RAID State
    ↓
Inject Disk Failure
    ↓
Monitor Rebuild
    ↓
Validate Consistency
    ↓
Collect Logs
```

---

# Engineering Value

This project demonstrates:

- enterprise storage domain knowledge
- RAID controller interaction
- automation workflow design
- firmware validation support
- reliability-focused engineering
- infrastructure-oriented scripting

---

# Future Improvements

- Python migration for modularity
- REST API integration
- Jenkins CI integration
- dashboard visualization
- distributed validation support
- automated report generation

---

# Contact

- GitHub: https://github.com/everpalm
- LinkedIn: https://www.linkedin.com/in/jaroncheng/
