public class ShortUniqueId {
	// Inspired by https://github.com/simplyhexagonal/short-unique-id
    private static String[] dictionaryAlphaNum = new String[]{
		'0','1','2','3','4','5','6','7','8','9',
		'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z',
		'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z'
	};

	@InvocableMethod(label='Generate Short Unique IDs' description='Adds an entry for the changes to a record')
	public static String[] getShortUniqueId(Integer[] idLengths) {
        String[] ids = new String[]{};
        String[] workingDictionary = new String[]{}; // may one day want to support multiple dictionaries
		workingDictionary = ShortUniqueId.dictionaryAlphaNum;
		Integer dictionaryLength = workingDictionary.size()-1;
		for(Integer l : idLengths) {
            if(l == null || l == 0) { l = 6; }
			String id = '';
			for(Integer j = 0; j < l; j++) {
				Integer randomIndex = -1;
				while (randomIndex < 0 || randomIndex > dictionaryLength) {
					 randomIndex = (Math.random() * 100).intValue();
				}
				id += workingDictionary[randomIndex];
			}
			ids.add(id);
		}
		return ids;
	}
}
