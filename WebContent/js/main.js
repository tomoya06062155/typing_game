
 'use strict';

  {
  function setWord(){
    word = words.splice(Math.floor(Math.random() * words.length), 1)[0];
    target.textContent = word;
    loc = 0;
  }


  var words1 = document.getElementById('typing_word').value;
  var kugiri = ",";
  var words = words1.split(kugiri);


  console.log(words);

//    const words = [
//      'aa',
//    ];

    let word;
    let loc = 0;
    let startTime;
    let isPlaying = false;
    const target = document.getElementById('target');

    document.addEventListener('click', () =>{
        if(isPlaying === true){
          return;
        }

      isPlaying = true;
      startTime = Date.now();
      setWord();
    });

    document.addEventListener('keydown', e => {
      if (e.key !== word[loc]){
        return;
      }
        loc++;
        target.textContent = '_'.repeat(loc) + word.substring(loc);

        if (loc === word.length){
          if(words.length === 0){
            window.elapsedTime = ((Date.now() - startTime) / 1000).toFixed(2);
            const result = document.getElementById('result');
            const button = document.querySelector('.point');
            button.classList.add('show');

            return;
          }
          setWord();
        }
    });
  }
