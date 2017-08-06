from flask import Flask
from flask import render_template
from flask import request


app = Flask(__name__,static_url_path = '/static')






@app.route("/")
def index():
  return render_template('try1.html')




@app.route("/play_music",methods=['POST'])
def play_music():
	return "play music"


@app.route("/download_music",methods=['POST'])
def dowload_music():
	return "download music"


@app.route("/read_input", methods=['POST'])
def login():
    return request.form['username']

if __name__ == "__main__":
    app.run(debug=True)