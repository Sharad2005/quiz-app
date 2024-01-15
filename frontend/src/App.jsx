import React, { useState, useEffect } from 'react';
import './App.css'
const App = () => {
  const [topics, setTopics] = useState([]);
  const [selectedTopic, setSelectedTopic] = useState('');
  const [questions, setQuestions] = useState([]);
  const [userAnswers, setUserAnswers] = useState([]);

  useEffect(() => {
    // Fetch topics from the backend when the component mounts
    fetch('http://localhost:3000/topics')
      .then((response) => response.json())
      .then((data) => setTopics(data))
      .catch((error) => console.error('Error fetching topics:', error));
  }, []);

  const handleTopicChange = (event) => {
    // Update the selected topic when the user selects a new one
    setSelectedTopic(event.target.value);
  };

  const fetchQuestions = () => {
    // Fetch questions for the selected topic when the user clicks the "Start Quiz" button
    fetch(`http://localhost:3000/questions/${selectedTopic}`)
      .then((response) => response.json())
      .then((data) => setQuestions(data))
      .catch((error) => console.error('Error fetching questions:', error));
  };

  const handleOptionSelect = (questionId, selectedOption) => {
    // Update the user's selected answers
    setUserAnswers((prevAnswers) => [
      ...prevAnswers.filter((answer) => answer.questionId !== questionId),
      { questionId, selectedOption },
    ]);
  };

  const handleQuizSubmit = () => {
    // Submit user answers for verification
    fetch('http://localhost:3000/verify-answers', {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
      },
      body: JSON.stringify(userAnswers),
    })
      .then((response) => response.json())
      .then((data) => {
        // Display the user's score
        alert(`Your Score: ${data.userScore}/${data.totalQuestions}`);
      })
      .catch((error) => console.error('Error verifying answers:', error));
  };

  return (
    <div>
      <h1>Quiz App</h1>
      <label>
        Select Topic:
        <select onChange={handleTopicChange} value={selectedTopic}>
          <option value="" disabled>
            Choose a topic
          </option>
          {topics.map((topic) => (
            <option key={topic.id} value={topic.id}>
              {topic.name}
            </option>
          ))}
        </select>
      </label>
      <button onClick={fetchQuestions} disabled={!selectedTopic}>
        Start Quiz
      </button>
      {questions.map((question) => (
        <div key={question.questionId}>
          <p>{question.questionText}</p>
          <ul>
            {question.options.map((option) => (
              <li key={option.optionId}>
                <label>
                  <input
                    type="radio"
                    name={`question_${question.questionId}`}
                    value={option.optionId}
                    onChange={() => handleOptionSelect(question.questionId, option.optionId)}
                  />
                  {option.text}
                </label>
              </li>
            ))}
          </ul>
        </div>
      ))}
      <button onClick={handleQuizSubmit} disabled={userAnswers.length !== questions.length}>
        Submit Quiz
      </button>
    </div>
  );
};

export default App;
