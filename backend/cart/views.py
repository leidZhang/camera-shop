from django.shortcuts import render
from django.db.models import F
from .models import Cart

def cart_items_by_id(request, id): 
    cart_items = Cart.objects.filter(user_id=id).values('id', 'user_id', 'prod_id', 'prod_num').annotate(
        model_name = F('prod_id__model_name'),
        retail_price = F('prod_id__retail_price'),
        image = F('prod_id__image')
    )
    print(cart_items)
    
    return render(request, 'cart/cart_items.html', {'cart_items': cart_items})