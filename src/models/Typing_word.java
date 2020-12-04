package models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;



    @Table(name = "typing_word")
    @NamedQueries({
        @NamedQuery(
                name = "getAlltyping_word",
                query = "SELECT w FROM Typing_word AS w ORDER BY w.word"
                )
    })
    @Entity
    public class Typing_word {
        @Id
        @Column(name = "id")
        @GeneratedValue(strategy = GenerationType.IDENTITY)
        private Integer id;

        @Column(name = "word", nullable = false)
        private String word;



        public String getWord(){
            return word;
        }
        public void setWord(String word){
            this.word = word;
        }

}
