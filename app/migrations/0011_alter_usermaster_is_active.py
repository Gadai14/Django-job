# Generated by Django 5.0.4 on 2024-05-04 03:33

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('app', '0010_jobdetails_alter_usermaster_is_active'),
    ]

    operations = [
        migrations.AlterField(
            model_name='usermaster',
            name='is_active',
            field=models.BooleanField(default=True),
        ),
    ]
