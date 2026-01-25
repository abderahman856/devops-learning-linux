Objective

Monitor system resources and manage background/foreground processes.


Exercises

1. Monitoring Resources

I used top to view real-time CPU and RAM usage. I also practiced using grep to find a specific process:

ps aux | grep bash


2. Background/Foreground Control

I practiced moving tasks between the background and foreground:

# Start a process in the background
sleep 100 &

# View background jobs
jobs

# Kill the process using its PID
kill <PID>


Discovery

I learned that adding & to the end of a command is essential for long-running tasks like database migrations or log tailing so that the terminal remains usable.
