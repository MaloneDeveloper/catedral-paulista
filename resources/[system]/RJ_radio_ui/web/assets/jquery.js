window.addEventListener("message", (event) => {
    const data = event.data
    switch(data.action) {
        case "update": {
            if(data.data.talking) {
                const html = `<div class="display" data-id="${data.data.informations.name}">
                                <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 384 384" id="Walkie-Talkie--Streamline-Font-Awesome"><desc>Walkie Talkie Streamline Icon: https://streamlinehq.com</desc><!--! Font Awesome Free 6.5.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free (Icons: CC BY 4.0, Fonts: SIL OFL 1.1, Code: MIT License) Copyright 2024 Fonticons, Inc.--><path d="M133.1632 21.48c0 -9.7755 -7.8645 -17.64 -17.64 -17.64s-17.64 7.8645 -17.64 17.64V74.4h-11.76c-19.4775 0 -35.28 15.8025 -35.28 35.28v114.7335c0 9.3345 3.7485 18.3015 10.3635 24.9165l2.8665 2.8665c6.615 6.615 10.3635 15.582 10.3635 24.9165v67.767c0 19.4775 15.8025 35.28 35.2801 35.28h164.5664c19.4775 0 35.2801 -15.8025 35.2801 -35.28v-67.6935c0 -9.3345 3.7484 -18.3015 10.3634 -24.9165l2.8665 -2.8665c6.615 -6.615 10.3636 -15.582 10.3636 -24.9165V109.68c0 -19.4775 -15.8025 -35.28 -35.2801 -35.28h-11.8335c0 -13.0095 -10.5105 -23.52 -23.52 -23.52s-23.52 10.5105 -23.52 23.52h-23.52c0 -13.0095 -10.5105 -23.52 -23.52 -23.52s-23.52 10.5105 -23.52 23.52h-35.28V21.48Zm0 99.96h117.6c6.468 0 11.76 5.292 11.76 11.76s-5.292 11.76 -11.76 11.76h-117.6c-6.468 0 -11.76 -5.292 -11.76 -11.76s5.292 -11.76 11.76 -11.76Zm0 47.04h117.6c6.468 0 11.76 5.292 11.76 11.76s-5.292 11.76 -11.76 11.76h-117.6c-6.468 0 -11.76 -5.292 -11.76 -11.76s5.292 -11.76 11.76 -11.76Zm0 47.04h117.6c6.468 0 11.76 5.292 11.76 11.76s-5.292 11.76 -11.76 11.76h-117.6c-6.468 0 -11.76 -5.292 -11.76 -11.76s5.292 -11.76 11.76 -11.76Z" fill="#ff0000" stroke-width="1"></path></svg>
                                <span class="bold">ID: </span>
                                <span class="normal">${data.data.informations.name}</span>
                                <div class="ball"></div>
                            </div>`
                
                $("#container").append(html)
            } else {
                $(`[data-id="${data.data.informations.name}"]`).remove()
            }
        }
    }
})