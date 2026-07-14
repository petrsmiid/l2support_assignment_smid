# Carebot L2 Support Engineer Assignment

This repository contains the completed tasks for the Carebot L2 Support Engineer assignment.

## Repository Structure

* **`L2_assignment.pdf`** - The original assignment document detailing the tasks.
* **`answers.md`** - Written answers and explanations for **Task 1** and **Task 2**.
* **`setup.sh`** - The completed Bash script for **Task 3**. This script prepares the environment and runs the whole solution.
First, it checks if Ansible is installed. If not, it installs it.
Then it installs the required Ansible collection for Docker (`community.docker`).
Finally, it runs the Ansible playbook.
* **`playbook.yml`** - Ansible playbook used in **Task 3**. This playbook is responsible for deploying the Orthanc server.
First, it installs Docker and starts the Docker service.
Then it creates a folder for storing data.
After that, it runs the Orthanc server inside a Docker container and sets the required ports and basic configuration.
* **`README.md`** - Overview of the repository and file structure (this file).

## Usage / Task 3

To execute the Bash script provided for Task 3, ensure it has the correct executable permissions and run it from Debian/Ubuntu:

```bash
chmod +x setup.sh
./setup.sh
```
