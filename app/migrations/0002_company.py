# Generated by Django 5.0.4 on 2024-04-30 01:49

import django.db.models.deletion
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('app', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Company',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('firstname', models.CharField(max_length=50)),
                ('lastname', models.CharField(max_length=50)),
                ('company_name', models.CharField(max_length=150)),
                ('state', models.CharField(max_length=50)),
                ('city', models.CharField(max_length=50)),
                ('contact', models.CharField(max_length=50)),
                ('address', models.CharField(max_length=150)),
                ('logo_pic', models.ImageField(upload_to='app/img/company')),
                ('user_id', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='app.usermaster')),
            ],
        ),
    ]
