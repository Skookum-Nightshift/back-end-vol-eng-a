require 'json'

data = JSON.parse(File.read('db/fixtures/orgs.json'))

data.each do |org|
  x = Organization.create(name: org["name"], address: org["contact"]["address"], city: org["contact"]["city"], state: org["contact"]["state"], zip: org["contact"]["zip"], email: org["contact"]["email"], web: org["contact"]["web"], volunteer_url: org["contact"]["volunteer_url"], facebook: org["contact"]["facebook"], twitter: org["contact"]["twitter"], youtube: org["contact"]["youtube"], description: org["description"])

  org["categories"].each do |category|
    x.categories << Category.find_or_create_by(name: category.downcase)
  end

  org["opportunities"].each do |opportunity|
    y = Opportunity.create(name: opportunity["name"], address: opportunity["address"], description: opportunity["description"])
    opportunity["tags"].each do |tag|
      y.tag_list.add(tag.downcase)
    end
    x.opportunities << y
  end
end

Category.find(1).update_attributes(icon: "public/icons/children.svg")

Category.find(2).update_attributes(icon: "public/icons/lifeSkills.svg")

Category.find(3).update_attributes(icon: "public/icons/education.svg")

Category.find(4).update_attributes(icon: "public/icons/seniors.svg")

Category.find(5).update_attributes(icon: "public/icons/healthAndWellness.svg")

Category.find(6).update_attributes(icon: "public/icons/employment.svg")

Category.find(7).update_attributes(icon: "public/icons/sportsAndRec.svg")

Category.find(8).update_attributes(icon: "public/icons/crisis.svg")

Category.find(9).update_attributes(icon: "public/icons/women.svg")

Category.find(10).update_attributes(icon: "public/icons/foodPrep.svg")

Category.find(11).update_attributes(icon: "public/icons/religious.svg")

Category.find(12).update_attributes(icon: "public/icons/medicalSupport.svg")

Category.find(13).update_attributes(icon: "public/icons/donationedGoods.svg")

Category.find(14).update_attributes(icon: "public/icons/domesticViolence.svg")

Category.find(15).update_attributes(icon: "public/icons/legalAid.svg")

Category.find(16).update_attributes(icon: "public/icons/disabilities.svg")

Organization.find(1).update_attributes(logo: "/public/orgLogos/aChildsPlace.jpg")

Organization.find(2).update_attributes(logo: "/public/orgLogos/aldersgate.svg")

Organization.find(3).update_attributes(logo: "/public/orgLogos/bigBrothersSistersCharlotte.jpg")

Organization.find(4).update_attributes(logo: "/public/orgLogos/boysAndGirlsCab.png")

Organization.find(5).update_attributes(logo: "/public/orgLogos/centerOfHopeSalvationArmy.png")

Organization.find(6).update_attributes(logo: "/public/orgLogos/charlotteFamilyHousing.jpg")

Organization.find(7).update_attributes(logo: "/public/orgLogos/charlotte-meckParks.gif")

Organization.find(8).update_attributes(logo: "/public/orgLogos/Charmeckschoolslogo.png")

Organization.find(9).update_attributes(logo: "/public/orgLogos/crisis-assistance-ministry-logo.jpg")

Organization.find(10).update_attributes(logo: "/public/orgLogos/classroomCentral.png")

Organization.find(11).update_attributes(logo: "/public/orgLogos/soMuchGood.png")

Organization.find(12).update_attributes(logo: "/public/orgLogos/friendshipTrays.png")

Organization.find(13).update_attributes(logo: "/public/orgLogos/loveinclogo.gif")

Organization.find(14).update_attributes(logo: "/public/orgLogos/mensShelterOfCharlotte.jpg")

Organization.find(15).update_attributes(logo: "/public/orgLogos/ncmedassist_4c.jpg")

Organization.find(16).update_attributes(logo: "/public/orgLogos/ourTownsHabitat.png")

Organization.find(17).update_attributes(logo: "/public/orgLogos/safeAlliance.jpg")

Organization.find(18).update_attributes(logo: "/public/orgLogos/secondHarvetFood.jpg")

Organization.find(19).update_attributes(logo: "/public/orgLogos/supportiveHousingComm.jpg")

Organization.find(20).update_attributes(logo: "/public/orgLogos/theRelatives.png")

Organization.find(21).update_attributes(logo: "/public/orgLogos/ymca_blk.png")

Organization.find(22).update_attributes(logo: "/public/orgLogos/ywcaCentral.png")

Organization.find(23).update_attributes(logo: "/public/orgLogos/communitiesInSchool.jpeg")

Organization.find(24).update_attributes(logo: "/public/orgLogos/communityLink.jpg")

Organization.find(25).update_attributes(logo: "/public/orgLogos/hopeHavenCharlotte.png")

Organization.find(26).update_attributes(logo: "/public/orgLogos/latinAmericanCoalilition.png")

