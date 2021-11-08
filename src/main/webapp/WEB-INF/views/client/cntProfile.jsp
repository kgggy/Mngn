<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내프로필 관리</title>
<style>
form {
   width: 50%;
   margin: 0 auto;
}

html * {
   -webkit-font-smoothing: antialiased;
}

.h6, h6 {
   font-size: .75rem !important;
   font-weight: 500;
   font-family: Roboto, Helvetica, Arial, sans-serif;
   line-height: 1.5em;
   text-transform: uppercase;
}

.name h6 {
   margin-top: 10px;
   margin-bottom: 10px;
}

.navbar {
   border: 0;
   border-radius: 3px;
   padding: .625rem 0;
   margin-bottom: 20px;
   color: #555;
   background-color: #fff !important;
   box-shadow: 0 4px 18px 0 rgba(0, 0, 0, .12), 0 7px 10px -5px
      rgba(0, 0, 0, .15) !important;
   z-index: 1000 !important;
   transition: all 150ms ease 0s;
}

.navbar.navbar-transparent {
   z-index: 1030;
   background-color: transparent !important;
   box-shadow: none !important;
   padding-top: 25px;
   color: #fff;
}

.navbar .navbar-brand {
   position: relative;
   color: inherit;
   height: 50px;
   font-size: 1.125rem;
   line-height: 30px;
   padding: .625rem 0;
   font-weight: 300;
   -webkit-font-smoothing: antialiased;
}

.navbar .navbar-nav .nav-item .nav-link:not(.btn) .material-icons {
   margin-top: -7px;
   top: 3px;
   position: relative;
   margin-right: 3px;
}

.navbar .navbar-nav .nav-item .nav-link .material-icons {
   font-size: 1.25rem;
   max-width: 24px;
   margin-top: -1.1em;
}

.navbar .navbar-nav .nav-item .nav-link .fa, .navbar .navbar-nav .nav-item .nav-link .material-icons
   {
   font-size: 1.25rem;
   max-width: 24px;
   margin-top: 0px;
}

.navbar .navbar-nav .nav-item .nav-link {
   position: relative;
   color: inherit;
   padding: .9375rem;
   font-weight: 400;
   font-size: 12px;
   border-radius: 3px;
   line-height: 20px;
}

a .material-icons {
   vertical-align: middle;
}

.fixed-top {
   position: fixed;
   z-index: 1030;
   left: 0;
   right: 0;
}

.profile-page .page-header {
   height: 380px;
   background-position: center;
}

.page-header {
   height: 100vh;
   background-size: cover;
   margin: 0;
   padding: 0;
   border: 0;
   display: flex;
   align-items: center;
}

.header-filter:after, .header-filter:before {
   position: absolute;
   z-index: 1;
   width: 100%;
   height: 100%;
   display: block;
   left: 0;
   top: 0;
   content: "";
}

.header-filter::before {
   background: rgba(0, 0, 0, .5);
}

.main-raised {
   margin: -60px 30px 0;
   border-radius: 6px;
   box-shadow: 0 16px 24px 2px rgba(0, 0, 0, .14), 0 6px 30px 5px
      rgba(0, 0, 0, .12), 0 8px 10px -5px rgba(0, 0, 0, .2);
}

.main {
   background: #FFF;
   position: relative;
   z-index: 3;
}

.profile-page .profile {
   text-align: center;
}

.profile-page .profile img {
   max-width: 160px;
   width: 100%;
   margin: 0 auto;
   -webkit-transform: translate3d(0, -50%, 0);
   -moz-transform: translate3d(0, -50%, 0);
   -o-transform: translate3d(0, -50%, 0);
   -ms-transform: translate3d(0, -50%, 0);
   transform: translate3d(0, -50%, 0);
}

.img-raised {
   box-shadow: 0 5px 15px -8px rgba(0, 0, 0, .24), 0 8px 10px -5px
      rgba(0, 0, 0, .2);
}

.rounded-circle {
   border-radius: 50% !important;
}

.img-fluid, .img-thumbnail {
   max-width: 100%;
   height: auto;
}

