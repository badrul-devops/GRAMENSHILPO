from django.db import models

# Create your models here.
class catagoery(models.Model):
    name=models.CharField(max_length=150)

class sub_catagoery(models.Model):
    name=models.CharField(max_length=150)
    catagoery=models.ForeignKey(catagoery,on_delete=models.CASCADE)
     