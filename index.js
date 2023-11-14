const express = require('express'); 
const app = express();
app.get('/',(req, res)=>{
    res.send('안녕 웹서버!');
});


app.listen(9090, ()=>{
    console.log('웹서버가 실행되고 있어요~!');
})