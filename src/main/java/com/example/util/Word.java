package com.example.util;

public class Word {
    private int id;
    private String word;
    private String meaning;
    private int level;
    private String regdate;

    public Word(String word, String meaning, int level) {
        this.word = word;
        this.meaning = meaning;
        this.level = level;
    }

    public String getWord() {
        return word;
    }

    public void setWord(String word) {
        this.word = word;
    }
}
