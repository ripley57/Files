# mini GDPR report

The **PII Overview** and **GDPR** dashboards are great for getting an immediate satellite view of the volume and types of PII in your organisation.

One of major use I can see of the product, which also benefits the speed of actioning GDPR requests, is to help organisations  control the growth of their stored PII. The platform enables an organization to not only see where their PII is located, but also to review it at an individual file level. This enables an organisation to determine if the appropriate people have access to the data and also if there is even a need to store some types of PII. 

Avoiding GDPR is not going to be possible for most companies, whereever they are based in the world. But the impact of GDPR can be reduced if the amount of PII being stored can be kept to a minimum. Less  PII means sipler and thereofre quicker GDPR response times. In addition, limiting the volume and separate locations of stored PII (incluing duplicated PII) provides huge security benefits.

In the context of reducing PII, here's how I might use the platform to investigate the storage of credit card numbers...

#### PII by Category
1,640 credit card numbers:  
[1640 credit card numbers](images/1640_credit_cards.jpg)

Clicking on the "credit card" column...  

#### PII by Data Set
A relatively large number of files (549) are in the Marketing data set:
[549_marketing](images/549_marketing.jpg) 

It might be questionable that we have a relatively large number of credit card numbersin the Marketing data set. Clicking on the "Marketing" column to drill-down futher...  

#### PII by Author
It looks like it might be worth examining the 513 files authored by LTadashi:  
[513_LTadashi](images/513_LTadashi.jpg)

Clicking on the "LTadashi" column...and then displaying the Results Pane...
[TRAVEL_AUTHORIZATION](images/TRAVEL_AUTHORIZATION.jpg)

There are a lot of "TRACE_AUTHORIZATION" files, and they look to be related to different people, not LTadashi. Let's review one of them...
[Might_not_contain_credit_card_numbers](Might_not_contain_credit_card_numbers.jpg)

Hmm, is that what is being recognised as a credit card number? We should probably download the native file and examine it to confirm.  If these are not credit card numbers, is there possibly a problem with the platform? We should probably still question why all these files, referring to different people, are all authored by LTadashi. These files don't look related to marketing. Is LTadashi a member of the Markeing team and therefore possibly looking at files he shouldn't, or perhaps the grouping of data sources into data sets needs to be tweaked?  
  
Whatever the outcome regarding LTadashi, these files are being recognised as containing credit card numbers. Is there a way to change this? Can we improve the platform algorithm to reconigse credit cards to these files are not responsive, or do we suggest that the customer review the files and redact or delete them, assuming there is no requirement to keep them, and they are not part of any current eDiscovery legal hold? 
