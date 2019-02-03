var timeBegan = null
    , timeStopped = null
    , stoppedDuration = 0
    , started = null;

function start() {
    for (i = 1; i <= 16; i++) {
        document.getElementById(i).disabled = false
    }
    if (timeBegan === null) {
        timeBegan = new Date();
    }

    if (timeStopped !== null) {
        stoppedDuration += (new Date() - timeStopped);
    }

    started = setInterval(clockRunning, 10);
}

function stop() {
    timeStopped = new Date();
    clearInterval(started);

    for (i = 1; i <= 16; i++) {
        document.getElementById(i).disabled = true
    }
    document.getElementById("resumebtn").disabled = false;
}

function reset() {
    clearInterval(started);
    stoppedDuration = 0;
    timeBegan = null;
    timeStopped = null;
    document.getElementById("display-area").innerHTML = "00:00:00.000";
}

function clockRunning() {
    var currentTime = new Date()
        , timeElapsed = new Date(currentTime - timeBegan - stoppedDuration)
        , hour = timeElapsed.getUTCHours()
        , min = timeElapsed.getUTCMinutes()
        , sec = timeElapsed.getUTCSeconds()
        , ms = timeElapsed.getUTCMilliseconds();

    document.getElementById("display-area").innerHTML =
        (hour > 9 ? hour : "0" + hour) + ":" +
        (min > 9 ? min : "0" + min) + ":" +
        (sec > 9 ? sec : "0" + sec) + "." +
        (ms > 99 ? ms : ms > 9 ? "0" + ms : "00" + ms);
};


function startGame() {


    var nameGame = document.getElementById("nameGame");


    if (nameGame !== null && nameGame.value === "") {
        alert("Please, add the player's name");
    } else {


        prepareGame();
        start();
        document.getElementById("startbtn").disabled = true;
    }
};


function prepareGame() {
    document.getElementById("resumebtn").disabled = true;
    document.getElementById("nameGame").disabled = true;
    document.getElementById("stopbtn").disabled = false;
    for (var a = [], i = 0; i <= 16; ++i) a[i] = i;

    function shuffle(array) {
        var tmp, current, top = array.length;
        if (top)
            while (--top) {
                current = Math.floor(Math.random() * (top + 1));
                tmp = array[current];
                array[current] = array[top];
                array[top] = tmp;
            }
        return array;
    }

    a = shuffle(a);
    var index = a.indexOf(0);
    if (index > -1) {
        a.splice(index, 1);
    }
    for (i = 1; i <= 16; i++) {
        document.getElementById(i).innerHTML = a[i - 1];
        if (a[i - 1] == 16) {
            document.getElementById(i).style.display = "none";
            document.getElementById(i).name = "hid";
        }
    }
}

var clicks = 0;

function myFunction(x) {
    var hidden = document.getElementsByName("hid")[0];
    var text = x.innerHTML;
    var x1 = x.getAttribute("col");
    var y1 = x.getAttribute("row");
    var x2 = hidden.getAttribute("col");
    var y2 = hidden.getAttribute("row");
    var distance = Math.sqrt(Math.pow(x2 - x1, 2) + Math.pow(y2 - y1, 2))
    if (distance == 1) {
        x.style.display = "none";
        x.name = "hid";
        x.innerHTML = 16;
        hidden.style.display = 'block';
        hidden.innerHTML = text;
        hidden.name = "other";
        clicks += 1;
        document.getElementById("clicks").innerHTML = clicks;
    }
    var check = true;
    for (i = 1; i <= 16; i++) {

        check = check && (document.getElementById(i).innerHTML == i);
    }


    if (check) {
        document.getElementById("results").style.display = 'block';
        document.getElementById("gameUser").value = document.getElementById("nameGame").value;
        document.getElementById("time").value = document.getElementById("display-area").innerHTML;
        document.getElementById("movements").value = document.getElementById("clicks").innerHTML;
        stop();
        document.getElementById("resumebtn").disabled = true;
        document.getElementById("stopbtn").disabled = true;


    }
}
