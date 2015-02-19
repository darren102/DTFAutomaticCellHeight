//
//  CountryDatasource.swift
//  DTFAutomaticCellHeight
//
//  Created by Darren Ferguson on 2/18/15.
//  Copyright (c) 2015 Darren Ferguson. All rights reserved.
//

import Foundation

class CountryDatasource {
    
    class func countries() -> [Country] {
        
        let albania = Country(countryTitle: "Albania", countryDescription: "The modern-day territory of Albania was at various points in history part of the Roman provinces of Dalmatia (southern Illyricum), Macedonia (particularly Epirus Nova), and Moesia Superior. The modern Republic became independent after the collapse of the Ottoman Empire in Europe following the Balkan Wars.")
        
        let bulgaria = Country(countryTitle: "Bulgaria", countryDescription: "Bulgaria's population of 7.4 million people is predominantly urbanised and mainly concentrated in the administrative centres of its 28 provinces. Most commercial and cultural activities are centred on the capital and largest city, Sofia. ")
        
        let canada = Country(countryTitle: "Canada", countryDescription: "Canada is a federal parliamentary democracy and a constitutional monarchy, Queen Elizabeth II being the current head of state. The country is officially bilingual at the federal level. It is one of the world's most ethnically diverse and multicultural nations, the product of large-scale immigration from many countries, with a population of approximately 35 million as of 2015")
        
        let denmark = Country(countryTitle: "Denmark", countryDescription: "The unified kingdom of Denmark emerged in the 10th century as a proficient seafaring nation in the struggle for control of the Baltic Sea. Danish rule over the personal Kalmar Union, established in 1397 (over the Norway and Sweden), ended with Swedish secession in 1523. However, Denmark still kept a union over Norway which lasted until its dissolution in 1814.")
        
        let estonia = Country(countryTitle: "Estonia", countryDescription: "Estonia is a democratic parliamentary republic divided into fifteen counties, with its capital and largest city being Tallinn. With a population of 1.3 million, it is one of the least-populous member states of the European Union, Eurozone, the North Atlantic Treaty Organization and the Schengen Area.")
        
        let france = Country(countryTitle: "France", countryDescription: "During the Iron Age, what is now France was inhabited by the Gauls, a Celtic people. The Gauls were conquered by the Roman Empire in 51 BC, which held Gaul until 486.")
        
        let germany = Country(countryTitle: "Germany", countryDescription: "With 80.7 million inhabitants, Germany is the most populous member state in the European Union. After the United States, it is also the second most popular migration destination in the world.")
        
        let hungary = Country(countryTitle: "Hungary", countryDescription: "Following centuries of successive habitation by Celts, Romans, Huns, Slavs, Gepids, and Avars, the foundation of Hungary was laid in the late 9th century by the Hungarian grand prince Árpád in the Honfoglalás. His great-grandson Stephen I ascended to the throne in 1000 CE, converting the country to a Christian kingdom.")
        
        let italy = Country(countryTitle: "Italy", countryDescription: "Since ancient times, Etruscan, Magna Graecia and other cultures have flourished in the territory of present-day Italy, being eventually absorbed by Rome, that has for centuries remained the leading political and religious centre of Western civilisation, capital of the Roman Empire and Christianity.")
        
        let jamacia = Country(countryTitle: "Jamacia", countryDescription: "Once a Spanish possession known as Santiago, in 1655 it came under the rule of England (later Great Britain), and was called Jamaica. It achieved full independence from the United Kingdom on 6 August 1962.")
        
        let lithuania = Country(countryTitle: "Lithuania", countryDescription: "For centuries, the southeastern shore of the Baltic Sea was inhabited by various Baltic tribes. In the 1230s, the Lithuanian lands were united by Mindaugas, the King of Lithuania, and the first unified Lithuanian state, the Kingdom of Lithuania, was created on 6 July 1253.")
        
        let moldova = Country(countryTitle: "Moldova", countryDescription: "Moldova declared itself an independent state with the same boundaries as the Moldavian Soviet Socialist Republic in 1991 as part of the dissolution of the Soviet Union. A new constitution was adopted on 29 July 1994.")
        
