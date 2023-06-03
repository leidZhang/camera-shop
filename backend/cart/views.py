from .models import Cart
from django.db.models import F
from django.views.decorators.csrf import csrf_exempt
from django.shortcuts import render, get_object_or_404, redirect

@csrf_exempt
def cart_items_by_user_id(request, uid): 
    cart_items = Cart.objects.filter(user_id=uid).values('id', 'user_id', 'prod_id', 'prod_num').annotate(
        model_name = F('prod_id__model_name'),
        retail_price = F('prod_id__retail_price'),
        image = F('prod_id__image')
    )
    
    return render(request, 'cart/cart_items.html', {'cart_items': cart_items})

@csrf_exempt
def delete_by_id(request, user_id, row_id): 
    row = get_object_or_404(Cart, id=row_id)
    row.delete()
    print("row deleted")
    return redirect('cart_item_by_user_id', uid=user_id)
    