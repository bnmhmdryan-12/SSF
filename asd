<!DOCTYPE html>
<html lang="ar" dir="rtl">
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Your Family's Safe Summer</title>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Cairo:wght@500;700;800;900&display=swap" rel="stylesheet">

<style>

*{
box-sizing:border-box;
}

body{
margin:0;
font-family:'Cairo',sans-serif;
background:#f3fbff;
color:#123;
}

.hero{
height:100vh;
background:
linear-gradient(rgba(0,70,100,.55),rgba(0,70,100,.55)),
url('https://images.unsplash.com/photo-1507525428034-b723cf961d3e');
background-size:cover;
background-position:center;
display:flex;
align-items:center;
justify-content:center;
padding:20px;
}

.hero-box{
background:white;
padding:40px 25px;
border-radius:30px;
max-width:700px;
text-align:center;
box-shadow:0 10px 30px #0003;
}

.logo{
font-size:20px;
font-weight:900;
color:#0077b6;
line-height:1.8;
}

.hero h1{
font-size:58px;
font-weight:900;
color:#0077b6;
margin:20px 0;
}

.hero h2{
font-size:25px;
font-weight:800;
color:#555;
}

.hero-btn,
.btn{
display:inline-block;
background:#0077b6;
color:white;
padding:14px 35px;
border-radius:12px;
font-weight:800;
margin-top:20px;
border:none;
cursor:pointer;
font-family:'Cairo',sans-serif;
}


.container{
display:none;
padding:20px;
}

.page{
display:none;
max-width:900px;
margin:auto;
background:white;
padding:30px;
border-radius:25px;
box-shadow:0 8px 25px #0002;
border-right:8px solid #00b4d8;
}


.page.active{
display:block;
}


.page h3{
color:#0077b6;
font-size:28px;
font-weight:800;
}

.page ul{
font-size:19px;
line-height:2;
font-weight:500;
}


.en{
direction:ltr;
text-align:left;
margin-top:30px;
border-right:none;
border-left:8px solid #00b4d8;
}


.counter{
text-align:center;
margin:20px;
font-weight:700;
color:#0077b6;
}


@media(max-width:600px){

.hero h1{
font-size:40px;
}

.hero h2{
font-size:20px;
}

}

</style>

</head>


<body>


<section class="hero" id="home">

<div class="hero-box">

<div class="logo">

Saudi Aramco<br>
إدارة عمليات الأمن بالظهران<br>
Dhahran Security Operations Department

</div>


<h1>
☀️ صيف آمن لعائلتك
</h1>


<h2>
نصائح وإرشادات للحفاظ على سلامة الأسرة خلال فصل الصيف
<br>
Your Family's Safe Summer
</h2>


<button class="hero-btn" onclick="start()">
ابدأ الآن
</button>


</div>

</section>




<div class="container" id="content">


<div class="counter" id="counter"></div>



<div class="page">

<h3>☀️ السلامة خلال فصل الصيف</h3>

<ul>
<li>اشرب الماء باستمرار للحفاظ على ترطيب الجسم.</li>
<li>تجنب التعرض المباشر لأشعة الشمس وقت الظهيرة.</li>
<li>لا تترك الأطفال أو كبار السن داخل المركبات.</li>
<li>انتبه لعلامات الإجهاد الحراري.</li>
</ul>


<div class="en">

<h3>☀️ Summer Safety</h3>

<ul>
<li>Drink water regularly to stay hydrated.</li>
<li>Avoid direct sunlight during peak hours.</li>
<li>Never leave children or elderly people inside vehicles.</li>
<li>Watch for signs of heat exhaustion.</li>
</ul>

</div>


<button class="btn" onclick="next()">التالي</button>

</div>




<div class="page">

<h3>🏊‍♂️ السلامة أثناء السباحة</h3>

<ul>
<li>راقب الأطفال باستمرار أثناء السباحة.</li>
<li>استخدم أدوات السلامة المناسبة.</li>
<li>التزم بتعليمات السلامة.</li>
</ul>


<div class="en">

<h3>🏊‍♂️ Swimming Safety</h3>

<ul>
<li>Always supervise children while swimming.</li>
<li>Use proper safety equipment.</li>
<li>Follow safety instructions.</li>
</ul>

</div>


<button class="btn" onclick="prev()">السابق</button>
<button class="btn" onclick="next()">التالي</button>

</div>




<div class="page">

<h3>🚗 السفر الآمن</h3>

<ul>
<li>افحص المركبة قبل السفر.</li>
<li>اربط حزام الأمان.</li>
<li>احتفظ بحقيبة إسعافات أولية.</li>
</ul>


<div class="en">

<h3>🚗 Safe Travel</h3>

<ul>
<li>Check your vehicle before traveling.</li>
<li>Always wear seat belts.</li>
<li>Keep a first aid kit.</li>
</ul>

</div>


<button class="btn" onclick="prev()">السابق</button>

<button class="btn" onclick="homePage()">
الصفحة الرئيسية
</button>


</div>


</div>




<script>

let pages=document.querySelectorAll(".page");
let index=0;


function start(){

document.getElementById("home").style.display="none";
document.getElementById("content").style.display="block";

show();

}


function show(){

pages.forEach(p=>p.classList.remove("active"));

pages[index].classList.add("active");

document.getElementById("counter").innerHTML =
(index+1)+" / "+pages.length;

}


function next(){

if(index < pages.length-1){
index++;
show();
}

}


function prev(){

if(index > 0){
index--;
show();
}

}


function homePage(){

index=0;

document.getElementById("content").style.display="none";

document.getElementById("home").style.display="flex";

pages.forEach(p=>p.classList.remove("active"));

}


</script>


</body>
</html>