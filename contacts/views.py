from django.shortcuts import render, redirect
from django.contrib import messages
from . models import Contact
from django.core.mail import send_mail

def contact(request):
    if request.method == 'POST':
        listing_id = request.POST['listing_id']
        listing = request.POST['listing']
        name = request.POST['name']
        email = request.POST['email']
        phone = request.POST['phone']
        message = request.POST['message']
        user_id = request.POST['user_id']
        realtor_email = request.POST['realtor_email']

        # Check if user has made an inguiry already
        if request.user.is_authenticated:
            user_id = request.user.id
            has_contacted = Contact.objects.all().filter(listing_id=listing_id, user_id=user_id)
            if has_contacted:
                messages.error(request, 'Ai mai facut o solicitare pentru aceasta locuinta')
                return redirect ('/listings/'+listing_id)


        contact = Contact(listing = listing, listing_id = listing_id, name= name, email= email, phone= phone, message= message,
        user_id= user_id)
        contact.save()

        send_mail(
            'Solicitare vizionare locuinta',
            'S-a depus o solicitare pentru a vedea locuinta ' + listing + '. Intra in panoul de comanda pentru mai multe detalii',
            'male.donkey.bimbo@gmail.com',
            [realtor_email],
            fail_silently= False

        )
        



        messages.success(request, 'Multumim pentru solicitare! Un consultant AS te va contacta in cel mai scurt timp')
        return redirect('/listings/' + listing_id)


