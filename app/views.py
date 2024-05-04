from django.shortcuts import render, redirect
from .models import *
from random import randint
from django.contrib.auth.decorators import login_required
from django.contrib.auth import logout

def logout_view(request):
    logout(request)
    # Redirect to a success page or any other desired page after logout

    return redirect('index') 




# Create your views here.
def IndexPage(request):
             context = {}
             return render(request, 'app/index.html', context)
   

def TeamPage(request):
    return render(request,"app/team.html")

def PricePage(request):
    return render(request,"app/pricing.html")

def JobListPage(request):
    return render(request,"app/job-list.html")

def JobGridPage(request):
    return render(request,"app/job-grid.html")

def About(request):
    return render(request,"app/about.html")
def CreateResume(request):
    return render(request,"app/create-resume.html")
def ContactPage(request):
    
        
    return render(request, "app/contact.html")








def PostaJob(request):
    return render(request,"app/post-a-job.html")
def JobDetails(request):
    return render(request,"app/job-details.html")
def JobDetails2(request):
    return render(request,"app/job-details-2.html")
def Faq(request):
    return render(request,"app/faq.html")



def CompanyDetail(request):
    return render(request,"app/company-detail.html")

def CandidatesProfile(request):
    return render(request,"app/candidates-profile.html")
def CandidatesListing(request):
    return render(request,"app/candidates-listing.html")
def BlogDetails(request):
    return render(request,"app/blog-details.html")
def BlogGrid(request):
    return render(request,"app/blog-grid.html")

def EmployerList(request):
    return render(request,"app/employers-list.html")

def Services(request):
    return render(request,"app/services.html")
def RecoveryPassword(request):
    return render(request,"app/recovery-password.html")

def SignupPage(request):
    return render(request,"app/signup.html")
def RegisterUser(request):
    if request.POST['role'] == 'Candidate':
        role = request.POST['role']
        fname = request.POST['firstname']
        lname = request.POST['lastname']
        email = request.POST['email']
        password = request.POST['password']
        cpassword = request.POST['cpassword']

        user = UserMaster.objects.filter(email=email)

        if user:
            message = "User Already Exists"
            return render(request, "app/signup.html", {'msg': message})
        else:
            if password == cpassword:
                otp = randint(100000, 999999)
                newuser = UserMaster.objects.create(role=role, email=email, otp=otp, password=password)
                newcand = Candidate.objects.create(user_id=newuser, firstname=fname, lastname=lname)
                return render(request, "app/otpverify.html",{'email':email})
            else:
                message = "Passwords do not match"
                return render(request, "app/signup.html", {'msg': message})
            
    elif request.POST['role'] == 'Company':  # Corrected indentation
        role = request.POST['role']
        firstname = request.POST['firstname']
        lastname = request.POST['lastname']
        email = request.POST['email']
        password = request.POST['password']
        cpassword = request.POST['cpassword']

        user = UserMaster.objects.filter(email=email)

        if user:
            message = "User Already Exists"
            return render(request, "app/signup.html", {'msg': message})
        else:
            if password == cpassword:
                otp = randint(100000, 999999)
                newuser = UserMaster.objects.create(role=role, email=email, otp=otp, password=password)
                newcomp = Company.objects.create(user_id=newuser, firstname=firstname, lastname=lastname)
                return render(request, "app/otpverify.html",{'email':email})
            else:
                message = "Passwords do not match"
                return render(request, "app/signup.html", {'msg': message})

            


def OTPPage(request):
    return render(request,"app/otpverify.html")

def Otpverify(request):
    email = request.POST['email']
    otp = int(request.POST['otp'])

    user = UserMaster.objects.get(email=email)

    if user:
        if user.otp == otp:
            message = "Otp Verified Successfully"
            return render(request,"app/login.html",{'msg' :message})
        else:
            message = "Otp is incorrect"
            return render(request,"app/otpverify.html",{'msg' :message})
    else:
        return render(request,"app/signup.html")
    
def Loginpage(request):
    return render(request,"app/login.html")

