const express = require('express');
const oracledb = require('oracledb');

const app = express();
const port = 3000;

// Replace these credentials with your Oracle database credentials
const dbConfig = {
  user: 'your_username',
  password: 'your_password',
  connectString: 'your_connection_string', // e.g., 'localhost:1521/xe' for Oracle XE
};

// Endpoint to get questions based on the selected topic
app.get('/questions/:topicId', async (req, res) => {
  const topicId = req.params.topicId;

  try {
    // Create a connection to the Oracle database
    const connection = await oracledb.getConnection(dbConfig);

    // Query the database to get questions and options for the selected topic
    const result = await connection.execute(
      `SELECT * FROM questions q JOIN question_options o ON q.question_id = o.question_id WHERE q.topic_id = :topicId`,
      [topicId],
      { outFormat: oracledb.OUT_FORMAT_OBJECT }
    );

    // Process the results and send them to the frontend
    const formattedQuestions = result.rows.map((row) => ({
      questionId: row.QUESTION_ID,
      questionText: row.QUESTION_TEXT,
      options: [
        { optionId: row.OPTION_ID_1, text: row.OPTION_TEXT_1 },
        { optionId: row.OPTION_ID_2, text: row.OPTION_TEXT_2 },
        { optionId: row.OPTION_ID_3, text: row.OPTION_TEXT_3 },
        { optionId: row.OPTION_ID_4, text: row.OPTION_TEXT_4 },
      ],
    }));

    res.json(formattedQuestions);
  } catch (err) {
    console.error(err);
    res.status(500).json({ error: 'Internal Server Error' });
  }
});

// Endpoint to verify user answers
app.post('/verify-answers', express.json(), async (req, res) => {
  const userAnswers = req.body;

  try {
    // Create a connection to the Oracle database
    const connection = await oracledb.getConnection(dbConfig);

    // Query the database to get correct answers for the selected questions
    const result = await connection.execute(
      `SELECT QUESTION_ID, CORRECT_OPTION FROM questions WHERE QUESTION_ID IN (${userAnswers
        .map((answer) => answer.questionId)
        .join(',')})`,
      [],
      { outFormat: oracledb.OUT_FORMAT_OBJECT }
    );

    // Process the results and compare with user answers
    const correctAnswers = result.rows.reduce((acc, row) => {
      acc[row.QUESTION_ID] = row.CORRECT_OPTION;
      return acc;
    }, {});

    const userScore = userAnswers.reduce((score, answer) => {
      if (correctAnswers[answer.questionId] === answer.selectedOption) {
        score++;
      }
      return score;
    }, 0);

    res.json({ userScore, totalQuestions: userAnswers.length });
  } catch (err) {
    console.error(err);
    res.status(500).json({ error: 'Internal Server Error' });
  }
});

// Start the server
app.listen(port, () => {
  console.log(`Server is running on port ${port}`);
});
