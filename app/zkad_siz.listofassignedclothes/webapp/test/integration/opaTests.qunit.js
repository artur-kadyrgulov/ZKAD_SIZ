sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'zkadsiz/listofassignedclothes/test/integration/FirstJourney',
		'zkadsiz/listofassignedclothes/test/integration/pages/AssignedClothesList',
		'zkadsiz/listofassignedclothes/test/integration/pages/AssignedClothesObjectPage'
    ],
    function(JourneyRunner, opaJourney, AssignedClothesList, AssignedClothesObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('zkadsiz/listofassignedclothes') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheAssignedClothesList: AssignedClothesList,
					onTheAssignedClothesObjectPage: AssignedClothesObjectPage
                }
            },
            opaJourney.run
        );
    }
);