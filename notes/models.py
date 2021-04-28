from django.db import models


class Note(models.Model):
    username = models.ForeignKey('auth.User', related_name='author', on_delete=models.CASCADE)
    name = models.CharField(max_length=50)
    theme = models.CharField(max_length=100)
    text = models.CharField(max_length=500)

    def __str__(self):
        return self.name
