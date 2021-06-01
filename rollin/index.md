---
layout: default
title: Karma.net Important Updates
author: jcolson
date: '2021-06-01'
---
## You wouldn't get this from any other guy!

<div id="cookie-consent" class="pure-u-1">
    <div class="cookie-consent-background"></div>
    <div class="cookie-consent-content">
        <p class="text-white">
            Like everyone on the internet, we use cookies to improve your experience. If you're ok with that please click accept.
        </p>
        <p class="brand-tagline text-white">
            (You can still view the page if you decline, but your experience may be impacted.)
        </p>
        <p>
            <button class="pure-button button-large">Accept</button>
            <button class="pure-button button-large decline-button">Decline</button>
        </p>
    </div>
</div>
<div class="vid-div">
    <div id="vid-blocker"></div>
    <iframe id="video-frame" src="https://www.youtube-nocookie.com/embed/dQw4w9WgXcQ?&enablejsapi=1&autoplay=1&mute=1" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>
<script type="text/javascript">
    var player;
    var frame = document.querySelector('#video-frame');
    var cookieConsent = document.querySelector('#cookie-consent');
    var firstScriptTag = document.querySelector('script');
    var tag = document.createElement('script');
    tag.id = 'iframe-demo';
    tag.src = 'https://www.youtube.com/iframe_api';
    frame.setAttribute('height', Math.floor(frame.clientWidth * .6));

    cookieConsent.addEventListener('click', () => {
        player.seekTo(0);
        player.unMute();
        cookieConsent.classList.add('hidden');
    });

    function onYouTubeIframeAPIReady() {
        player = new YT.Player('video-frame');
    }

    firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);
</script>
