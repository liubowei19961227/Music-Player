import modify
import platform
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
        modify.modify_music(textform.music.data)
    	##modified_data = modify_music_file(textform.music.data)
    	if platform.platform() == 'Darwin-16.3.0-x86_64-i386-64bit':
        	subprocess.Popen(["./helloworldmac", textform.name.data, textform.music.data])
        else :
        	subprocess.Popen(["./helloworld.exe", textform.name.data, textform.music.data])
        return redirect('/')
    return render_template('upload.html', form=textform)


@app.route("/read_input", methods=['POST'])
def login():
    return request.form['username']


def modify_music_file(this_data):
	new_data = ''
	i = 0
	for line in this_data.splitlines():
		for word in line.split():
			if word[0] is '%':
				break
				## go to next line
			elif lookupChar[word[0]]:
				new_data[i] = lookupChar[word[0]]
				i+=1
				
			else:
				print "Something wrong!"


if __name__ == "__main__":
    app.run(debug=True)