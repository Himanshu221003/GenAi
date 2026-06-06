require("dotenv").config()
const app = require("../src/app")
const connectToDB = require("../src/config/database")

// Initialize DB connection (cached for serverless execution)
connectToDB()

// Export Express app to be handled by Vercel serverless function
module.exports = app
