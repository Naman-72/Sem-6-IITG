const express = require('express')
const app = express()

app.get('/users',(req,res)=>{
    res.json(users)
})

app.post('/users',(req,res)=>{
    req.body.name
})

app.listen(3000)
