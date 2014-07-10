#-*- encoding: utf-8 -*-
from django.db import models
from django.contrib.auth.models import User
from django.utils.translation import ugettext_lazy as _

class PointsKlient(models.Model):
    user = models.ForeignKey(User, verbose_name=_('user'), null=True)
    points = models.IntegerField(verbose_name=_('Points'))
    level = models.IntegerField(verbose_name=_('Level'))
