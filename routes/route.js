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

router.get('/lecturer',(req,res)=>{
    let sql = 'SELECT * FROM lecturer';
    let query = db.query(sql,(err,result)=>{
        if(err) throw err;
        res.render('lecturer' ,{title:"Lecturer Table" , lecturerData: result});
    })
})

router.get('/lectures',(req,res)=>{
    let sql = 'SELECT * FROM lectures';
    let query = db.query(sql,(err,result)=>{
        if(err) throw err;
        res.render('lectures' ,{title:"Lectures Table" , lecturesData: result});
    })
})

router.get('/subject',(req,res)=>{
    let sql = 'SELECT * FROM subject';
    let query = db.query(sql,(err,result)=>{
        if(err) throw err;
        res.render('subject' ,{title:"Subject Table" , subjectData: result});
    })
})

router.get('/timetable',(req,res)=>{
    let sql = 'SELECT * FROM timetable';
    let query = db.query(sql,(err,result)=>{
        if(err) throw err;
        res.render('timetable' ,{title:"Timetable Info" , timetableData: result});
    })
})

router.get('/employee',(req,res)=>{
    let sql = 'SELECT * FROM employee';
    let query = db.query(sql,(err,result)=>{
        if(err) throw err;
        res.render('employee' ,{title:"Employee Table" , employeeData: result});
    })
})

module.exports = router;