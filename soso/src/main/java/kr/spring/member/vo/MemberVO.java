package kr.spring.member.vo;

import java.io.IOException;
import java.sql.Date;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.springframework.web.multipart.MultipartFile;

public class MemberVO {
	private int mem_num;
	@Pattern(regexp="^[A-Za-z0-9]{4,12}$")
	private String mem_id;
	private int mem_auth;
	private String mem_nick;
	private String mem_auto;
	private String mem_au_id;
	
	@NotEmpty
	private String mem_name;
	@Pattern(regexp="^[A-Za-z0-9]{4,12}$")
	private String mem_pw;
	@NotEmpty
	private String mem_phone;
	@Email
	@NotEmpty
	private String mem_email;
	@Size(min=5,max=5)
	private String mem_zipcode;
	@NotEmpty
	private String mem_address1;
	@NotEmpty
	private String mem_address2;
	private byte[] mem_photo;
	private String mem_photo_name;
	private Date mem_reg;
	private Date mem_modify;
	private int mem_score;
	
	private String cal_date;
	private String cal_content;
	private int stc_num;
	
	//비밀번호 변경시 현재 비밀번호를 저장하는 용도로 사용
	@Pattern(regexp="^[A-Za-z0-9]{4,12}$")
	private String now_passwd;
		
	//비밀번호 일치여부
	public boolean isCheckedPassword(String userPasswd) {
		if(mem_auth > 1 && mem_pw.equals(userPasswd)) {
			return true;
		}
		return false;
	}
	
	//====이미지 BLOB 처리====//
	public void setUpload(MultipartFile upload) throws IOException{
		//MultipartFile -> byte[]
		setMem_photo(upload.getBytes());
		//파일 이름
		setMem_photo_name(upload.getOriginalFilename());
	}
	
	public int getMem_num() {
		return mem_num;
	}
	public void setMem_num(int mem_num) {
		this.mem_num = mem_num;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public int getMem_auth() {
		return mem_auth;
	}
	public void setMem_auth(int mem_auth) {
		this.mem_auth = mem_auth;
	}
	public String getMem_nick() {
		return mem_nick;
	}
	public void setMem_nick(String mem_nick) {
		this.mem_nick = mem_nick;
	}
	public String getMem_auto() {
		return mem_auto;
	}
	public void setMem_auto(String mem_auto) {
		this.mem_auto = mem_auto;
	}
	public String getMem_au_id() {
		return mem_au_id;
	}
	public void setMem_au_id(String mem_au_id) {
		this.mem_au_id = mem_au_id;
	}
	public String getMem_name() {
		return mem_name;
	}
	public void setMem_name(String mem_name) {
		this.mem_name = mem_name;
	}
	public String getMem_pw() {
		return mem_pw;
	}
	public void setMem_pw(String mem_pw) {
		this.mem_pw = mem_pw;
	}
	public String getMem_phone() {
		return mem_phone;
	}
	public void setMem_phone(String mem_phone) {
		this.mem_phone = mem_phone;
	}
	public String getMem_email() {
		return mem_email;
	}
	public void setMem_email(String mem_email) {
		this.mem_email = mem_email;
	}
	public String getMem_zipcode() {
		return mem_zipcode;
	}
	public void setMem_zipcode(String mem_zipcode) {
		this.mem_zipcode = mem_zipcode;
	}
	public String getMem_address1() {
		return mem_address1;
	}
	public void setMem_address1(String mem_address1) {
		this.mem_address1 = mem_address1;
	}
	public String getMem_address2() {
		return mem_address2;
	}
	public void setMem_address2(String mem_address2) {
		this.mem_address2 = mem_address2;
	}
	public byte[] getMem_photo() {
		return mem_photo;
	}
	public void setMem_photo(byte[] mem_photo) {
		this.mem_photo = mem_photo;
	}
	public String getMem_photo_name() {
		return mem_photo_name;
	}
	public void setMem_photo_name(String mem_photo_name) {
		this.mem_photo_name = mem_photo_name;
	}
	public Date getMem_reg() {
		return mem_reg;
	}
	public void setMem_reg(Date mem_reg) {
		this.mem_reg = mem_reg;
	}
	public Date getMem_modify() {
		return mem_modify;
	}
	public void setMem_modify(Date mem_modify) {
		this.mem_modify = mem_modify;
	}
	public String getNow_passwd() {
		return now_passwd;
	}
	public void setNow_passwd(String now_passwd) {
		this.now_passwd = now_passwd;
	}
	public int getMem_score() {
		return mem_score;
	}
	public void setMem_score(int mem_score) {
		this.mem_score = mem_score;
	}
	public String getCal_date() {
		return cal_date;
	}

	public void setCal_date(String cal_date) {
		this.cal_date = cal_date;
	}
	public String getCal_content() {
		return cal_content;
	}
	public void setCal_content(String cal_content) {
		this.cal_content = cal_content;
	}
	public int getStc_num() {
		return stc_num;
	}
	public void setStc_num(int stc_num) {
		this.stc_num = stc_num;
	}
	
	@Override
	public String toString() {
		return "MemberVO [mem_num=" + mem_num + ", mem_id=" + mem_id + ", mem_auth=" + mem_auth + ", mem_nick="
				+ mem_nick + ", mem_auto=" + mem_auto + ", mem_au_id=" + mem_au_id + ", mem_name=" + mem_name
				+ ", mem_pw=" + mem_pw + ", mem_phone=" + mem_phone + ", mem_email=" + mem_email + ", mem_zipcode="
				+ mem_zipcode + ", mem_address1=" + mem_address1 + ", mem_address2=" + mem_address2
				+ ", mem_photo_name=" + mem_photo_name + ", mem_reg=" + mem_reg + ", mem_modify=" + mem_modify
				+ ", now_passwd=" + now_passwd + ", mem_score=" + mem_score + ", cal_date=" + cal_date+ ", cal_content=" + cal_content 
				+ ", stc_num=" + stc_num + "]";
	}

}
