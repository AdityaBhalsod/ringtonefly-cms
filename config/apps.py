from django.apps import AppConfig


class MainAppsConfig(AppConfig):
    name = "config"
    verbose_name = "Database"

    def ready(self):
        import config.signals 