# Generated by Django 2.1.5 on 2020-08-09 16:56

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('citasMedicas', '0004_auto_20200802_1220'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='doctor',
            options={'ordering': ['id'], 'verbose_name': 'Doctor', 'verbose_name_plural': 'Doctores'},
        ),
        migrations.AlterModelOptions(
            name='paciente',
            options={'ordering': ['id'], 'verbose_name': 'Paciente', 'verbose_name_plural': 'Pacientes'},
        ),
    ]