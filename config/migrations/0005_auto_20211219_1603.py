# Generated by Django 3.1.14 on 2021-12-19 10:33

import django.core.validators
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('config', '0004_auto_20211218_1348'),
    ]

    operations = [
        migrations.AlterField(
            model_name='siteconfig',
            name='favicon',
            field=models.FileField(blank=True, null=True, upload_to='favicon', validators=[django.core.validators.FileExtensionValidator(allowed_extensions=['ico', 'icos', 'png'])], verbose_name='Favicon icon'),
        ),
    ]
