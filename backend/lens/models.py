from django.db import models

# Create your models here.
class Lens(models.Model): 
    class Meta:
        db_table = 'lens'
        
    id = models.AutoField(primary_key=True)
    model_name = models.CharField(max_length=255)
    model_number = models.CharField(max_length=255)
    manufacturer = models.CharField(max_length=255)
    retail_price = models.FloatField()
    num_in_stock = models.DecimalField(max_digits=10, decimal_places=2)
    img = models.URLField()

    def str(self): 
        return f"{self.model_name} ({self.model_number})"