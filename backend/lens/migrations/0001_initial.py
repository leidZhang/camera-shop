# Generated by Django 4.2.1 on 2023-05-27 20:40

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Lens',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('model_name', models.CharField(max_length=255)),
                ('model_number', models.CharField(max_length=255)),
                ('manufacturer', models.CharField(max_length=255)),
                ('retail_price', models.FloatField()),
                ('num_in_stock', models.DecimalField(decimal_places=2, max_digits=10)),
                ('img', models.URLField()),
            ],
            options={
                'db_table': 'lens',
            },
        ),
    ]