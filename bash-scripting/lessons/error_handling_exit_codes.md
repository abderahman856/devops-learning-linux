Introduction to Error Handling (Simple)

Error handling means:

Detecting problems and stopping or reacting before things break badly

1. if Statement Recap for Error Handling

Linux commands return a status:

0 → success

non-zero → failure

<img width="658" height="244" alt="image" src="https://github.com/user-attachments/assets/3f854d83-e74f-48b2-a97c-919362a3e36a" />

2. Exit Codes (Very Important)
   
What is an exit code?

An exit code is:

A number that tells whether a command succeeded or failed

0 → success

1 (or higher) → error

<img width="689" height="283" alt="image" src="https://github.com/user-attachments/assets/9701905e-9bc6-4fac-a704-1fecf1cb11eb" />

Using exit manually;

<img width="664" height="234" alt="image" src="https://github.com/user-attachments/assets/8409040a-40bb-42ee-9305-eade58f903b2" />

3. set -e (Exit on Error)
   
Definition:

Exit the script immediately if any command fails

<img width="689" height="304" alt="image" src="https://github.com/user-attachments/assets/fa0b4d81-d7be-489f-8db8-806cea74750c" />

4. set -u (Unset Variables)
   
Definition:

Exit if you use a variable that was never defined

<img width="689" height="318" alt="image" src="https://github.com/user-attachments/assets/fbadbc13-c987-4791-a635-3c59e4328679" />

5. set -x (Debug Mode)
   
Definition:

Print every command before running it

<img width="685" height="370" alt="image" src="https://github.com/user-attachments/assets/0db877ba-e144-4914-9599-302dec775352" />

6. set -eux (Very Common in DevOps)
   
Definition:

Combine multiple protections

<img width="647" height="334" alt="image" src="https://github.com/user-attachments/assets/2447bd3e-47bb-4ff7-b05e-2d92796d8cfc" />


- More Useful set Commands
  
set -o pipefail

Definition:

Script fails if any command in a pipe fails

<img width="624" height="190" alt="image" src="https://github.com/user-attachments/assets/530cd98e-535d-4433-a2d2-0758218275db" />







