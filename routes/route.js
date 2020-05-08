const express = require('express');
const router = express.Router();
const db = require('../db/db');


router.get('/',(req,res)=>{
    res.render('index');
})
router.get('/student',(req,res)=>{
    let sql = 'SELECT * FROM student';
    let query = db.query(sql,(err,result)=>{
        if(err) throw err;
        res.render('student' ,{title:"Student Table" , studentData: result});
    })
})
router.get('/admission',(req,res)=>{
    let sql = 'SELECT * FROM admission';
    let query = db.query(sql,(err,result)=>{
        if(err) throw err;
        res.render('admission' ,{title:"Admission Table" , admissionData: result});
    })
})
router.get('/batch',(req,res)=>{
    let sql = 'SELECT * FROM batch';
    let query = db.query(sql,(err,result)=>{
        if(err) throw err;
        res.render('batch' ,{title:"Batch Table" , batchData: result});
    })
})
router.get('/branch',(req,res)=>{
    let sql = 'SELECT * FROM branch_info';
    let query = db.query(sql,(err,result)=>{
        if(err) throw err;
        res.render('branch' ,{title:"Branch Table" , branchData: result});
    })
})
module.exports = router;