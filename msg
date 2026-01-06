<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Send Secret Message</title>
  <style>
    body {
      font-family: 'Segoe UI', sans-serif;
      background: linear-gradient(to right, #3094ff, #6709ff);
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
      margin: 0;
    }

    .container {
      background: #c5e4fdda;
      padding: 30px;
      border-radius: 15px;
      box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
      width: 90%;
      max-width: 400px;
      text-align: center;
    }

    h1 {
      color: #000000;
    }

    textarea {
      width: 100%;
      height: 100px;
      margin-top: 10px;
      padding: 10px;
      border-radius: 8px;
      border: 1px solid #d31212;
      resize: none;
    }

    button {
      margin-top: 15px;
      padding: 10px 20px;
      background-color: #e91e63;
      color: white;
      border: none;
      border-radius: 25px;
      cursor: pointer;
    }

    .note {
      margin-top: 20px;
      font-size: 14px;
      color: #311a1a;
    }
  </style>
</head>
<body>
  <div class="container">
    <h1> Send a message for me</h1>
    <h2> 🕸️🕸️🕸️</h2>
    <textarea id="userMessage" placeholder="Write your message..."></textarea>
    <button onclick="saveMessage()">Send</button>
    <p class="note">Your message is sent anonymously.</p>
  </div>

  <script>
    function saveMessage() {
      const msg = document.getElementById("userMessage").value.trim();
      if (msg === "") {
        alert("Message cannot be empty!");
        return;
      }

      let messages = JSON.parse(localStorage.getItem("secretMessages")) || [];
      messages.push({
        content: msg,
        time: new Date().toLocaleString()
      });

      localStorage.setItem("secretMessages", JSON.stringify(messages));
      document.getElementById("userMessage").value = "";
      alert("✅ Message sent!");
    }
  </script>
</body>
</html>
