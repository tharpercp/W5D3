require 'sqlite3'
require 'singleton'


class QuestionsDataBase < SQLite3::Database
    include Singleton

    def initialize
        super('questions.rb')
        self.type_translation = true
        self.results_as_hash = true
    end 
end

class Questions

    def self.all
        data = QuestionsDatabase.instance.execute("SELECT * FROM questions")
        data.map { |datum| Questions.new(datum) }
    end

    def self.find_by_id(id)
        Question = QuestionsDataBase.instance.execute(<<-SQL, id)
          SELECT
            *
          FROM
            questions
          WHERE
            id = ?
        SQL
        return nil unless play.length > 0
    
        Question.new(question.first)
      end
    




