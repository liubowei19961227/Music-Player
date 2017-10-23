require('nw.gui').Window.get().showDevTools()

$( document ).ready(function() {
    //create piano with 3 octaves, starting at C4 (lowest key)
    //shows labels and octave shift buttons
    var keyboardHTML = htmlForKeyboardWithOctaves(4, octaves.C3, true, false, true, false)
    //render the keyboard in the div
    $("#keyboardContainer").html(keyboardHTML)
    //when keys are pressed updatePreview() is called
    bindKeysToFunction(updatePreviewWithNote)
    //set the default clef to G4
    setSelectedClef(clefs.G4)

    $("#backspaceButton").click(deleteLast)
    $("#saveButton").click(saveFile)
    $("#clearButton").click(deleteAll)
    $("#transferButton").click(transferFile)
})

//this stores all keyboard input
var plaineEasieCodes = []
var selectedClef = clefs.G4

//this is called whenever a piano key is pressed
function updatePreviewWithNote(sender, paeNote) {
    console.log("key pressed is " + paeNote)
    plaineEasieCodes.push(paeNote)
    updateNotesSVG()
}

//delete last input
function deleteLast() {
    plaineEasieCodes.pop()
    updateNotesSVG()
}

//delete last input
function deleteAll() {
    plaineEasieCodes = []
    updateNotesSVG()
}

//delete last input
function saveFile() {
    var text = document.getElementById("articulationInput").value + "\n" + "bpm " + document.getElementById("bpmInput").value + "\n"
    for (var x = 0; x < plaineEasieCodes.length; x++) {
        var paeNote = plaineEasieCodes[x]
        var i = 0
        if (paeNote.charAt(1) == '-') { //rest
            text += "rest"
        } else {
            //note letter
            text += paeNote.charAt(paeNote.length-1).toLowerCase()
            //octave
            if (paeNote.startsWith("'''")) {
                text += "6"
                i = 3
            } else if (paeNote.startsWith("''")) {
                text += "5"
                i = 2
            } else if (paeNote.startsWith("'")) {
                text += "4"
                i = 1
            } else if (paeNote.startsWith(",")) {
                text += "3"
                i = 1
            }
            //flat or sharp
            if (paeNote.charAt(i) == 'b') {
                text += "b"
                i++
            } else if (paeNote.charAt(i) == 'x') {
                text += "#"
                i++
            }
        }
        text += " "
        //note length
        if (paeNote.charAt(i) == '6') {
            if (paeNote.charAt(i+1) == '.') {
                text += "t"
            } else {
                text += "sq"
            }
        } else if (paeNote.charAt(i) == '8') {
            if (paeNote.charAt(i+1) == '.') {
                text += "q"
            } else {
                text += "dq"
            }
        } else if (paeNote.charAt(i) == '4') {
            if (paeNote.charAt(i+1) == '.') {
                text += "dc"
            } else {
                text += "c"
            }
        } else if (paeNote.charAt(i) == '2') {
            if (paeNote.charAt(i+1) == '.') {
                text += "dm"
            } else {
                text += "m"
            }
        } else if (paeNote.charAt(i) == '6') {
            if (paeNote.charAt(i+1) == '.') {
                text += "t"
            } else {
                text += "sq"
            }
        } else if (paeNote.charAt(i) == '1') {
            text += "b"
        } else if (paeNote.charAt(i) == '9') {
            text += "sb"
        }
        text += "\n"
    }
    var blob = new Blob([text], {type: "text/plain;charset=ascii"});
    saveAs(blob, "My Song.txt");
}

function transferFile() {
    var chooser = document.querySelector('#fileDialog')
    chooser.addEventListener("change", function(evt) {
      exeLauncher(this.value)
    }, false)
    chooser.click();  
}

function exeLauncher(musicFileLocation) {
    var sys = require('sys')
    var exec = require('child_process').exec    
    exec(getCommandLine() + ' launcher.exe ' + '"' + musicFileLocation + '"')
}


function getCommandLine() {
    switch (process.platform) { 
        case 'darwin' : return 'open';
        case 'win32' : return 'start';
        case 'win64' : return 'start';
        default : return 'xdg-open';
    }
}

function updateNotesSVG() {
    //render the notes to an SVG using the Verovio tookit
    //width of the svg is 800px and note scaling 50%
    var notesSVG = svgNotesForPlaineEasieCode(plaineEasieCodes.join(""), selectedClef, (2 + plaineEasieCodes.length) * 30, 50)
    //insert thes SVG code in our div
    var svgContainerDiv = $('#svgNotesContainer')
    svgContainerDiv.html(notesSVG)
    document.getElementById("svgNotesContainer").scrollLeft=document.getElementById("svgNotesContainer").scrollWidth
}