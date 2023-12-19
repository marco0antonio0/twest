const express = require("express");
const app = express();
const port = process.env.PORT || 3000;

// Rota de exemplo
app.get("/", (req, res) => {
  res.json({ message: "Hello, this is your Express API!aa" });
});

// Iniciar o servidor
app.listen(port, () => {
  console.log(`Server is running on port ${port}`);
});
