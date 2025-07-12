//
//  QuizSampleData.swift
//  AiQuizPuzzle
//
//  Created by Roman Tverdokhleb on 08/07/2025.
//

extension Quiz {
    static internal var sampleData: Quiz {
        Quiz(
            name: "Space Exploration",
            description: "Test your knowledge about the wonders of space exploration. This quiz covers iconic astronauts, historic missions, celestial objects, and facts about our universe. Great for anyone curious about outer space!",
            difficulty: .normal,
            questions: QuizQuestion.sampleData,
            timer: 120
        )
    }
}

extension QuizQuestion {
    internal static var sampleData: [QuizQuestion] {
        let first = QuizQuestion(
            format: "Answer the question",
            question: "Who was the first person to walk on the Moon?",
            title: "First Moonwalker",
            options: [
                QuizOption(name: "Neil Armstrong", isCorrect: true),
                QuizOption(name: "Buzz Aldrin", isCorrect: false),
                QuizOption(name: "Yuri Gagarin", isCorrect: false)
            ],
            price: 20,
            hint: "Apollo 11",
            explanation: "Neil Armstrong walked on the Moon in 1969 during Apollo 11.")

        let second = QuizQuestion(
            format: "Choose a synonym",
            question: "Which word is a synonym for 'astronaut'?",
            title: "Astronaut Synonym",
            options: [
                QuizOption(name: "Cosmonaut", isCorrect: true),
                QuizOption(name: "Biologist", isCorrect: false),
                QuizOption(name: "Geologist", isCorrect: false)
            ],
            price: 15,
            hint: "Russian term",
            explanation: "'Cosmonaut' is the Russian word for astronaut.")

        let third = QuizQuestion(
            format: "Fill in the blank",
            question: "The first artificial satellite was called ____.",
            title: "First Satellite",
            options: [
                QuizOption(name: "Sputnik 1", isCorrect: true),
                QuizOption(name: "Voyager 1", isCorrect: false),
                QuizOption(name: "Apollo 13", isCorrect: false)
            ],
            price: 18,
            hint: "Launched by USSR",
            explanation: "Sputnik 1 was launched by the Soviet Union in 1957.")

        let fourth = QuizQuestion(
            format: "Select the definition",
            question: "What is a 'comet'?",
            title: "Comet Definition",
            options: [
                QuizOption(name: "A celestial object made of ice and dust", isCorrect: true),
                QuizOption(name: "A large planet", isCorrect: false),
                QuizOption(name: "A kind of star", isCorrect: false)
            ],
            price: 18,
            hint: "Tail in the sky",
            explanation: "Comets are icy objects that develop tails when near the Sun.")

        let fifth = QuizQuestion(
            format: "Complete the sentence",
            question: "Mars is often called the ______ planet.",
            title: "Mars Nickname",
            options: [
                QuizOption(name: "Red", isCorrect: true),
                QuizOption(name: "Blue", isCorrect: false),
                QuizOption(name: "Green", isCorrect: false)
            ],
            price: 15,
            hint: "Color of Mars",
            explanation: "Mars is called the Red Planet due to its appearance.")

        return [first, second, third, fourth, fifth]
    }
}
