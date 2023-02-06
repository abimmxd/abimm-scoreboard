
$(document).ready(function(){
    let PlayerEntry = document.getElementById("PlayerEntry");
    let PlayersBar = document.getElementById("PlayerBarChild");
    let PlayersCount = document.getElementById("PlayerCount");
    let PlaytimeData = document.getElementById("PlaytimeData");
    
    window.addEventListener("message", function(Event) {
        let Data = Event.data;
        
        if (Data.Action == "Show") {
            if (Data.Toggle == true) {
                $("#Main").fadeIn(200)
            }
            else {
                $("#Main").fadeOut(300)
            }
        }

        else if (Data.Action == "Update") {
            let PlayerCount = 0
            PlayerEntry.innerHTML = `
            <tr>
                <th><span id="Title">ID</span></th>
                <th><span id="Title">STEAM</span></th>
                <th><span id="Title">PING</span></th>
            </tr><br>`

            for (var Index = 0, Max = Data.Players.length; Index < Max; Index++) {
                PlayerCount += 1
            
                PlayerEntry.innerHTML += `
                <tr>
                    <th>${Data.Players[Index].Id}</th>
                    <th>${Data.Players[Index].Steam}</th>
                    <th>(<span id="Ping">${Data.Players[Index].Ping} ms</span>)</th>
                </tr>`
            }

            PlayersCount.innerHTML = (`${PlayerCount} / 32`)
            let PlayersPrecentage = (PlayerCount / 32) * 100
            PlayersBar.setAttribute("style", `width: ${PlayersPrecentage}%`);
        }

        if (Data.Action == "Playtime") {
            PlaytimeData.innerHTML = (`<span id="Title">Playtime:</span> ${new Date(Data.Playtime * 1000).toISOString().substr(11, 8)}`)
        }
    })
});