        let nigeria = Country(countryTitle: "Nigeria", countryDescription: "Present-day Nigeria has been the site of numerous kingdoms and tribal states spanning over a millennium. The modern state has its origins in British colonization during the late 19th to early 20th centuries, with the merging of the Southern Nigeria Protectorate and Northern Nigeria Protectorate.")
        
        let oman = Country(countryTitle: "Oman", countryDescription: "Holding a strategically important position at the mouth of the Persian Gulf, the nation is bordered by the United Arab Emirates to the northwest, Saudi Arabia to the west, and Yemen to the southwest, and shares marine borders with Iran and Pakistan. The coast is formed by the Arabian Sea on the southeast and the Gulf of Oman on the northeast. The Madha and Musandam exclaves are surrounded by the UAE on their land borders, with the Strait of Hormuz and Gulf of Oman forming Musandam's coastal boundaries.")
        
        let portugal = Country(countryTitle: "Portugal", countryDescription: "Portugal officially the Portuguese Republic, is a country in southwest Europe. It is located on the Iberian Peninsula, and it is the westernmost country of mainland Europe, being bordered by the Atlantic Ocean to the west and south and by Spain to the north and east.")
        
        let qatar = Country(countryTitle: "Qatar", countryDescription: "Following Ottoman rule, Qatar became a British protectorate in the early 20th century until gaining independence in 1971. Qatar has been ruled by the Al Thani family since the mid-19th century. Qatar is an absolute monarchy and its head of state is Emir Sheikh Tamim bin Hamad Al Thani.")
        
        let russia = Country(countryTitle: "Russia", countryDescription: "From northwest to southeast, Russia shares land borders with Norway, Finland, Estonia, Latvia, Lithuania and Poland (both with Kaliningrad Oblast), Belarus, Ukraine, Georgia, Azerbaijan, Kazakhstan, China, Mongolia, and North Korea. It shares maritime borders with Japan by the Sea of Okhotsk and the U.S. state of Alaska across the Bering Strait.")
        
        let spain = Country(countryTitle: "Spain", countryDescription: "Spanish territory also includes two archipelagos; the Balearic Islands, in the Mediterranean Sea, and the Canary Islands, in the Atlantic Ocean off the African coast; two major exclaves, Ceuta and Melilla, in continental North Africa; and the islands and peñones (rocks) of Alborán, Chafarinas, Alhucemas, Peñón de Vélez de la Gomera and Perejil.")
        
        let turkey = Country(countryTitle: "Turkey", countryDescription: "Turkey has been inhabited since the paleolithic age, including various ancient Anatolian civilizations, Aeolian and Ionian Greeks, Thracians, and Persians. After Alexander the Great's conquest, the area was Hellenized, which continued with the Roman rule and the transition into the Byzantine Empire.")
        
        let uganda = Country(countryTitle: "Uganda", countryDescription: "Uganda takes its name from the Buganda kingdom, which encompasses a large portion of the south of the country including the capital Kampala. The people of Uganda were hunter-gatherers until 1,700 to 2,300 years ago, when Bantu-speaking populations migrated to the southern parts of the country.")
        
        let venezuela = Country(countryTitle: "Venezuela", countryDescription: "The territory currently known as Venezuela was colonized by Spain in 1522 amid resistance from indigenous peoples. In 1811, it became one of the first Spanish-American colonies to declare independence, which was not securely established until 1821, when Venezuela was a department of the federal republic of Gran Colombia.")
        
        let wales = Country(countryTitle: "Wales", countryDescription: "Wales is a country that is part of the United Kingdom and the island of Great Britain, bordered by England to its east, the Irish Sea to its north and west, and the Bristol Channel to its south. It had a population in 2011 of 3,063,456 and has a total area of 20,779 km2 (8,023 sq mi).")
        
        let zambia = Country(countryTitle: "Zambia", countryDescription: "Originally inhabited by Khoisan peoples, the region was colonised during the Bantu expansion of the thirteenth century. After visits by European explorers in the eighteenth century, Zambia became the British protectorate of Northern Rhodesia towards the end of the nineteenth century.")
        
        return [albania, bulgaria, canada, denmark, estonia, france, germany, hungary, italy,
        jamacia, lithuania, moldova, nigeria, oman, portugal, qatar, russia, spain, turkey,
        uganda, venezuela, wales, zambia]
    }
}
