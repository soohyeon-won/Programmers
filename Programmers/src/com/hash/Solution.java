package com.hash;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

// 실행 단축키 : fn + command + f11
// 디버깅 : command + shift + i
// f5:메소드 안까지 디버깅 f6:걍 아랫줄디버깅 f8: 브레이크포인트 디버

public class Solution {

	public static void main(String[] args) {
		String value = solution(new String[]{"a", "b", "c", "a"}, new String[] {"a", "b", "c"});
		System.out.print(value) ;

		System.out.print(phoneBook(new String[] {"aa", "aafksfas"}));
	}

	/* 완주하지 못한 선수 */ 
	public static String solution(String[] participant, String[] completion) {
		Map<String, Integer> hm = new HashMap<>();
        for (String item: participant) {
            if (hm.get(item) == null) hm.put(item, 1);
            else {
                hm.put(item, hm.get(item) + 1);
            }
        }
        for (String item: completion) {
            hm.put(item, hm.get(item) - 1);
        }
        for (String key: hm.keySet()) {
            if (hm.get(key) != 0) return key;
        }
        return "";
	}

	/* 전화번호 목록 */
	public static boolean phoneBook(String[] phone_book) {
		Arrays.sort(phone_book);
		Map<String, Integer> hm = new HashMap<>();
		for (String item : phone_book) {
			if (hm.get(item) == null) {
				hm.put(item, 1);
				for (String key: hm.keySet()) {
					if (item.startsWith(key) && !item.equals(key)) {
						return false;
					}
				}
			}
		}
		return true;
	}

	/* 전화번호 목록 좋은 답변 */
	public boolean phoneBookSolution(String[] phoneBook) {
		boolean answer = true;
		int length;
		for(String s : phoneBook) {
			length = s.length();
			for(String r : phoneBook) 
				if(r.length()>length&&r.substring(0, length).equals(s)) return false;
		}
		return answer;
	}

}

