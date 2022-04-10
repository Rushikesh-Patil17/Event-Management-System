# Generated by Django 3.0.2 on 2020-05-07 19:20

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='News',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('newstitle', models.CharField(max_length=255, unique=True)),
                ('description', models.TextField()),
                ('created_at', models.DateField(auto_now_add=True)),
            ],
        ),
        migrations.CreateModel(
            name='Notices',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('noticetitle', models.CharField(max_length=255, unique=True)),
                ('description', models.TextField()),
                ('created_at', models.DateField(auto_now_add=True)),
            ],
        ),
    ]
