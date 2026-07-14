# Carebot Assignment - Written Answers - answers.md

---
## Task 1: Incident Triage

### 1. Hospital A: Doctors report that no AI predictions have been returning for the last hour. Patients are waiting.
* **Severity:** Critical
* **Reasoning:** Both impact and urgency are very high. The main system is completely down and doctors cannot treat waiting patients. This is blocking the hospital's daily work and must be fixed immediately.

### 2. Internal Team: The Carebot analytics dashboard (used by our sales team) is loading very slowly.
* **Severity:** Low
* **Reasoning:** The impact and urgency are low. This is only an internal tool for our sales team, and it is just slow, not completely broken. It does not affect patients or hospital work, so we can look at it later during normal working hours.

### 3. Hospital B: We are receiving a recurring error for one specific, rare type of X-ray format. All other standard X-rays are processing correctly.
* **Severity:** Medium
* **Reasoning:** The impact is low and urgency is medium. The main system works fine for most X-rays and only one rare format has a problem. The hospital can still work normally. We need to fix it, but it is not a critical emergency.

### 4. Hospital C: Our monitoring shows the on-premise Gateway is offline. This hospital is currently closed and goes live with our system tomorrow morning.
* **Severity:** High
* **Reasoning:** The impact is high because the gateway is completely offline. However, the urgency is a bit lower because the hospital is closed until tomorrow morning. We have some time to fix it during the night, but it must be done before they open, otherwise it will become a Critical issue.

---
## Task 2: Communication

### 1. Based on the monitoring and logs, where is the most likely point of failure? Explain your logical deduction.
Based on the provided logs and monitoring, the failure is on the hospital's side, likely inside their Autorouter system. Our Gateway is online, healthy, and has low CPU/RAM usage. The logs show that our system is successfully connecting to their Autorouter API (Heartbeat checks return "Status 200 OK"). However, we have not received any new scans since 14:12. This logically means that our system is working, but the hospital system is failing to send the images to us.

### 2. Since we do not have direct access to the hospital's internal systems, what specific information or action do you need to request to move this investigation forward?
We need to ask the hospital IT to check their internal systems. Specifically, we need them to check the Autorouter queue to see if the 20 scans are stuck there. We also need them to check their local system logs for any error messages that happened when their Autorouter tried to push data to our Gateway.

### 3. Write an email reply to the L1 partner.
**Subject:** RE: URGENT: Hospital XYZ - Doctors not receiving AI results

Hi L1 Team,

Thank you for reporting this issue. I have investigated our systems and I can confirm that our Carebot Gateway is online, healthy, and working correctly.

According to our logs, the network connection to the hospital Autorouter is active (returning API "Status 200 OK"). However, our Gateway has not received any new X-ray scans since 14:12. This means the 20 scans are likely stuck somewhere on the hospital queue before they could be sent to us. 

Since we do not have access to hospital internal systems, could you please contact the hospital IT department and ask them to:
1. Check Autorouter queue to see if the scans are stuck there.
2. Check internal logs for any specific errors when their system tried to send the data to our Gateway.

Please let us know what has been found, and we will gladly help with further investigation!

Best regards,
L2 Support Team
