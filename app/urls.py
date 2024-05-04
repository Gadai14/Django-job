from django.urls import path, include
from . import views


urlpatterns = [
    path("", views.IndexPage, name="index"),
    path("signup/", views.SignupPage, name="signup"),
    path("register/", views.RegisterUser, name="register"),
    path("otppage/", views.OTPPage, name="otppage"),
    path("otp/", views.Otpverify, name="otp"),
    path("loginpage/", views.Loginpage, name="loginpage"),
    path("loginuser/", views.LoginUser, name="login"),
    path("profile/<int:pk>", views.ProfilePage, name="profile"),
    path("updateprofile/<int:pk>",views.UpdateProfile,name="updateprofile"),

    path("team/", views.TeamPage,name="team"),
    path("price/", views.PricePage,name="price"),
    path("joblist/", views.JobListPage,name="joblist"),
    path("jobgrid/", views.JobGridPage,name="jobgrid"),
    path("about/", views.About,name="about"),
    path("createresume/", views.CreateResume,name="createresume"),
    path("contact/", views.ContactPage,name="contact"),
    path("postajob/", views.PostaJob,name="postajob"),
    path("jobdetails/", views.JobDetails,name="jobdetails"),
    path("jobdetails2/", views.JobDetails2,name="jobdetails2"),
    path("service/", views.Services,name="service"),
    path("recoverypassword/", views.RecoveryPassword,name="recoverypassword"),
    path("faq/", views.Faq,name="faq"),
    path("employerslist/", views.EmployerList,name="employerslist"),
    path("companydetail/", views.CompanyDetail,name="companydetail"),
    path("candidatesprofile/", views.CandidatesProfile,name="candidatesprofile"),
    path("candidateslisting/", views.CandidatesListing,name="candidateslisting"),
    path("blogdetails/", views.BlogDetails,name="blogdetails"),
    path("bloggrid/", views.BlogGrid,name="bloggrid"),
    path("logout/", views.logout_view,name="logout"),
    path("layoutsidenavlight/", views.Layoutsidenavlight,name="layoutsidenavlight"),

    path("tables/", views.tables,name="tables"),
    path("charts/", views.charts,name="charts"),
    path("password/", views.password,name="password"),
    path("companyprofile/", views.CompanyProfilePage,name="companyprofile"),





    # path("contactdata/", views.ContactData,name="contactdata"),















    




    ######### Company ###########
    path("companyindex/",views.CompanyIndexPage,name="companyindex"),
    path("register/", views.registerview,name="register"),
    path("companyprofile/<int:pk>",views.CompanyProfilePage,name="companyprofile"),
    path("jobpostpage/",views.JobPostPage,name="jobpostpage"),
    path("jobpost/",views.JobDetailsSubmit,name="jobpost"),


    
]
