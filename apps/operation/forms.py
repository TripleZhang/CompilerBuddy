from django import forms


class ResetForm(forms.Form):
    file_name = forms.CharField(required=True)
    course_id = forms.CharField(required=True)

class SaveForm(forms.Form):
    file_name = forms.CharField(required=True)
    file_content = forms.Textarea()
    course_id = forms.CharField(required=True)