.title {
   margin-top: 30px;
   margin-bottom: 25px;
   min-height: 32px;
   color: #3C4858;
   font-weight: 700;
   font-family: "Roboto Slab", "Times New Roman", serif;
}

.profile-page .description {
   margin: 1.071rem auto 0;
   max-width: 600px;
   color: #999;
   font-weight: 300;
}

p {
   font-size: 14px;
   margin: 0 0 10px;
}

.profile-page .profile-tabs {
   margin-top: 4.284rem;
}

.nav-pills, .nav-tabs {
   border: 0;
   border-radius: 3px;
   padding: 0 15px;
}

.nav .nav-item {
   position: relative;
   margin: 0 2px;
}

.nav-pills.nav-pills-icons .nav-item .nav-link {
   border-radius: 4px;
}

.nav-pills .nav-item .nav-link.active {
   color: #fff;
   background-color: #9c27b0;
   box-shadow: 0 5px 20px 0 rgba(0, 0, 0, .2), 0 13px 24px -11px
      rgba(156, 39, 176, .6);
}

.nav-pills .nav-item .nav-link {
   line-height: 24px;
   font-size: 12px;
   font-weight: 500;
   min-width: 100px;
   color: #555;
   transition: all .3s;
   border-radius: 30px;
   padding: 10px 15px;
   text-align: center;
}

.nav-pills .nav-item .nav-link:not(.active):hover {
   background-color: rgba(200, 200, 200, .2);
}

.nav-pills .nav-item i {
   display: block;
   font-size: 30px;
   padding: 15px 0;
}

.tab-space {
   padding: 20px 0 50px;
}

.profile-page .gallery {
   margin-top: 3.213rem;
   padding-bottom: 50px;
}

.profile-page .gallery img {
   width: 100%;
   margin-bottom: 2.142rem;
}

.profile-page .profile .name {
   margin-top: -80px;
}

img.rounded {
   border-radius: 6px !important;
}

.tab-content>.active {
   display: block;
}

/*buttons*/
.btn {
   position: relative;
   padding: 12px 30px;
   margin: .3125rem 1px;
   font-size: .75rem;
   font-weight: 400;
   line-height: 1.428571;
   text-decoration: none;
   text-transform: uppercase;
   letter-spacing: 0;
   border: 0;
   border-radius: .2rem;
   outline: 0;
   transition: box-shadow .2s cubic-bezier(.4, 0, 1, 1), background-color
      .2s cubic-bezier(.4, 0, .2, 1);
   will-change: box-shadow, transform;
}

.btn.btn-just-icon {
   font-size: 20px;
   height: 41px;
   min-width: 41px;
   width: 41px;
   padding: 0;
   overflow: hidden;
   position: relative;
   line-height: 41px;
}

.btn.btn-just-icon fa {
   margin-top: 0;
   position: absolute;
   width: 100%;
   transform: none;
   left: 0;
   top: 0;
   height: 100%;
   line-height: 41px;
   font-size: 20px;
}

.btn.btn-link {
   background-color: transparent;
   color: #999;
}

/* dropdown */
.dropdown-menu {
   position: absolute;
   top: 100%;
   left: 0;
   z-index: 1000;
   float: left;
   min-width: 11rem !important;
   margin: .125rem 0 0;
   font-size: 1rem;
   color: #212529;
   text-align: left;
   background-color: #fff;
   background-clip: padding-box;
   border-radius: .25rem;
   transition: transform .3s cubic-bezier(.4, 0, .2, 1), opacity .2s
      cubic-bezier(.4, 0, .2, 1);
}

.dropdown-menu.show {
   transition: transform .3s cubic-bezier(.4, 0, .2, 1), opacity .2s
      cubic-bezier(.4, 0, .2, 1);
}

.dropdown-menu .dropdown-item:focus, .dropdown-menu .dropdown-item:hover,
   .dropdown-menu a:active, .dropdown-menu a:focus, .dropdown-menu a:hover
   {
   box-shadow: 0 4px 20px 0 rgba(0, 0, 0, .14), 0 7px 10px -5px
      rgba(156, 39, 176, .4);
   background-color: #9c27b0;
   color: #FFF;
}

.show .dropdown-toggle:after {
   transform: rotate(180deg);
}

