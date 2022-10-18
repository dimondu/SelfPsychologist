//
//  ToolModel.swift
//  SelfPsychologist
//
//  Created by Дмитрий Дуров on 18.10.2022.
//

import Foundation

class Tool {
    let name: String
    let description: String
    
    init(name: String, description: String) {
        self.name = name
        self.description = description
    }
    
    //TODO: ВРЕМЕННОЕ РЕШЕНИЕ НА ПЕРИОД РАЗРАБОТКИ ОСНОВНЫХ РАЗДЕЛОВ
    
    static func getTools() -> [Tool] {
        let tools = [
            Tool(name: "В чем проблема?", description: "Узнайте с чем вам нужно работать в первую очередь"),
            Tool(name: "Решить проблему", description: "Инструмент решения проблемы, запускайте, когда знаете с чем работать"),
            Tool(name: "Энергия", description: "Зарядитесь энергией, если прямо сейчас вам нужен прилив бодрости"),
            Tool(name: "Медитации", description: "Хотите расслабиться и дать своему организму отдохнуть? Тогда вам сюда"),
            Tool(name: "Цель", description: "Поставь свою цель правильно и преодолей препятствия на пути к ней"),
            Tool(name: "Психолог", description: "Нужен психолог? Он здесь!")
        ]
        
        return tools
    }
}
