import subprocess
from flask import Flask, flash
from flask import redirect
from flask import render_template
from flask import request
from flask_wtf import FlaskForm
from wtforms import TextAreaField
from werkzeug import secure_filename


class TextForm(FlaskForm):
    name = TextAreaField("Music Title")
    music = TextAreaField("Music file input")


app = Flask(__name__,static_url_path = '/static')
app.secret_key = 'development key'


@app.route("/")
def index():
    return render_template('home_page.html')


@app.route('/uploader', methods = ['GET', 'POST'])
def upload_file():
    textform = TextForm()
    if textform.is_submitted():
        subprocess.Popen(["./helloworld", textform.name.data, textform.music.data])
        return redirect('/')
    return render_template('upload.html', form=textform)


@app.route("/read_input", methods=['POST'])
def login():
    return request.form['username']


if __name__ == "__main__":
    app.run(debug=True)