.dropdown-toggle:after {
   will-change: transform;
   transition: transform .15s linear;
}

.dropdown-menu .dropdown-item, .dropdown-menu li>a {
   position: relative;
   width: auto;
   display: flex;
   flex-flow: nowrap;
   align-items: center;
   color: #333;
   font-weight: 400;
   text-decoration: none;
   font-size: .8125rem;
   border-radius: .125rem;
   margin: 0 .3125rem;
   transition: all .15s linear;
   min-width: 7rem;
   padding: 0.625rem 1.25rem;
   min-height: 1rem !important;
   overflow: hidden;
   line-height: 1.428571;
   text-overflow: ellipsis;
   word-wrap: break-word;
}

.dropdown-menu.dropdown-with-icons .dropdown-item {
   padding: .75rem 1.25rem .75rem .75rem;
}

.dropdown-menu.dropdown-with-icons .dropdown-item .material-icons {
   vertical-align: middle;
   font-size: 24px;
   position: relative;
   margin-top: -4px;
   top: 1px;
   margin-right: 12px;
   opacity: .5;
}

/* footer */
footer {
   margin-top: 10px;
   color: #555;
   padding: 25px;
   font-weight: 300;
}

.footer p {
   margin-bottom: 0;
   font-size: 14px;
   margin: 0 0 10px;
   font-weight: 300;
}

footer p a {
   color: #555;
   font-weight: 400;
}

footer p a:hover {
   color: #9f26aa;
   text-decoration: none;
}
</style>

</head>

<body>
   <div class="bradcam_area breadcam_bg">
      <div class="container">
         <div class="row">
            <div class="col-lg-12">
               <div class="bradcam_text text-center">
                  <h3>내 프로필 관리</h3>
               </div>
            </div>
         </div>
      </div>
   </div>
   <!-- END nav -->
   <section>
      <div class="overlay"></div>
      <div class="container">
         <div class="row no-gutters slider-text align-items-end">
            <div class="col-md-9 ftco-animate pb-5"></div>
         </div>
      </div>
   </section>
