doc = "Large and complex data that becomes difficult to be handled by traditional data processing applications triggers the development of big data applications which have become more pervasive than ever before. In the era of big data, data exploration and analysis turned into a difficult problem in many sectors such as the smart routing and health care sectors. Companies which can adapt their businesses well to leverage big data have significant advantages over those that lag this capability. The need for exploring new approaches to address the challenges of big data forces companies to shape their business models accordingly. In this paper, we summarize and share our findings regarding the business models deployed in big data applications in different sectors. We analyze existing big data applications by taking into consideration the core elements of a business (via business model canvas) and present how these applications provide value to their customers by making profit out of using big data."

import nltk
from nltk.corpus import stopwords
stop_words = set(stopwords.words('english'))

from nltk.tokenize import word_tokenize
tokens = word_tokenize(doc)
words_with_out_stopwords = [w for w in tokens if not w.lower() in stop_words]
words_without_sw_pucts = [w for w in words_with_out_stopwords if w.isalpha()]

from nltk.stem import PorterStemmer
ps = PorterStemmer()
for w in words_without_sw_pucts:
    print(w, " : ", ps.stem(w))

from nltk.stem import WordNetLemmatizer
lemmatizer = WordNetLemmatizer()
for w in words_without_sw_pucts:
    lemmatizer.lemmatize(w)

from nltk.probability import FreqDist
wv = FreqDist(words_without_sw_pucts)
wv.items() #list of tuples
df = pd.DataFrame(wv.items(), columns =['words', 'freq.'])


