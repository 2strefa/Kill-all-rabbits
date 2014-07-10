# -*- coding: utf-8 -*-

from django import forms
from django.utils.translation import ugettext_lazy as _
from django.contrib.auth.models import User
from models import PointsKlient

class RejestracjaUsera(forms.ModelForm):

    login = forms.CharField(max_length=264, required=True, error_messages={'required': 'Musisz podać Swój indywidualny login.'},widget=forms.TextInput(attrs={'class':'input_klik'}))
    email = forms.EmailField(required=True, widget=forms.TextInput(attrs={'class':'input_klik'}))
    points = forms.IntegerField(required=True, widget=forms.TextInput(attrs={'class':'input_klik'}))

    class Meta:
        model = PointsKlient
        fields = ['login','email','points','level',]

    def save(self, profile_callback=None):
        new_user = User.objects.create(user=self.cleaned_data['login'], email=self.cleaned_data['email'], profile_callback=profile_callback)
        nowy_profil = PointsKlient(user=new_user, points=self.cleaned_data['points'])

        nowy_profil.save()

        return new_user