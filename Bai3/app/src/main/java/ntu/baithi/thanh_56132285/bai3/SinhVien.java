package ntu.baithi.thanh_56132285.bai3;

/**
 * Created by ADMIN on 15/06/2017.
 */

public class SinhVien {
    String ma;
    String ten;
    String gt;

    public SinhVien(String ma, String ten, String gt) {
        this.ma = ma;
        this.ten = ten;
        this.gt = gt;
    }

    public SinhVien() {
    }

    public String getMa() {
        return ma;
    }

    public void setMa(String ma) {
        this.ma = ma;
    }

    public String getTen() {
        return ten;
    }

    public void setTen(String ten) {
        this.ten = ten;
    }

    public String getGt() {
        return gt;
    }

    public void setGt(String gt) {
        this.gt = gt;
    }

    @Override
    public String toString() {
        return this.getMa()+" - "+this.getTen()+" - "+this.getGt();
    }
}