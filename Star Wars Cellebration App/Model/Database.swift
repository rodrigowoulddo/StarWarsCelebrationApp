        //
        //  Database.swift
        //  Star Wars Cellebration App
        //
        //  Created by Rodrigo Giglio on 09/04/19.
        //  Copyright © 2019 Rodrigo Giglio. All rights reserved.
        //

        import Foundation

        struct Database {

            
            var activitiesFriday: [Activity] = [
            
                Activity(id: 1, title: "ILM Presents: Making Solo", name: "Rob Bredow, Academy Award Nominee and VFX Supervisor for Solo", description: "Rob Bredow, Academy Award Nominee and VFX Supervisor for Solo: A Star Wars Story will share his personal stories and photos in this exclusive behind-the-scenes talk. Get a sneak peek into his new photo book covering the film. Bring your filmmaking questions and learn how the Falcon made the Kessel Run in less than twelve parsecs.",stage: Stage.galaxy, track: Track.rebel, day: Day.friday, session: 1,startTime: "9:45 AM",endTime: "10:45 AM", image: "cover 1", location: "map 1", related: []),
                
                Activity(id: 2, title: "Star Wars: Episode IX", name: "Live on the Celebration Stage; streamed to the Galaxy and Twin Suns Stages", description: "Live on the Celebration Stage; streamed to the Galaxy and Twin Suns Stages. With the culmination of the Star Wars Saga arriving before the end of the year, the Star Wars: Episode IX panel is one you will definitely not want to miss! With Lucasfilm President Kathleen  Kennedy and Star Wars: Episode IX director JJ Abrams appearing on stage, you can count on plenty of surprises and special guests to keep your imagination buzzing for the rest of Celebration! Live on the Celebration Stage; streamed to the Galaxy and Twin Suns Stages.", stage: Stage.celebration, track: Track.jedi, day: Day.friday, session: 2, startTime: "1:00 PM", endTime: "2:30 PM", image: "cover 2", location: "map2", related: [])
                
            ]
            
            var activitiesSaturday : [Activity] = [
            
                Activity(id: 3, title: "Droids and Animatronic Creatures of Star Wars", name: "Exploring your favorite droids and creatures from The Force Awakens, Rogue One, The Last Jedi and Solo", description: "Exploring your favorite droids and creatures from The Force Awakens, Rogue One, The Last Jedi and Sol. Join Matt Denton, Josh Lee and Lee Towersey as they discuss the challenges faced bringing complex droid and animatronic creatures to life, including behind the scenes stories of their work in demanding environments both in the studio and on location around the world", stage: Stage.galaxy, track: Track.rebel, day: Day.saturday, session: 1, startTime: "9:45 AM", endTime: "10:45 AM", image: "cover 3", location: "map 3", related: []),
                
                Activity(id: 4, title: "The Mandalorian- Stream", name: "Live on the Celebration Stage; presented simultaneously at the Galaxy and Twin Suns Stages", description: "Learn about the perilous world of The Mandalorian, set to debut on Disney +, with executive producer and writer Jon Favreau and executive producer and director Dave Filoni in a special panel discussion.", stage: Stage.galaxy, track: Track.rebel, day: Day.saturday, session: 2, startTime: "11:00 AM", endTime: "12:00 PM", image: "cover 4", location: "map 4", related: []),
                
                Activity(id: 5, title: "Star Wars Rebels Remembered", name: "Star Wars Rebels may have ended but the Ghost Crew is far from forgotten!", description: "Star Wars Rebels may have ended but the Ghost Crew is far from forgotten! Dave Filoni and special guests take a look back at the show that deepened our knowledge of the Force, broke our hearts and always gave us hope. Full disclosure – we are not announcing a new series in this panel.", stage: Stage.galaxy, track: Track.rebel, day: Day.saturday, session: 3, startTime: "12:45 PM", endTime: "1:45 PM", image: "cover 5", location: "map 5", related: []),
                
                Activity(id: 6, title: "Star Wars Cosplay Competition", name: "Both veteran and amateur cosplayers alike will join the most exciting Cosplay Competition", description: "Both veteran and amateur cosplayers alike will join the most exciting Cosplay Competition in the galaxy at Star Wars Celebration Chicago! It is more than just a competition – it’s a fun filled celebration of the very best Star Wars cosplayers that want to share their talent, skill and determination with the universe.", stage: Stage.galaxy, track: Track.jedi, day: Day.saturday, session: 4, startTime: "3:30 PM", endTime: "4:30 PM", image: "cover 6", location: "map 6", related: [])
            ]
            
            var activitiesSunday: [Activity] = [
            
                Activity(id: 7, title: "Doug Chiang: The Evolution of Star Wars Design - Designing Episode I", name: "Episode I Design Director - and Lucasfilm's VP and Executive Creative Director for Star Wars", description: "Episode I Design Director - and Lucasfilm's VP and Executive Creative Director for Star Wars - Doug Chiang is joining the 20th anniversary celebration of The Phantom Menace with an in-depth look at the film's conceptual designs. Doug will showcase rare artwork with insights into his creative process and share memories of working alongside director George Lucas. Attendees will also have the chance to ask Doug their own questions", stage: Stage.galaxy, track: Track.empire, day: Day.sunday, session: 1, startTime: "1:15 PM", endTime: "2:25 PM", image: "cover 7", location: "map 7", related: []),
                
                Activity(id: 8, title: "Vader Immortal: A Star Wars VR Series", name: "Join ILMxLAB and Oculus for a sneak peek at the first Star Wars story series designed for virtual reality", description: "Join ILMxLAB and Oculus for a sneak peek at the first Star Wars story series designed for virtual reality, Vader Immortal. Learn more about this immersive descent into Darth Vader's fiery Mustafar fortress from the people behind its story, design, and technology.", stage: Stage.twinSuns, track: Track.rebel, day: Day.sunday, session: 2, startTime: "1:30 PM", endTime: "2:30 PM", image: "cover 8", location: "map 8", related: []),
                
                Activity(id: 9, title: "The Galaxy-Wide Premiere of Star Wars Jedi: Fallen Order", name: "Join the head of Respawn Entertainment, Vince Zampella, and Game Director, Stig Asmussen, along", description: "Join the head of Respawn Entertainment, Vince Zampella, and Game Director, Stig Asmussen, along with many special guests, to be the first to learn about this holiday’s highly anticipated action adventure game, Star Wars Jedi: Fallen Order. Hear how Respawn and Lucasfilm collaborated on this original Star Wars story, following a young Padawan’s journey in the Dark Times following Order 66. And of course, we’ll have a few surprises in store.", stage: Stage.celebration, track: Track.empire, day: Day.sunday, session: 3, startTime: "1:30 PM", endTime: "2:30 PM", image: "cover 9", location: "map 9", related: []),
                
                Activity(id: 10, title: "Star Wars: The Clone Wars Sneak Peek- Stream", name: "Dave Filoni and special guests celebrate the return of Star Wars: The Clone Wars", description: "Live on the Celebration Stage; streamed to the Twin Suns Stage Dave Filoni and special guests celebrate the return of Star Wars: The Clone Wars and share a sneak peek at what’s to come.", stage: Stage.twinSuns, track: Track.jedi, day: Day.sunday, session: 4, startTime: "3:30 OM", endTime: "4:30 PM", image: "cover 10", location: "map 10", related: [])
                
            ]
            
            init() {
                
                //Set relateds
                
                for i in 0...activitiesFriday.count-1 {
                    activitiesFriday[i].related = [
                        RelatedActivity.fromActivity(activity: self.activitiesFriday[0]),
                        RelatedActivity.fromActivity(activity: self.activitiesFriday[1]),
                        RelatedActivity.fromActivity(activity: self.activitiesFriday[0])
                    ]
                }
                
                for i in 0...activitiesSaturday.count-1 {
                    activitiesSaturday[i].related = [
                        RelatedActivity.fromActivity(activity: self.activitiesSaturday[0]),
                        RelatedActivity.fromActivity(activity: self.activitiesSaturday[1]),
                        RelatedActivity.fromActivity(activity: self.activitiesSaturday[2])
                    ]
                }
                
                for i in 0...activitiesSunday.count-1 {
                    activitiesSunday[i].related = [
                        RelatedActivity.fromActivity(activity: self.activitiesSunday[0]),
                        RelatedActivity.fromActivity(activity: self.activitiesSunday[1]),
                        RelatedActivity.fromActivity(activity: self.activitiesSunday[2])
                    ]
                }
                
                
            }
            
        }
