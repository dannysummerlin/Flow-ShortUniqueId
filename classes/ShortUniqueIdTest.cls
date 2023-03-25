@isTest
private class ShortUniqueIdTest {
	@isTest
	static void checkLengthAndContent() {
        String[] results = ShortUniqueId.getShortUniqueId(new Integer[]{6,null,4,3});
        System.assert(results[0] != results[1]);
        System.assert(results[2].length() != results[3].length());
		System.debug(results);
	}
}
