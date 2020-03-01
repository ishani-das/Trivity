//
//  ViewController.swift
//  Trivity
//
//  Created by Ishani Das on 2/29/20.
//  Copyright © 2020 Ishani Das. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // medical conditions
    let medQ = ["Heart disease kills more people per year than cancer, war, terrorism, hunger, suicide, diabetes, respiratory diseases and mental disorders combined. ", "NFL players are three to four times more likely to contract Alzheimer’s disease, Parkinson’s disease and Lou Gehrig’s disease (ALS) than an average American. ", "James Harrison’s blood contained rare antigens that cured Rhesus disease, which he donated 100 times to save 1000000 lives. ", "There is no cure to insomnia", "Farmers feed large magnets to cows to prevent “Hardware Disease,” which prevent metal they accidently eat from getting stuck in their throat.", "Doctors gave Stephen Hawking a life expectancy of 2 months after he was diagnosed with a motor neuron disease.", "The doctor who discovered that hand washing prevented the spread of disease was committed to an asylum, where he died after being beaten by the guards.", "Cancer is caused by environmental factors 5-10% of the time.", "The cure for cystic fibrosis is inhaling genes to attempt to repair the disease.", "More than 34 million people in the United States have diabetes, and 1 in 5 of them don't know they have it."]
    let medA = [true, true, false, true, true, false, true, false, true, true]
    
    // environment
    let environQ = ["The Mississippi River dumps 0.5 million metric tonnes of nitrogen pollution in the Gulf of Mexico every year.", "More than 3 million kids under the age of 5 years die every year due to                                               environmental factors like pollution.", "America is the world’s largest producer of carbon dioxide.", "Around 6000 children die in India every year due to diseases caused by the polluted water.", "Antarctica is the dirtiest place on Earth protected by anti-pollution laws.", "A single car generates half a ton of CO2.", "Pollution in China can change the weather in the United States.", "A single person in the United States produces 1 kilogram of garbage every day.", "Smoking has the same effect on lungs as living in a place with polluted air.", "Every 1 million ton of oil that is shipped, approximately 1 ton from gets wasted in the form of spills."]
    let environA = [false, true, false, false, false, true, true, false, true, true]
    
    // food wastage
    let foodQ = ["The first law to regulate food additives was issued in 1203 by King John of England. Specifically, it was designed to stop dishonest bakers from adding additives in bread to make it appear fresher and browner than it actually was.", "Shellac, a popular finish used on wooden projects to give them shine, is an additive used in candy made from crushed up shells of beetles.", "Plastic was a popular additive because supposedly, it made wine taste sweeter.", "High-fructose corn syrup is a sweetener made from corn. It's sweeter and cheaper than sucrose, which is the form of sugar made from sugar cane.", "Aspartame is a commonly used additive for sweetening diet soft drinks. ", "1 billion tons of food are wasted every year", "Just one quarter of all wasted food could feed the 795 million undernourished people around the world who suffer from hunger", "There is $1 trillion dollars of wasted or lost food", "If wasted food was a country, it would be the largest producer of carbon dioxide in the world", "Food waste in Europe alone could feed 200 million hungry people"]
    let foodA = [true, true, false, true, true, false, true, true, false, true]
    
    // veganism
    let veganQ = ["800,000 cows are killed each day", "Does eating animals increase your BMI?", "70% What percentage of food poisoning is caused by animal flesh poisoning", "Meat and dairy are hard to ingest", "Do plants have more protein than animals?", "20% of corn grown is eaten by animals in the United Atates", "Vegans eat cheese", "Veganism is a lifestyle", "Leather products go against the ethical vegan value", "Meat can feed more people than vegetables"]
    let veganA = [true, true, true, true, true, false, false, true, true, false]
    
    // health
    let healthQ = ["Germs from Flushing Toilet Can Travel up to 6 Feet", "1 in 5 People Wash Their Hands", "200% More Fecal Bacteria on Cutting Boards than Toilet Seats", "TV Remote Controls Are a Leading Carrier of Bacteria", "there are more bacteria in ice machines at fast-food restaurants than in toilet bowl water.", "A study of over 11,000 children determined that an overly hygienic environment decreases the risk of eczema and asthma.", " The human body is home to some 1,000 species of bacteria.", "Antibacterial soap has the same effect as regular soap.", "A used kitchen sponge cannot contain thousands of bacteria per square inch", "Dust mites feed on dead skin"];
    let healthA = [true, false, true, true, true, false, true, true, false, true]
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print(segue.identifier)
        let destinationVC = segue.destination as? QuestionsViewController
        if(segue.identifier == "medical"){
            destinationVC?.topic = "Medical Conditions"
            destinationVC?.questions = medQ
            destinationVC?.answers = medA
        }else if(segue.identifier == "environment"){
            destinationVC?.topic = "Environment"
            destinationVC?.questions = environQ
            destinationVC?.answers = environA
        }else if(segue.identifier == "food"){
            destinationVC?.topic = "Food Wastage"
            destinationVC?.questions = foodQ
            destinationVC?.answers = foodA
        } else if(segue.identifier == "vegan"){
            destinationVC?.topic = "Veganism"
            destinationVC?.questions = veganQ
            destinationVC?.answers = veganA
        }
        else{
            destinationVC?.topic = "General Health"
            destinationVC?.questions = healthQ
            destinationVC?.answers = healthA
        }
        
    }


}

