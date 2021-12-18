# Generated by Django 3.1.5 on 2021-07-12 04:20

import ckeditor_uploader.fields
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('cms', '0022_auto_20180620_1551'),
        ('config', '0002_delete_pageids'),
    ]

    operations = [
        migrations.CreateModel(
            name='ContainerPluginV2',
            fields=[
                ('cmsplugin_ptr', models.OneToOneField(auto_created=True, on_delete=django.db.models.deletion.CASCADE, parent_link=True, primary_key=True, related_name='config_containerpluginv2', serialize=False, to='cms.cmsplugin')),
                ('title', models.CharField(blank=True, help_text='Title of container.', max_length=255, null=True, verbose_name='Title')),
                ('content', ckeditor_uploader.fields.RichTextUploadingField(default='', help_text='Content of container', verbose_name='Content')),
            ],
            options={
                'abstract': False,
            },
            bases=('cms.cmsplugin',),
        ),
        migrations.CreateModel(
            name='LimitationObject',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('created_at', models.DateTimeField(auto_now_add=True)),
                ('updated_at', models.DateTimeField(auto_now=True)),
                ('popular_container', models.PositiveIntegerField(default=12)),
                ('new_container', models.PositiveIntegerField(default=12)),
                ('top_50_container', models.PositiveIntegerField(default=12)),
                ('category_page', models.PositiveIntegerField(default=12)),
                ('individual_ringtone_page', models.PositiveIntegerField(default=12)),
            ],
            options={
                'abstract': False,
            },
        ),
        migrations.AlterField(
            model_name='containerplugin',
            name='title',
            field=models.CharField(blank=True, help_text='Title of container.', max_length=255, null=True, verbose_name='Title'),
        ),
    ]
