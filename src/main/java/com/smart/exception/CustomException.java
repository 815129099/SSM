package com.smart.exception;

public class CustomException extends Exception {

    public String message;

    public CustomException(String message){
        super(message);
        this.message = message;
    }


    @Override
    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
}
