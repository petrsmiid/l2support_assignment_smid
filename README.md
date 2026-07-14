# Carebot L2 Support Engineer Assignment README.md

This repository contains the completed tasks for the Carebot L2 Support Engineer assignment.

## Repository Structure

* **`L2_assignment.pdf`** - The original assignment document detailing the tasks.
* **`answers.md`** - Written answers and explanations for **Task 1** and **Task 2**.
* **`setup.sh`** - Bash entrypoint for **Task 3**. It installs Ansible on Debian/Ubuntu if needed, installs the required Ansible collection, and runs the playbook.
* **`playbook.yml`** - Ansible playbook for **Task 3**. It installs Docker, starts the Docker service, creates persistent Orthanc storage, runs the Orthanc container, and verifies the HTTP API.
* **`README.md`** - Overview of the repository and usage instructions.
* **`LLM_audit.pdf`** - Documentation and audit log of LLM usage during the completion of this assignment.

## Usage / Task 3

Task 3 is intended for Debian/Ubuntu Linux:

```bash
chmod +x setup.sh
./setup.sh
```

After the playbook finishes, Orthanc is available at:

```text
http://localhost:8042
```

Default credentials:

```text
orthanc / orthanc
```
