# Generated by Django 3.0.2 on 2020-05-07 19:20

from django.conf import settings
import django.core.validators
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
    ]

    operations = [
        migrations.CreateModel(
            name='Club_Ec',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('date_joined', models.DateField(auto_now_add=True)),
                ('designation', models.CharField(max_length=64)),
            ],
        ),
        migrations.CreateModel(
            name='Clubs',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('clubname', models.CharField(max_length=255, unique=True)),
                ('shortname', models.CharField(max_length=10)),
                ('clubemail', models.EmailField(blank=True, max_length=255)),
                ('password', models.CharField(blank=True, max_length=255)),
                ('logo', models.ImageField(upload_to='club_logo/')),
                ('description', models.TextField()),
                ('form', models.DateField(auto_now_add=True)),
                ('is_active', models.BooleanField(default=True)),
                ('ec', models.ManyToManyField(through='club.Club_Ec', to=settings.AUTH_USER_MODEL)),
            ],
        ),
        migrations.CreateModel(
            name='member',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=255)),
                ('std_id', models.CharField(max_length=13)),
                ('email', models.EmailField(blank=True, max_length=255)),
                ('phone_number', models.CharField(max_length=15)),
                ('semister', models.IntegerField(validators=[django.core.validators.MinValueValidator(0), django.core.validators.MaxValueValidator(21)])),
                ('completed_credit', models.IntegerField(validators=[django.core.validators.MinValueValidator(0)])),
                ('approved', models.BooleanField(default=False)),
                ('club', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='club.Clubs')),
            ],
        ),
        migrations.CreateModel(
            name='Gallery',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('image', models.ImageField(upload_to='gallery/')),
                ('upload_date', models.DateField(auto_now_add=True)),
                ('club', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='club.Clubs')),
            ],
        ),
        migrations.AddField(
            model_name='club_ec',
            name='club',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='club.Clubs'),
        ),
        migrations.AddField(
            model_name='club_ec',
            name='ec',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL),
        ),
    ]
