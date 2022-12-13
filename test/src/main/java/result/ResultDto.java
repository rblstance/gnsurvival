package result;

public class ResultDto {
	
	private int code;
	private String name, vehicle, name2, weapon, question, character, regdate, inout;
	private int q_1, q_2, q_3, q_4, q_5, q_6, q_7, q_8, q_9;
	public ResultDto(int code, String name, String vehicle, String name2, String weapon, String question, String character,
			String regdate, String inout, int q_1, int q_2, int q_3, int q_4, int q_5, int q_6, int q_7, int q_8, int q_9) {
		super();
		this.code = code;
		this.name = name;
		this.vehicle = vehicle;
		this.name2 = name2;
		this.weapon = weapon;
		this.question = question;
		this.character = character;
		this.regdate = regdate;
		this.inout = inout;
		this.q_1 = q_1;
		this.q_2 = q_2;
		this.q_3 = q_3;
		this.q_4 = q_4;
		this.q_5 = q_5;
		this.q_6 = q_6;
		this.q_7 = q_7;
		this.q_8 = q_8;
		this.q_9 = q_9;
	}
	public int getCode() {
		return code;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getVehicle() {
		return vehicle;
	}
	public void setVehicle(String vehicle) {
		this.vehicle = vehicle;
	}
	public String getName2() {
		return name2;
	}
	public void setName2(String name2) {
		this.name2 = name2;
	}
	public String getWeapon() {
		return weapon;
	}
	public void setWeapon(String weapon) {
		this.weapon = weapon;
	}
	public String getQuestion() {
		return question;
	}
	public void setQuestion(String question) {
		this.question = question;
	}
	public String getCharacter() {
		return character;
	}
	public void setCharacter(String character) {
		this.character = character;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	public String getInout() {
		return inout;
	}
	public void setInout(String inout) {
		this.inout = inout;
	}
	public int getQ_1() {
		return q_1;
	}
	public void setQ_1(int q_1) {
		this.q_1 = q_1;
	}
	public int getQ_2() {
		return q_2;
	}
	public void setQ_2(int q_2) {
		this.q_2 = q_2;
	}
	public int getQ_3() {
		return q_3;
	}
	public void setQ_3(int q_3) {
		this.q_3 = q_3;
	}
	public int getQ_4() {
		return q_4;
	}
	public void setQ_4(int q_4) {
		this.q_4 = q_4;
	}
	public int getQ_5() {
		return q_5;
	}
	public void setQ_5(int q_5) {
		this.q_5 = q_5;
	}
	public int getQ_6() {
		return q_6;
	}
	public void setQ_6(int q_6) {
		this.q_6 = q_6;
	}
	public int getQ_7() {
		return q_7;
	}
	public void setQ_7(int q_7) {
		this.q_7 = q_7;
	}
	public int getQ_8() {
		return q_8;
	}
	public String getQ_8String(int q_8) {
		if(q_8 == 1)
			return "침 흘리는 좀비";
		else if(q_8 == 2)
			return "목발을 짚은 군인";
		else if(q_8 == 3)
			return "평범한 행인";
		else if(q_8 == 4)
			return "늠름한 황제펭귄";
		else if(q_8 == 5)
			return "날개를 펼친 천사";
		else if(q_8 == 6)
			return "위대한 옛 존재";
		else if(q_8 == 7)
			return "총을 든 윤 선생";
		else
			return null;
	}
	public void setQ_8(int q_8) {
		this.q_8 = q_8;
	}
	public int getQ_9() {
		return q_9;
	}
	public String sum(int q1, int q2, int q3, int q4, int q5, int q6, int q7, int q9) {
		// ㄱ, ㄴ, +, -, 0
		int[] sum = {0,0,0,0,0};
		if(q1 == 1)
			sum[0] += 1;
		else
			sum[1] += 1;
		if(q3 == 1)
			sum[0] += 1;
		else
			sum[1] += 1;
		if(q5 == 1)
			sum[0] += 1;
		else
			sum[1] += 1;
		if(q2 == 1)
			sum[2] += 1;
		else if(q2 == 2)
			sum[3] += 1;
		else
			sum[4] += 1;
		if(q4 == 1)
			sum[3] += 1;
		else if(q4 == 2)
			sum[4] += 1;
		else
			sum[2] += 1;
		if(q6 == 1)
			sum[4] += 1;
		else if(q6 == 2)
			sum[2] += 1;
		else
			sum[3] += 1;
		if(q7 == 1)
			sum[2] += 1;
		else if(q7 == 2)
			sum[3] += 1;
		else
			sum[4] += 1;
		if(q9 == 1)
			sum[4] += 1;
		else if(q9 == 2)
			sum[2] += 1;
		else
			sum[3] += 1;
		
		// attitude: 0 낙관 / 1 비관 / 2 수용
		// direction: 0 외부 / 1 내부
		int attitude = -1;
		int direction = -1;
		if(sum[0] > sum[1])
			direction = 0;
		else
			direction = 1;
		if(sum[2] > sum[3] && sum[2] > sum[4])
			attitude = 0;
		if(sum[3] > sum[2] && sum[3] > sum[4])
			attitude = 1;
		if(sum[4] > sum[2] && sum[4] > sum[3])
			attitude = 2;
		
		if(direction == 0) {
			if(attitude == 0)
				return "F";
			else if(attitude == 1)
				return "C";
			else
				return "A";
		} else if(direction == 1) {
			if(attitude == 0)
				return "B";
			else if(attitude == 1)
				return "E";
			else
				return "D";
		}
		else
			return null;
		
	}
	
	
}
