from django.db import models

# Create your models here.

class Tipo_Cliente(models.Model):
    tipCliNom = models.CharField(
        max_length=255
    )