def LoginUser(request):
    
    if request.POST['role']=="Candidate":
        email = request.POST['email']
        password = request.POST['password']

        user = UserMaster.objects.get(email=email)
        

        if user:
            if user.password==password and user.role == "Candidate":
                can = Candidate.objects.get(user_id=user)
                request.session['id'] = user.id
                request.session['role'] = user.role
                request.session['firstname'] = can.firstname
                request.session['lastname'] =can.lastname
                request.session['email'] = user.email
                return redirect('index')
            else:
                message ="Password doesnot match"
                return render(request,"app/login.html",{'msg':message})
        else:
            message = "User doesnot exist"
            return render(request,"app/login.html",{'msg':message})
        
    elif request.POST['role'] == 'Company':
        email = request.POST['email']
        password = request.POST['password']

        user = UserMaster.objects.get(email=email)
        if user:
            if user.password==password and user.role == "Company":
                can = Company.objects.get(user_id=user)
                request.session['id'] = user.id
                request.session['role'] = user.role
                request.session['firstname'] = can.firstname
                request.session['lastname'] =can.lastname
                request.session['email'] = user.email
                return redirect('companyindex')
            else:
                message ="Password doesnot match"
                return render(request,"app/login.html",{'msg':message})
        else:
            message = "User doesnot exist"
            return render(request,"app/login.html",{'msg':message})




            
            
def ProfilePage(request,pk):
        
         user = UserMaster.objects.get(pk=pk)
         can = Candidate.objects.get(user_id=user)

         return render(request,"app/profile.html",{'user':user,'can':can})
        
      





def UpdateProfile(request, pk):
    user = UserMaster.objects.get(pk=pk)
    if user.role == "Candidate":
        can = Candidate.objects.get(user_id=user)
        can.state = request.POST['state']
        can.city = request.POST['city']
        can.jobtype = request.POST['jobtype']
        can.jobcategory = request.POST['jobcategory']
        can.highestedu = request.POST['education']
        can.experience = request.POST['experience']
        can.website = request.POST['website']
        can.shift = request.POST['shift']
        can.jobdescription = request.POST['description']
        can.min_salary = request.POST['minsalary']
        can.max_salary = request.POST['maxsalary']
        can.contact = request.POST['contact']
        can.gender = request.POST['gender']
        can.profile_pic = request.FILES['image']  # Handle file uploa  
        can.save()
        print("Data Saved")
        url = f'/profile/{pk}'   # formatting urls
        return redirect(url)
    


    ######## Company Site ###########

def CompanyIndexPage(request):
        return render(request,"app/company/index.html")

def CompanyProfilePage(request):
     
     return render(request,"app/company/profile.html")

def registerview(request):
    
     return render(request,"app/company/register.html")


def JobPostPage(request):
    return render(request,"app/company/jobpost.html")
def JobDetailsSubmit(request):
     user = UserMaster.objects.get(id=request.session.id)
     if user.role == "Company":
             comp = Company.objects.get(company_id= comp)
             jobname = request.POST['jobname']
             companyname =request.POST['companyname']
             companyemail = request.POST['companyemail']
             companycontact = request.POST['companycontact']
             address =request.POST['companyaddress']
             jobdescription =request.POST['jobdescription']
             qualification =request.POST['qualification']
             responsibility =request.POST['responsiblity']
             location =request.POST['location']
             salary =request.POST['salary']
             experience =request.POST['experience']
             website =request.POST['website']
            
             newjob= JobDetails.objects.create(company_id=comp,jobname=jobname,companyname=companyname,companyaddress=address,jobdescription=jobdescription,qualification=qualification,responsibilties=responsibility,location=location,companywebsite=website,companyemail=companyemail,companycontact=companycontact,salarypackage=salary,experience=experience)
           


             message = "Job post Successfully"

             return render(request,"app/company/jobpost.html",{'msg':message})




def Layoutsidenavlight(request):
        return render(request,"app/company/layout-sidenav-light.html")

def tables(request):
        return render(request,"app/company/tables.html")

def charts(request):
        return render(request,"app/company/charts.html")

def password(request):
        return render(request,"app/company/password.html")