# Generated by Django 4.2.1 on 2023-06-10 01:24

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('camera', '0004_alter_camera_id'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='camera',
            name='model_number',
        ),
        migrations.RemoveField(
            model_name='camera',
            name='num_in_stock',
        ),
    ]
