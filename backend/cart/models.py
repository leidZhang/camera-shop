from django.db import models
from product.models import Product

class Cart(models.Model): 
    class Meta: 
        db_table = 'cart'
    
    id = models.AutoField(primary_key=True)
    user_id = models.DecimalField(max_digits=10, decimal_places=0)
    prod_id = models.ForeignKey(Product, on_delete=models.CASCADE, db_column='prod_id')
    prod_num = models.DecimalField(max_digits=10, decimal_places=0)

    
