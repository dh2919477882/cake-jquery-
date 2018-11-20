//使用express构建web服务器
const express=require("express");
const bodyParser=require("body-parser")
const session=require("express-session")


/*引入路由模块*/
const index=require("./routes/index.js");  //主页模块
const product=require("./routes/product.js"); //商品列表模块
const detail=require("./routes/detail.js");  //商品详情页
const login=require("./routes/login.js");   //登录界面
const register=require("./routes/register.js") //注册页面

//监听
var app=express();
var server=app.listen(3030);


//使用bodyParse中间件
app.use(bodyParser.urlencoded({extended:false}));

//托管静态资源到public下
app.use(express.static("public"));
app.use(session({
  secret: '128位随机字符串',
  resave: false,
  saveUninitialized: true,
}))




//使用路由器来管理路由
app.use("/index",index);
app.use("/product",product);
app.use("/detail",detail);
app.use("/login",login);
app.use("/register",register);