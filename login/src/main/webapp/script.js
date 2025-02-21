let board = Array(9).fill(null);
let xIsNext = true;
let targetNumber = Math.floor(Math.random() * 100) + 1;

// Tic Tac Toe Game
function makeMove(index) {
    if (board[index] || calculateWinner(board)) return;
    board[index] = xIsNext ? 'X' : 'O';
    xIsNext = !xIsNext;
    render();
}

function calculateWinner(squares) {
    const lines = [
        [0, 1, 2], [3, 4, 5], [6, 7, 8],
        [0, 3, 6], [1, 4, 7], [2, 5, 8],
        [0, 4, 8], [2, 4, 6]
    ];
    for (let i = 0; i < lines.length; i++) {
        const [a, b, c] = lines[i];
        if (squares[a] && squares[a] === squares[b] && squares[a] === squares[c]) {
            return squares[a];
        }
    }
    return null;
}

function render() {
    const cells = document.querySelectorAll('.cell');
    cells.forEach((cell, index) => {
        cell.textContent = board[index];
    });
    const status = document.getElementById('status');
    const winner = calculateWinner(board);
    status.textContent = winner ? `Winner: ${winner}` : `Next player: ${xIsNext ? 'X' : 'O'}`;
}

document.addEventListener('DOMContentLoaded', render);

// Rock Paper Scissors Game
function playRPS(playerChoice) {
    const choices = ['rock', 'paper', 'scissors'];
    const computerChoice = choices[Math.floor(Math.random() * 3)];
    let result = '';

    if (playerChoice === computerChoice) {
        result = 'It\'s a draw!';
    } else if (
        (playerChoice === 'rock' && computerChoice === 'scissors') ||
        (playerChoice === 'paper' && computerChoice === 'rock') ||
        (playerChoice === 'scissors' && computerChoice === 'paper')
    ) {
        result = 'You win!';
    } else {
        result = 'You lose!';
    }

    document.getElementById('rps-result').textContent = `You chose ${playerChoice}, computer chose ${computerChoice}. ${result}`;
}

// Number Guessing Game
function makeGuess() {
    const guessInput = document.getElementById('guess-input');
    const guess = parseInt(guessInput.value, 10);
    let result = '';

    if (isNaN(guess)) {
        result = 'Please enter a valid number.';
    } else if (guess === targetNumber) {
        result = 'Congratulations! You guessed the right number!';
        // Reset the target number after a correct guess
        targetNumber = Math.floor(Math.random() * 100) + 1;
    } else if (guess < targetNumber) {
        result = 'Too low. Try again!';
    } else {
        result = 'Too high. Try again!';
    }

    document.getElementById('guess-result').textContent = result;
    guessInput.value = ''; // Clear the input after a guess
}
