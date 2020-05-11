const express = require('express');
const router = express.Router();
const db = require('../db/db');

let data ='';
router.get('/query' , (req,res)=>{
    res.render('query' ,{ data: data});
});

router.post('/query' , (req,res)=>{
    const sql = req.body.querytext;
    if (!sql) res.status(400).send("Invalid Input");
    let query = db.query({sql: sql,timeout:30000},(err,result)=>{
        if(err) throw err;
        data = result;
        res.redirect('/query');
    });
    
});

module.exports = router;