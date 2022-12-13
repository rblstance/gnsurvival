package util;

import java.util.ArrayList;

import result.ResultDto;

public class Poet {

//	private Poet() {}
//	private static Poet instance = new Poet();
//	public static Poet getInstance() {
//		return instance;
//	}
//	
	public static ArrayList<String> getPoet(ResultDto user) {
		ArrayList<String> poet = new ArrayList<String>();
		
		String vehicle = user.getVehicle();
		String weapon = user.getWeapon();
		String n1 = user.getName();
		String n2 = user.getName2();
		String q = user.getQuestion();
		
		poet.add(user.getQ_8String(user.getQ_8()) + "에게서 아이를 한 명 건네 받았다 네 이름은 " + n2 + "다 그 애는 싫다고 고개를 저으면서 제 이름은 불운이에요");
		poet.add("");
		
		if(user.getQ_1() == 1) {
			poet.add("버둥거리며 불운이 웃는다 구조를 바라는 피서객처럼");
		} else {
			poet.add("종종걸음으로 뒤를 따라오는 불운");
		}
		
		if(user.getQ_2() == 1) {
			poet.add("기억해? 잔디 깎는 장면에서 울었잖아 헤어진 지 오래된 것처럼");
		} else if(user.getQ_2() == 2) {
			poet.add("아무래도 좋아");
		} else {
			poet.add("삼 번 아니면 사 번 모를 때엔 기억해");
		}
		
		if(user.getQ_3() == 1) {
			poet.add("아직 연결 중입니다");
			poet.add("착각하면 진짜가 된다");
		} else {
			poet.add("가만히 기다리면 선한 사람이 되는 곳에서");			
		}
		
		poet.add("페이지를 넘깁시다 화자의 심경으로 적절한 것을 고르시오");
		if(user.getQ_4() == 1) {
			poet.add("기회는 한 번뿐 재시험은 없다");
		} else if(user.getQ_4() == 2) {
			poet.add("간신히 몸을 구겨넣고 우는 화자");
			poet.add("어때요 이제 괜찮나요");
		} else {
			poet.add("적절한 심경이라는 것이 있으니까 적절한 불운에 적절히 대처하는 적절한 이들에게 적절한 때에 적절히");
		}
		
		if(user.getQ_5() == 1) {
			poet.add("불운이 문을 두드린다 이곳은 춥고 외로워요 작고 소중한 당신의");
			poet.add(n2 + "의 얼굴로");
		} else {
			poet.add("답하지 않으면");
			poet.add("자유로울 수 있나요?");
			poet.add(n2 + "에게 불운이 침을 뱉는다 그 얼굴은 버리기로 했으니까");
		}
		poet.add("");
		
		if(user.getQ_6() == 1) {
			poet.add("맞힐 때까지 다시 묻는 스무고개 서른 고개 마흔 고개 관절을 잃을 때까지 어쩌다 시간이 흘렀어요? 기울인 적 없는데");
		} else if (user.getQ_6() == 2){
			poet.add("불운은 무릎을 꿇고 있다 그것이 그가 할 수 있는 유일한 자세인 것처럼");
		} else {
			poet.add("불운의 목소리는 가느다랗고 미세히 떨린다 모르는 척 그것을 외면하고");
			poet.add("지나치기에 나는 너무 선하다");
		}
		
		if(user.getQ_7() == 1) {
			poet.add("눈싸움은 사랑에 빠지기 가장 좋은 결투 슬픈 게 아니야 눈에 먼지가 들어가서 그래 먼지가... 내가 먼지야? 불운은 그렇게 말하고");
		} else if(user.getQ_7() == 2) {
			poet.add("절하듯이 바치듯이 떠받들듯이 구걸하듯이 굽실거리듯이 그걸 전부");
			poet.add("하지 않은 채로");
			poet.add("해내면서");
		} else {
			poet.add("다가오는 불은을 아는 채로 바라보면서 나는 고개를 빳빳이 들고 어? 버르장머리 없는 자식 어딜 감히 어른 눈을 바로 보면서 불운은");
		}
		
		if(user.getQ_9() == 1) {
			poet.add("내 뺨을 어루만진다");			
		} else if(user.getQ_9() == 2) {
			poet.add("내 뺨에 키스한다");
		} else {
			poet.add("내 뺨을 친다");
		}
		
		poet.add("");
		poet.add("세상은 기쁜 불운으로 가득 차 있고");
		poet.add("모두 그것을 기꺼이 환영하는구나");
		poet.add("몰랐어요? 옳은 질문은 다음과 같습니다: " + q);
		
		return poet;
	}
	
}
