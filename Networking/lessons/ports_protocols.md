1. Ports (The "Door" Numbers)
   
Imagine a massive office building (Your Server). Inside this building, different departments do different things.

  Port 80: The Receptionist (Web traffic).
  
  Port 22: The Security Entrance (SSH/Admin access).
  
  Port 3306: The Archive Room (Database).


2. Protocols (The "Language" of the Letter)
   
A Protocol is just a set of rules for how to talk.

  HTTP: Rules for websites.
  
  SSH: Rules for secure remote control.
  
  FTP: Rules for sending files.

3. TCP vs. UDP (The "Delivery" Style)
   
These are the two main ways we transport data at Layer 4 (Transport Layer).

TCP (Transmission Control Protocol) — "The Registered Letter"

How it works: It’s a three-way handshake.

  Client: "Hello, can we talk?"
  
  Server: "Yes, I'm ready."
  
  Client: "Great, here comes the data."

The Catch: It checks if every piece arrived. If a piece is missing, it sends it again.

Best for: Things that must be perfect. Emails, Webpages (HTTP), File transfers, SSH.

4. UDP (User Datagram Protocol) — "The Postcard"

How it works: You just throw the data at the receiver and hope for the best. There is no handshake and no checking.

The Catch: It’s super fast, but some data might get lost (dropped packets).

Best for: Things where speed is more important than perfection. Live Video (Zoom), Online Games, DNS queries.
