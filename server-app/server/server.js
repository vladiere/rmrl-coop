const express = require('express');
const session = require('express-session');
const bodyParser = require('body-parser');
const cors = require('cors');
const admin = require('./admin')
const member = require('./member')
const employee = require('./employees')
const loginlog = require('./loginlogs')
const loans = require('./loans')
const savings = require('./savings')
const pettycash = require('./pettycash')
const reset = require('./reset')

const port = process.env.LOCAL_PORT;

const corsOptions = {
    origin: '*',
    methods: 'GET, POST, PUT, DELETE',
};

const app = express();

// Middleware
app.use(bodyParser.json());
app.use(cors(corsOptions));

app.use(express.json());
app.use(express.urlencoded({ extended: true }));

app.use(session({
    secret: 'rmrl-2023A-Qwerty',
    resave: false,
    saveUninitialized: false
}));

// Admin
app.post('/loginAdmin', admin.authenticate);
app.post('/register-admin', admin.registerAdmin);
app.get('/get-admin-list', admin.getAdminListData)
app.get('/protected', admin.verifyAdminToken, admin.getAdminData);
  

// Member
app.post('/registerMember', member.registerMember);
app.get('/getMember', member.getMemberData);
app.post('/deleteMember', member.removeMemberData);
app.post('/update-member', member.updateMemberData)
app.post('/login-member', member.loginmember)
app.get('/get-member', member.getOneMemberData)
app.post('/loan-request', member.loanRequests)
app.get('/get-comaker', member.getCoMakerData)
app.put('/accept-request/:id', member.updateLoanRequest)

// Employee
app.get('/getEmployees', employee.getEmployeesData);
app.post('/delete-employee', employee.removeEmployeeData)
app.post('/registerEmployee', employee.registerEmployee)
app.post('/update-employee', employee.updateEmployee)


// Login Logs
app.get('/logs', loginlog.getLoginLogs)

// Loans
app.get('/get-loans', loans.getLoans)
app.get('/get-allloans', loans.getAllLoans)
app.get('/get-unreadcount', loans.getUnreadcount)
app.post('/update-loans', loans.updateLoans)

// Savings
app.get('/get-savings', savings.getMemberSavings)
app.post('/withdraw-deposit', savings.withdrawSavings)

// PettyCash
app.get('/get-pettycash', pettycash.getPettyCash)

// Reset password
app.post('/request-reset', reset.sendEmail)
app.post('/reset-password', reset.resetPassword)

app.listen(port, () => {
    console.info(`Server listening on ${port}`)
})