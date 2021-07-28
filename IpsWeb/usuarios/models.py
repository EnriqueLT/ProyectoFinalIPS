# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models


class ForoComentario(models.Model):
    idcom = models.AutoField(db_column='IDCom', primary_key=True)  # Field name made lowercase.
    comusucod = models.ForeignKey('Usuario', models.DO_NOTHING, db_column='ComUsuCod')  # Field name made lowercase.
    comidpro = models.ForeignKey('Producto', models.DO_NOTHING, db_column='ComIdPro')  # Field name made lowercase.
    comdes = models.TextField(db_column='ComDes')  # Field name made lowercase.
    comtip = models.IntegerField(db_column='ComTip')  # Field name made lowercase.
    comvis = models.IntegerField(db_column='ComVis')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'foro_comentario'
        unique_together = (('idcom', 'comusucod', 'comidpro'),)


class Hospital(models.Model):
    hoscod = models.AutoField(db_column='HosCod', primary_key=True)  # Field name made lowercase.
    hosnom = models.CharField(db_column='HosNom', max_length=40)  # Field name made lowercase.
    hostipo = models.CharField(db_column='HosTipo', max_length=40)  # Field name made lowercase.
    hoscama = models.IntegerField(db_column='HosCama')  # Field name made lowercase.
    hosdispo = models.IntegerField(db_column='HosDispo')  # Field name made lowercase.
    hoszonid = models.CharField(db_column='HosZonId', max_length=8)  # Field name made lowercase.
    hosusucod = models.ForeignKey('Usuario', models.DO_NOTHING, db_column='HosUsuCod')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'hospital'
        unique_together = (('hoscod', 'hosusucod'),)


class Producto(models.Model):
    idpro = models.IntegerField(db_column='IdPro', primary_key=True)  # Field name made lowercase.
    pronom = models.CharField(db_column='ProNom', max_length=40)  # Field name made lowercase.
    prodis = models.IntegerField(db_column='ProDis')  # Field name made lowercase.
    procant = models.IntegerField(db_column='ProCant')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'producto'

class Proveedor(models.Model):
    provecod = models.AutoField(db_column='ProveCod', primary_key=True)  # Field name made lowercase.
    provenom = models.CharField(db_column='ProveNom', max_length=40)  # Field name made lowercase.
    proveidpro = models.ForeignKey(Producto, models.DO_NOTHING, db_column='ProveIdPro')  # Field name made lowercase.
    proveusucod = models.ForeignKey('Usuario', models.DO_NOTHING, db_column='ProveUsuCod')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'proveedor'
        unique_together = (('provecod', 'proveidpro', 'proveusucod'),)


class Usuario(models.Model):
    usucod = models.AutoField(db_column='UsuCod', primary_key=True)  # Field name made lowercase.
    usunom = models.CharField(db_column='UsuNom', max_length=40)  # Field name made lowercase.
    usuape = models.CharField(db_column='UsuApe', max_length=40)  # Field name made lowercase.
    usuzon = models.CharField(db_column='UsuZon', max_length=8)  # Field name made lowercase.
    usutel = models.IntegerField(db_column='UsuTel')  # Field name made lowercase.
    usudir = models.CharField(db_column='UsuDir', max_length=40)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'usuario'
        unique_together = (('usucod'),)

class Departamento(models.Model):
    depcod = models.IntegerField(db_column='DepCod', primary_key=True)
    depnom = models.CharField(db_column='DepNom', max_length=40)
    
    def __str__(self):
        return self.depnom+""
    

    class Meta:
        db_table = 'departamento'
        unique_together = (('depcod'),)

class Provincia(models.Model):
    procod = models.IntegerField(db_column='ProCod', primary_key=True)
    pronom = models.CharField(db_column='ProNom', max_length=40)
    prodepcod = models.ForeignKey('Departamento',models.DO_NOTHING, db_column='ProDepCod')

    def __str__(self):
        return self.pronom+""
    
    class Meta:
        managed = False
        db_table = 'provincia'
        unique_together = (('procod','prodepcod'),)

class Distrito(models.Model):
    discod = models.IntegerField(db_column='DisCod', primary_key=True)
    disnom = models.CharField(db_column='DisNom', max_length=40)
    disprocod = models.ForeignKey('Provincia',models.DO_NOTHING, db_column='DisProCod')

    class Meta:
        managed = False
        db_table = 'distrito'
        unique_together = (('discod','disprocod'),)

