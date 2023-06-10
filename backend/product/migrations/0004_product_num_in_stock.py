# Generated by Django 4.2.1 on 2023-06-10 01:24

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('product', '0003_product_description'),
    ]

    operations = [
        migrations.AddField(
            model_name='product',
            name='num_in_stock',
            field=models.DecimalField(decimal_places=2, default=0, max_digits=10),
            preserve_default=False,
        ),
    ]
