<%--
<div class="container-fluid" style="display:none">
    <div class="flex-center flex-column" style="font-size: 50%;">
        <h1 class="animated fadeInUp mb-2" style="color:#0b51c5">the.BANK</h1>

        <h6 class="animated fadeInDownBig mb-1 red-text">your money is safe with us</h6>

        <hr>

         <div style="text-align: right">
            <p class="animated fadeIn text-muted" >epm.proj.bank by Ton Chief</p>
        </div>
    </div>
</div>
--%>



<!--Navbar-->
<nav class="navbar navbar-toggleable-md navbar-dark bg-primary mdb-color white-text fixed-top">
    <div class="container ">
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarNav1" aria-controls="navbarNav1" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="" style="position: absolute;">
        <a class="navbar-brand" href="<%=request.getContextPath()%>/bank">
            <h2 class="animated fadeInLeftBig mb-2 mdb-color darken-3 deep-orange-text z-depth-2" style="color:#0b51c5;padding-bottom:0;margin-bottom:0;">
                &nbsp; <b class="text-white">the.</b>BANK &nbsp;
            </h2>
        </a>

        </div>

        <div class="" style="margin-left: 100px;"></div>
        <div class="" style="margin-left: 10%"></div>


        <div class="collapse navbar-collapse" id="navbarNav1">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link">Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link">Features</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link">Pricing</a>
                </li>

            </ul>
            <ul>
                <div class="" style="margin-left: 100px;"></div>
            </ul>
            <ul class="navbar-nav mr-auto pull-right text-right">
                <li class="nav-item pull-right text-right">
                    <a href="<%=request.getContextPath()%>/bank/?command=logout" class="nav-link">Logout </a>
                </li>

            </ul>

           <%-- <form class="form-inline waves-effect waves-light">
                <input class="form-control" type="text" placeholder="Search">
            </form>--%>
        </div>
    </div>
</nav>
<br>

<%--

<br>
<div class="container ">
<div style="width:100px;height:100px;" class="blue-grey lighten-5">blue-grey lighten-5</div>
</div>
<br><br>
<div class="container teal lighten-5">

<div style="width:100px;height:100px;" class="teal lighten-5">teal lighten-5</div>
</div>
<br>
<div class="container ">
<div style="width:100px;height:100px;" class="cyan lighten-5">cyan lighten-5</div>
</div>
<br><br>
<div class="container ">
<div style="width:100px;height:100px;" class=" light-blue lighten-5"> light-blue lighten-5</div>
</div>
--%>