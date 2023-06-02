from django.db import models

class Product(models.Model): 
    class Meta: 
        db_table = 'product'

    id = models.AutoField(primary_key=True)
    model_name = models.CharField(max_length=255)
    retail_price = models.FloatField()
    image = models.URLField()
