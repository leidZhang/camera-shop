import json
from .models import Cart
from .models import Product
from django.db.models import F
from django.http import HttpResponse
from django.views.decorators.csrf import csrf_exempt
from django.shortcuts import render, get_object_or_404, redirect

@csrf_exempt
def cart_items_by_user_id(request, u_id): 
    cart_items = Cart.objects.filter(user_id=u_id).values('id', 'user_id', 'prod_id', 'prod_num').annotate(
        model_name = F('prod_id__model_name'),
        retail_price = F('prod_id__retail_price'),
        image = F('prod_id__image')
    )
    
    return render(request, 'cart/cart_items.html', {'cart_items': cart_items})

@csrf_exempt
def delete_by_id(request, user_id, row_id): 
    row = get_object_or_404(Cart, id=row_id)
    row.delete()

    return redirect('cart_item_by_user_id', u_id=user_id)

@csrf_exempt
def update_by_id(request, uid, row_id, qty):
    cart_item = get_object_or_404(Cart, user_id=uid, id=row_id) 
    cart_item.prod_num = qty 
    cart_item.save()

    return redirect('cart_item_by_user_id', u_id=uid)

@csrf_exempt
def post_by_user_id(request): 
    data = json.loads(request.body)
    uid = data.get('user_id')
    pid = data.get('prod_id')
    qty = data.get('qty')
    product = get_object_or_404(Product, id=pid)

    try:
        item = Cart.objects.get(user_id=uid, prod_id=product)
        return HttpResponse('Product found!')
    except Cart.DoesNotExist:
        pass

    cart_item = Cart(user_id=uid, prod_id=product, prod_num=qty)
    print(cart_item)
    cart_item.save()

    return redirect('cart_item_by_user_id', u_id=uid)