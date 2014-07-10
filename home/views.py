# -*- coding: utf-8 -*-
from django.shortcuts import  render_to_response
from django.template import RequestContext
from django.utils.translation import ugettext_lazy as _

def index(request):
    return render_to_response('home/index.jade',context_instance=RequestContext(request))