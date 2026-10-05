/*
 * Assignment: Module 4 - JavaBean and JSP Data Display
 * Name: Nazir Knuckles
 * Date: October 5, 2026
 *
 * Purpose:
 * This JavaBean stores information about five movies and provides
 * getter and setter methods so a JSP page can retrieve and display
 * the movie data.
 *
 * Source/AI Documentation:
 * This code was created with assistance from OpenAI ChatGPT based
 * on the assignment requirements and the student's Module 2 data.
 */

import java.io.Serializable;

/**
 * MovieBean is a JavaBean that stores information about five movies.
 *
 * The class implements Serializable so that instances of the Bean
 * can be serialized by Java-based applications when necessary.
 */
public class MovieBean implements Serializable {

    /*
     * Required serialization identifier.
     */
    private static final long serialVersionUID = 1L;

    /*
     * Movie 1 properties.
     */
    private String movie1Title;
    private String movie1Genre;
    private String movie1Director;

    /*
     * Movie 2 properties.
     */
    private String movie2Title;
    private String movie2Genre;
    private String movie2Director;

    /*
     * Movie 3 properties.
     */
    private String movie3Title;
    private String movie3Genre;
    private String movie3Director;

    /*
     * Movie 4 properties.
     */
    private String movie4Title;
    private String movie4Genre;
    private String movie4Director;

    /*
     * Movie 5 properties.
     */
    private String movie5Title;
    private String movie5Genre;
    private String movie5Director;

    /**
     * No-argument constructor.
     *
     * Initializes the Bean with the five movie records from
     * the Module 2 Java Scriptlet - Data Display assignment.
     */
    public MovieBean() {

        movie1Title = "Batman v Superman: Dawn of Justice";
        movie1Genre = "Superhero / Action";
        movie1Director = "Zack Snyder";

        movie2Title = "Avengers: Infinity War";
        movie2Genre = "Superhero / Action";
        movie2Director = "Anthony Russo and Joe Russo";

        movie3Title = "Avengers: Endgame";
        movie3Genre = "Superhero / Action";
        movie3Director = "Anthony Russo and Joe Russo";

        movie4Title = "Madea's Family Reunion";
        movie4Genre = "Comedy / Drama";
        movie4Director = "Tyler Perry";

        movie5Title = "Ma Rainey's Black Bottom";
        movie5Genre = "Drama / Musical";
        movie5Director = "George C. Wolfe";
    }

    /*
     * Movie 1 getters and setters.
     */

    public String getMovie1Title() {
        return movie1Title;
    }

    public void setMovie1Title(String movie1Title) {
        this.movie1Title = movie1Title;
    }

    public String getMovie1Genre() {
        return movie1Genre;
    }

    public void setMovie1Genre(String movie1Genre) {
        this.movie1Genre = movie1Genre;
    }

    public String getMovie1Director() {
        return movie1Director;
    }

    public void setMovie1Director(String movie1Director) {
        this.movie1Director = movie1Director;
    }

    /*
     * Movie 2 getters and setters.
     */

    public String getMovie2Title() {
        return movie2Title;
    }

    public void setMovie2Title(String movie2Title) {
        this.movie2Title = movie2Title;
    }

    public String getMovie2Genre() {
        return movie2Genre;
    }

    public void setMovie2Genre(String movie2Genre) {
        this.movie2Genre = movie2Genre;
    }

    public String getMovie2Director() {
        return movie2Director;
    }

    public void setMovie2Director(String movie2Director) {
        this.movie2Director = movie2Director;
    }

    /*
     * Movie 3 getters and setters.
     */

    public String getMovie3Title() {
        return movie3Title;
    }

    public void setMovie3Title(String movie3Title) {
        this.movie3Title = movie3Title;
    }

    public String getMovie3Genre() {
        return movie3Genre;
    }

    public void setMovie3Genre(String movie3Genre) {
        this.movie3Genre = movie3Genre;
    }

    public String getMovie3Director() {
        return movie3Director;
    }

    public void setMovie3Director(String movie3Director) {
        this.movie3Director = movie3Director;
    }

    /*
     * Movie 4 getters and setters.
     */

    public String getMovie4Title() {
        return movie4Title;
    }

    public void setMovie4Title(String movie4Title) {
        this.movie4Title = movie4Title;
    }

    public String getMovie4Genre() {
        return movie4Genre;
    }

    public void setMovie4Genre(String movie4Genre) {
        this.movie4Genre = movie4Genre;
    }

    public String getMovie4Director() {
        return movie4Director;
    }

    public void setMovie4Director(String movie4Director) {
        this.movie4Director = movie4Director;
    }

    /*
     * Movie 5 getters and setters.
     */

    public String getMovie5Title() {
        return movie5Title;
    }

    public void setMovie5Title(String movie5Title) {
        this.movie5Title = movie5Title;
    }

    public String getMovie5Genre() {
        return movie5Genre;
    }

    public void setMovie5Genre(String movie5Genre) {
        this.movie5Genre = movie5Genre;
    }

    public String getMovie5Director() {
        return movie5Director;
    }

    public void setMovie5Director(String movie5Director) {
        this.movie5Director = movie5Director;
    }
}