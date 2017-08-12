import subprocess
from flask import Flask, flash
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
    return render_template('try1.html')


@app.route("/play_music",methods=['POST'])
def play_music():
    return render_template('upload.html')


@app.route('/uploader', methods = ['GET', 'POST'])
def upload_file():
    textform = TextForm()
    if textform.is_submitted():
        subprocess.Popen(["./helloworld", textform.name.data, textform.music.data])
        return render_template('/try1.html')
    return render_template('upload.html', form=textform)
    """if request.method == 'POST':
        textform = TextForm()
        if textform.validate() == False:
            flash('All fields are required.')
            return render_template('upload.html', form = textform)
        else:
            return [textform.name, textform.music, render_template('success.html')]
    elif request.method == 'GET':
         return render_template('upload.html', textform = TextForm())
         """


"""
    render_template('contact.html', form = textform)
    if request.method == 'POST':
        f = request.files['file']
        f.save(secure_filename(f.filename))
    return "done"""


@app.route("/download_music",methods=['POST'])
def dowload_music():
    return "download music"


@app.route("/read_input", methods=['POST'])
def login():
    return request.form['username']


if __name__ == "__main__":
    app.run(debug=True)