Organization.find(27).update_attributes(logo: "/public/orgLogos/centerOfHopeSalvationArmy.png
")

Organization.find(28).update_attributes(logo: "/public/orgLogos/legalServicesOfSouthernPiedmont.png")

Organization.find(29).update_attributes(logo: "/public/orgLogos/mentalHealthCentralChar.png")

Organization.find(30).update_attributes(logo: "/public/orgLogos/metrolinaAssociationForTheBlind.gif")

Organization.find(31).update_attributes(logo: "/public/orgLogos/academicLearningCenter.png")

Organization.find(32).update_attributes(logo: "/public/orgLogos/ajc-door.png")

Organization.find(33).update_attributes(logo: "/public/orgLogos/American-Red-Cross-logo.png")

Organization.find(34).update_attributes(logo: "/public/orgLogos/ansonCountyPartnership.jpg")

Organization.find(35).update_attributes(logo: "/public/orgLogos/asonCountyDomesticViolence.png")

Organization.find(36).update_attributes(logo: "/public/icons/noun_29964_cc.svg")

Organization.find(37).update_attributes(logo: "/public/orgLogos/bariumSpringsHomeForChildren.png")

Organization.find(38).update_attributes(logo: "/public/orgLogos/BSA_logo.png")

Organization.find(39).update_attributes(logo: "/public/orgLogos/BSA_logo.png")

Organization.find(40).update_attributes(logo: "/public/orgLogos/boysAndGirlsCab.png")

Organization.find(41).update_attributes(logo: "/public/orgLogos/mealsOnWheelsCabarrus.jpg")

Organization.find(42).update_attributes(logo: "/public/orgLogos/cannonMemorialYMCA.png")

Organization.find(43).update_attributes(logo: "/public/orgLogos/CareRing_Logo.png")

Organization.find(44).update_attributes(logo: "/public/orgLogos/communityHealthUnion.png")

Organization.find(45).update_attributes(logo: "/public/orgLogos/charlotteSpeechHearing.png")

Organization.find(46).update_attributes(logo: "/public/orgLogos/charSeniorCenters.gif")

Organization.find(47).update_attributes(logo: "/public/orgLogos/childCareResources.jpeg")

Organization.find(48).update_attributes(logo: "/public/orgLogos/coltraneLifeCenter.png")

Organization.find(49).update_attributes(logo: "/public/orgLogos/communityFreeClinic.png")

Organization.find(50).update_attributes(logo: "/public/orgLogos/communityHealthUnion.png")

Organization.find(51).update_attributes(logo: "/public/orgLogos/concilForChildrens.png")

Organization.find(52).update_attributes(logo: "/public/orgLogos/councilOnAgingUnion.jpg")

Organization.find(53).update_attributes(logo: "/public/orgLogos/cvanLogo.jpg")

Organization.find(54).update_attributes(logo: "/public/orgLogos/disabilitiesRightsResources.jpg")

Organization.find(55).update_attributes(logo: "/public/orgLogos/SCANofIreldell.jpg")

Organization.find(56).update_attributes(logo: "/public/orgLogos/Fifth-Street-Ministries-LOGO.jpg")

Organization.find(57).update_attributes(logo: "/public/orgLogos/florenceCrittentonServices.png")

Organization.find(58).update_attributes(logo: "/public/orgLogos/friendshipHome.jpg")

Organization.find(59).update_attributes(logo: "/public/orgLogos/girl-scouts-logo.png")

Organization.find(60).update_attributes(logo: "/public/orgLogos/goodwillIndustries.png")

Organization.find(61).update_attributes(logo: "/public/orgLogos/habitatFOrHumanityCabarrus.png")

Organization.find(62).update_attributes(logo: "/public/orgLogos/hollaLogo.jpg")

Organization.find(63).update_attributes(logo: "/public/orgLogos/hopeHavenCharlotte.png")

Organization.find(64).update_attributes(logo: "/public/orgLogos/Hospice & Palliative Care of Cabarrus County.png")

Organization.find(65).update_attributes(logo: "/public/orgLogos/hospicePalliativeIredell.jpg")


Organization.find(66).update_attributes(logo: "/public/orgLogos/IredellCouncilOnAging.jpg")

Organization.find(67).update_attributes(logo: "/public/orgLogos/kindermourn.png")

Organization.find(68).update_attributes(logo: "/public/orgLogos/legalAidNC.png")

Organization.find(69).update_attributes(logo: "/public/orgLogos/legalServicesOfSouthernPiedmont.png")

Organization.find(70).update_attributes(logo: "/public/orgLogos/levineJewishCenter.png")

Organization.find(71).update_attributes(logo: "/public/orgLogos/lifespan.jpg")

Organization.find(72).update_attributes(logo: "/public/orgLogos/literacyCouncilUnion.png")

Organization.find(73).update_attributes(logo: "/public/orgLogos/mooresvilleChristianMission.png")

Organization.find(74).update_attributes(logo: "/public/orgLogos/piedmontMediation.gif")

Organization.find(75).update_attributes(logo: "/public/orgLogos/rain.png")

Organization.find(76).update_attributes(logo: "/public/orgLogos/Right Moves for Youth.jpg")

Organization.find(77).update_attributes(logo: "/public/orgLogos/teenHeathConnection.png")

Organization.find(78).update_attributes(logo: "/public/orgLogos/theARCmeck.png")

Organization.find(79).update_attributes(logo: "/public/orgLogos/theARCunion.png")

Organization.find(80).update_attributes(logo: "/public/orgLogos/theARCcabarrus.png")

Organization.find(81).update_attributes(logo: "/public/orgLogos/centerFOrCommunityTransition.jpg")

Organization.find(82).update_attributes(logo: "/public/orgLogos/learning_collaborative_lg--apple.jpg")

Organization.find(83).update_attributes(logo: "/public/orgLogos/turningPoint.png")

Organization.find(84).update_attributes(logo: "/public/orgLogos/union-county-community-shelter-logo-2014.png")





























