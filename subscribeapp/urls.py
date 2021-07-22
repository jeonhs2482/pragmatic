from subscribeapp.views import SubscriptionView, SubscriptionListView
from django.urls import path

app_name = 'subscribeapp'

urlpatterns = [
    path('subscribe/', SubscriptionView.as_view(), name='subscribe'),
    path('list/', SubscriptionListView.as_view(), name='list'),
]