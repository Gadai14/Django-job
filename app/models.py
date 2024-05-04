from django.db import models

class UserMaster(models.Model):
    email = models.EmailField(max_length=50)
    password = models.CharField(max_length=50)
    otp = models.IntegerField()
    role = models.CharField(max_length=50)
    is_active = models.BooleanField(default=True)
    is_verified = models.BooleanField(default=False)
    is_created = models.DateTimeField(auto_now_add=True)
    is_updated = models.DateTimeField(auto_now_add=True)

class Candidate(models.Model):
    user_id = models.ForeignKey(UserMaster, on_delete=models.CASCADE)
    firstname = models.CharField(max_length=50, default ="")
    lastname = models.CharField(max_length=50, default ="")
    contact = models.CharField(max_length=50, default ="")
    state = models.CharField(max_length=50, default ="")
    city = models.CharField(max_length=150, default="")
    address = models.CharField(max_length=150, default ="")
    dob = models.CharField(max_length=50, default ="")
    gender = models.CharField(max_length=50, default ="")
    min_salary = models.BigIntegerField(default=0)
    max_salary = models.BigIntegerField(default=0)
    jobtype = models.CharField(max_length=150, default="")
    jobcategory = models.CharField(max_length=150, default="")
    highestedu = models.CharField(max_length=150, default="")
    experience = models.CharField(max_length=150, default="")
    website = models.CharField(max_length=150, default="")
    shift = models.CharField(max_length=150, default="")
    jobdescription = models.CharField(max_length=500, default="")
    profile_pic = models.ImageField(upload_to="app/img/candidate")




class Company(models.Model):
    user_id = models.ForeignKey(UserMaster, on_delete=models.CASCADE)
    firstname = models.CharField(max_length=50)
    lastname = models.CharField(max_length=50)
    company_name = models.CharField(max_length=150)
    state = models.CharField(max_length=50)
    city = models.CharField(max_length=50)
    contact = models.CharField(max_length=50)
    address = models.CharField(max_length=150)
    logo_pic = models.ImageField(upload_to="app/img/company")


class JobDetails(models.Model):
    # company_id =models.ForeignKey(Company,on_delete=models.CASCADE)
    jobname = models.CharField(max_length=250)
    companyname = models.CharField(max_length=250)
    companyaddress = models.CharField(max_length=250)
    jobdescription =models.TextField(max_length=500)
    qualification = models.CharField(max_length=250)
    responsibilities = models.CharField(max_length=250)
    location = models.CharField(max_length=250)
    companywebsite = models.CharField(max_length=250)
    companyemail = models.CharField(max_length=250)
    companycontact = models.CharField(max_length=20)
    salarypackage = models.CharField(max_length=250)
    experience = models.IntegerField()