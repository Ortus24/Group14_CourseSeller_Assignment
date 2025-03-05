package model;

public class Wallet {
   private int walletId;
   private String userName;
   private double balance;

    public Wallet() {
    }

    public Wallet(int walletId, String userName, double balance) {
        this.walletId = walletId;
        this.userName = userName;
        this.balance = balance;
    }

    public int getWalletId() {
        return walletId;
    }

    public void setWalletId(int walletId) {
        this.walletId = walletId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public double getBalance() {
        return balance;
    }

    public void setBalance(double balance) {
        this.balance = balance;
    }
   
   
    
}