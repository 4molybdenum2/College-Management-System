const express = require('express');
const router = express.Router();
const db = require('../db/db');

router.get('/student',(req,res)=>{
    let sql = 'SELECT * FROM student';
    let query = db.query(sql,(err,result)=>{
        if(err) throw err;
        res.render('index' ,{title:"Student Table" , studentData: result});
    })
})


module.exports = router;