const audioPlayer = document.querySelector(".audio-player");

try {
    audio.addEventListener(
        "loadeddata",
        () => {
            audioPlayer.querySelector(".time .length").textContent = getTimeCodeFromNum(
                audio.duration
            );
            audio.volume = .75;
        },
        false
    );

    //click on timeline to skip around
    const timeline = audioPlayer.querySelector(".timeline");
    timeline.addEventListener("click", e => {
        const timelineWidth = window.getComputedStyle(timeline).width;
        const timeToSeek = e.offsetX / parseInt(timelineWidth) * audio.duration;
        audio.currentTime = timeToSeek;
    }, false);



    //check audio percentage and update time accordingly
    setInterval(() => {
        const progressBar = audioPlayer.querySelector(".progress");
        progressBar.style.width = audio.currentTime / audio.duration * 100 + "%";
        audioPlayer.querySelector(".time .current").textContent = getTimeCodeFromNum(
            audio.currentTime
        );
    }, 500);

    //toggle between playing and pausing on button click
    const playBtn = audioPlayer.querySelector(".controls .toggle-play .play-btn");
    const playBtnIcon = audioPlayer.querySelector(".controls .toggle-play .play-btn i");

    playBtn.addEventListener(
        "click",
        () => {
            if (audio.paused) {
                playBtnIcon.classList.remove("fa-play-circle");
                playBtnIcon.classList.add("fa-pause-circle");
                audio.play();
            } else {
                playBtnIcon.classList.remove("fa-pause-circle");
                playBtnIcon.classList.add("fa-play-circle");
                audio.pause();
            }
        },
        false
    );

    audio.addEventListener('ended', function () {
        playBtnIcon.classList.remove("fa-pause-circle");
        playBtnIcon.classList.add("fa-play-circle");
    });

    function getTimeCodeFromNum(num) {
        let seconds = parseInt(num);
        let minutes = parseInt(seconds / 60);
        seconds -= minutes * 60;
        const hours = parseInt(minutes / 60);
        minutes -= hours * 60;
        if (hours === 0) return `${minutes}:${String(seconds % 60).padStart(2, 0)}`;
        return `${String(hours).padStart(2, 0)}:${minutes}:${String(
            seconds % 60
        ).padStart(2, 0)}`;
    }
} catch (error) { }

