// Function to add a transaction
document.getElementById('transaction-form').addEventListener('submit', function(e) {
    e.preventDefault();
    
    const description = document.getElementById('description').value;
    const amount = parseFloat(document.getElementById('amount').value);
    const type = document.getElementById('type').value;

    const data = {
        description: description,
        amount: amount,
        type: type
    };

    fetch('http://localhost:8080/add_transaction', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify(data)
    })
    .then(response => response.text())
    .then(data => alert(data))
    .catch(error => console.error('Error:', error));
});