<body class="profile-page">
   <nav
      class="navbar navbar-color-on-scroll navbar-transparent    fixed-top  navbar-expand-lg "
      color-on-scroll="100" id="sectionsNav"></nav>

   <div class="page-header header-filter" data-parallax="true"
      style="background-image: url('http://wallpapere.org/wp-content/uploads/2012/02/black-and-white-city-night.png');"></div>
   <div class="main main-raised">
      <div class="profile-content">
         <div class="container">
            <div class="row">
               <div class="col-md-6 ml-auto mr-auto">
                  <div class="profile">
                     <div class="avatar">
                        <img
                           src="https://www.biography.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cg_face%2Cq_auto:good%2Cw_300/MTU0NjQzOTk4OTQ4OTkyMzQy/ansel-elgort-poses-for-a-portrait-during-the-baby-driver-premiere-2017-sxsw-conference-and-festivals-on-march-11-2017-in-austin-texas-photo-by-matt-winkelmeyer_getty-imagesfor-sxsw-square.jpg"
                           alt="Circle Image" class="img-raised rounded-circle img-fluid">
                     </div>
                     <div class="name">
                        <h3 class="title">Christian Louboutin</h3>
                        <h6>Designer</h6>
                        <a href="#pablo" class="btn btn-just-icon btn-link btn-dribbble"><i
                           class="fa fa-dribbble"></i></a> <a href="#pablo"
                           class="btn btn-just-icon btn-link btn-twitter"><i
                           class="fa fa-twitter"></i></a> <a href="#pablo"
                           class="btn btn-just-icon btn-link btn-pinterest"><i
                           class="fa fa-pinterest"></i></a>
                     </div>
                  </div>
               </div>
            </div>
            <div class="description text-center">
               <p>An artist of considerable range, Chet Faker — the name taken
                  by Melbourne-raised, Brooklyn-based Nick Murphy — writes, performs
                  and records all of his own music, giving it a warm, intimate feel
                  with a solid groove structure.</p>
            </div>
            <div class="row">
               <div class="col-md-6 ml-auto mr-auto">
                  <div class="profile-tabs">
                     <ul class="nav nav-pills nav-pills-icons justify-content-center"
                        role="tablist">
                        <li class="nav-item"><a class="nav-link active"
                           href="#studio" role="tab" data-toggle="tab"> <i
                              class="material-icons">나의 정보</i> Studio
                        </a></li>
                        <li class="nav-item"><a class="nav-link" href="#works"
                           role="tab" data-toggle="tab"> <i class="material-icons">나의
                                 반려견</i> Work
                        </a></li>
                        <li class="nav-item"><a class="nav-link" href="#favorite"
                           role="tab" data-toggle="tab"> <i class="material-icons">훈련
                                 후기사진</i> Favorite
                        </a></li>
                     </ul>
                  </div>
               </div>
            </div>

            <div class="tab-content tab-space">
               <div class="tab-pane active text-center gallery" id="studio">
                  <div class="row">
                     <div class="col-md-3 ml-auto">
                        <img
                           src="https://images.unsplash.com/photo-1524498250077-390f9e378fc0?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=83079913579babb9d2c94a5941b2e69d&auto=format&fit=crop&w=751&q=80"
                           class="rounded"> <img
                           src="https://images.unsplash.com/photo-1528249227670-9ba48616014f?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=66b8e7db17b83084f16fdeadfc93b95b&auto=format&fit=crop&w=357&q=80"
                           class="rounded">
                     </div>
                     <div class="col-md-3 mr-auto">
                        <img
                           src="https://images.unsplash.com/photo-1521341057461-6eb5f40b07ab?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=72da2f550f8cbd0ec252ad6fb89c96b2&auto=format&fit=crop&w=334&q=80"
                           class="rounded"> <img
                           src="https://images.unsplash.com/photo-1506667527953-22eca67dd919?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6326214b7ce18d74dde5e88db4a12dd5&auto=format&fit=crop&w=750&q=80"
                           class="rounded">
                     </div>
                  </div>
               </div>
               <div class="tab-pane text-center gallery" id="works">
                  <div class="row">
                     <div class="col-md-3 ml-auto">
                        <img
                           src="https://images.unsplash.com/photo-1524498250077-390f9e378fc0?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=83079913579babb9d2c94a5941b2e69d&auto=format&fit=crop&w=751&q=80"
                           class="rounded"> <img
                           src="https://images.unsplash.com/photo-1506667527953-22eca67dd919?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6326214b7ce18d74dde5e88db4a12dd5&auto=format&fit=crop&w=750&q=80"
                           class="rounded"> <img
                           src="https://images.unsplash.com/photo-1505784045224-1247b2b29cf3?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=ec2bdc92a9687b6af5089b335691830e&auto=format&fit=crop&w=750&q=80"
                           class="rounded">
                     </div>
                     <div class="col-md-3 mr-auto">
                        <img
                           src="https://images.unsplash.com/photo-1504346466600-714572c4b726?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6754ded479383b7e3144de310fa88277&auto=format&fit=crop&w=750&q=80"
                           class="rounded"> <img
                           src="https://images.unsplash.com/photo-1494028698538-2cd52a400b17?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=83bf0e71786922a80c420c17b664a1f5&auto=format&fit=crop&w=334&q=80"
                           class="rounded">
                     </div>
                  </div>
               </div>
               <div class="tab-pane text-center gallery" id="favorite">
                  <div class="row">
                     <div class="col-md-3 ml-auto">
                        <img
                           src="https://images.unsplash.com/photo-1504346466600-714572c4b726?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6754ded479383b7e3144de310fa88277&auto=format&fit=crop&w=750&q=80"
                           class="rounded"> <img
                           src="https://images.unsplash.com/photo-1494028698538-2cd52a400b17?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=83bf0e71786922a80c420c17b664a1f5&auto=format&fit=crop&w=334&q=80"
                           class="rounded">
                     </div>
                     <div class="col-md-3 mr-auto">
                        <img
                           src="https://images.unsplash.com/photo-1505784045224-1247b2b29cf3?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=ec2bdc92a9687b6af5089b335691830e&auto=format&fit=crop&w=750&q=80"
                           class="rounded"> <img
                           src="https://images.unsplash.com/photo-1524498250077-390f9e378fc0?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=83079913579babb9d2c94a5941b2e69d&auto=format&fit=crop&w=751&q=80"
                           class="rounded"> <img
                           src="https://images.unsplash.com/photo-1506667527953-22eca67dd919?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6326214b7ce18d74dde5e88db4a12dd5&auto=format&fit=crop&w=750&q=80"
                           class="rounded">
                     </div>
                  </div>
               </div>
            </div>
            <div class="section-top-border">
               <div align="center">회원정보수정</div>
               <form action="#">
                  <div class="mt-10">
                     <input type="text" name="id" placeholder="id"
                     		value="${client.id}"
                        onfocus="this.placeholder = ''" onblur="this.placeholder = 'id'"
                        required class="single-input">
                  </div>
                  <div class="mt-10">
                     <input type="text" name="pwd" placeholder="pwd"
                        value="${client.pwd}"
                        onfocus="this.placeholder = ''"
                        onblur="this.placeholder = 'password'" required
                        class="single-input">
                  </div>
                  <div class="mt-10">
                     <input type="text" name="name" placeholder="name"
                        	value="${client.name}"
                        onfocus="this.placeholder = ''"
                        onblur="this.placeholder = 'Name'" required class="single-input">
                  </div>
                  <div class="mt-10">
                     <input type="post_no" name="post_no" placeholder="post_no"
                     	value="${client.post_no}"
                        onfocus="this.placeholder = ''"
                        onblur="this.placeholder = 'post_no'" required class="single-input">
                  </div>
                  <div class="input-group-icon mt-10">
                     <div class="icon">
                        <i class="fa fa-thumb-tack" aria-hidden="true"></i>
                     </div>
                     <input type="text" name="adres1" placeholder="adres1"
                       value="${client.adres1}"
                        onfocus="this.placeholder = '주소'"
                        onblur="this.placeholder = 'adres1'" required
                        class="single-input">
                        <input type="text" name="adres2" placeholder="adres2" 
                        value="${client.adres2}"
                        onfocus="this.placeholder = '주소'"
                        onblur="this.placeholder = 'adres2'" required
                        class="single-input">
                  </div>
                       

             
                  <!-- For Gradient Border Use -->
                  <!-- <div class="mt-10">
                              <div class="primary-input">
                                 <input id="primary-input" type="text" name="first_name" placeholder="Primary color" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Primary color'">
                                 <label for="primary-input"></label>
                              </div>
                           </div> -->
                  <div class="mt-10">
                     <input type="text" name="phone" placeholder="phone"
                     	value = "${client.phone}"
                        onfocus="this.placeholder = ''"
                        onblur="this.placeholder = 'phone'" required
                        class="single-input-primary">
                  </div>
                  <div class="mt-10">
                     <input type="text" name="Email" placeholder="Email"
                     	value = "${client.Email}"
                        onfocus="this.placeholder = ''"
                        onblur="this.placeholder = 'Email'" required
                        class="single-input-primary">
                  </div>
                 
                
                  <br><br>
                  <div align="center">
                     <button type="submit" value="취소">취소</button>
                     &nbsp;
                     <button type="submit" value="수정">수정</button>
                  </div>
                  <br><br>
                  <br><br>
                  <br><br>
                  <div align="center">
                     멍냥꽁냥 회원을 탈퇴하시겠습니까? <a href="mOut.do" class="withdraw">회원탈퇴하기</a>
                  </div>

               </form>
            </div>
         </div>
      </div>
   </div>



   <script
      src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
   <script
      src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
   <script src="https://unpkg.com/popper.js@1.12.6/dist/umd/popper.js"
      integrity="sha384-fA23ZRQ3G/J53mElWqVJEGJzU0sTs+SvzG8fXVWP+kJQ1lwFAOkcUOysnlKJC33U"
      crossorigin="anonymous"></script>
   <script
      src="https://unpkg.com/bootstrap-material-design@4.1.1/dist/js/bootstrap-material-design.js"
      integrity="sha384-CauSuKpEqAFajSpkdjv3z9t8E7RlpJ1UP0lKM/+NdtSarroVKu069AlsRPKkFBz9"
      crossorigin="anonymous"></script>


</body>
</html>