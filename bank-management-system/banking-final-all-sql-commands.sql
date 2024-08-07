create database banking;

use banking;

create table banking.employee(
	
    employee_id int primary key,
	emp_role varchar(40),
    f_name varchar(30),    
    m_name varchar(30),
    l_name varchar(30),
	branch_no int references branch(branch_no)
	-- this is a comment
 
);
create table banking.branch(
	
    branch_no int primary key,
    branch_name varchar(30),    
    location varchar(50)

);



create table banking.customer(

	customer_id int primary key,
    f_name varchar(30),    
    m_name varchar(30),
    l_name varchar(30),
	 credit_score int,
	address varchar(100),
    contact_number bigint


);

ALTER TABLE customer
MODIFY customer_id INT AUTO_INCREMENT;
create table banking.loan(

	loan_no int primary key,
    customer_id int references customer(customer_id) ,    
    amount int not null,
    collateral varchar(30),
	interest float not null,
   time_months int not null


);
create table banking.account(

	account_no int primary key,
    customer_id int references customer(customer_id) ,    
    balance int not null,
    acc_type varchar(30),
	interest_rate float not null
    
);
create table banking.card(

	card_no bigint primary key,
    customer_id int references customer(customer_id) ,    
    acc_no int references account(account_no),
    card_type varchar(30)
    
);
create table banking.transactions(

	transaction_no int primary key,
    acc_from int references account(account_no),
    acc_to int references account(account_no),
    transaction_date date,
    amount int NOT NULL,
    trans_type varchar(40)
    
);


INSERT INTO banking.employee (employee_id, emp_role, f_name, m_name, l_name, branch_no) VALUES
(1, 'Manager', 'John', 'A', 'Doe', 1),
(2, 'Teller', 'Jane', 'B', 'Smith', 2),
(3, 'Loan Officer', 'Robert', 'C', 'Johnson', 1),
(4, 'Accountant', 'Emily', 'D', 'Williams', 2),
(5, 'Manager', 'Michael', 'E', 'Brown', 3),
(6, 'Teller', 'Emma', 'F', 'Jones', 1),
(7, 'Loan Officer', 'William', 'G', 'Miller', 3),
(8, 'Accountant', 'Olivia', 'H', 'Davis', 2),
(9, 'Manager', 'David', 'I', 'Garcia', 2),
(10, 'Teller', 'Sophia', 'J', 'Rodriguez', 1),
(11, 'Manager', 'Karen', 'K', 'Martinez', 4),
(12, 'Teller', 'Daniel', 'L', 'Gonzalez', 5),
(13, 'Loan Officer', 'Nancy', 'M', 'Lee', 2),
(14, 'Accountant', 'Samuel', 'N', 'Hernandez', 3),
(15, 'Manager', 'Linda', 'O', 'Lopez', 1),
(16, 'Teller', 'Steven', 'P', 'Clark', 4),
(17, 'Loan Officer', 'Amanda', 'Q', 'Lewis', 5),
(18, 'Accountant', 'Andrew', 'R', 'Allen', 1),
(19, 'Manager', 'Rachel', 'S', 'Young', 2),
(20, 'Teller', 'Gary', 'T', 'King', 3);

INSERT INTO banking.branch (branch_no, branch_name, location) VALUES
(1, 'Main Branch', 'Houston, TX'),
(2, 'Downtown Branch', 'Dallas, TX'),
(3, 'West Branch', 'Austin, TX'),
(4, 'North Branch', 'San Antonio, TX'),
(5, 'East Branch', 'El Paso, TX');

INSERT INTO banking.customer (customer_id, f_name, m_name, l_name, credit_score, address, contact_number) VALUES
(1, 'Alice', 'M', 'Johnson', 750, '111 Elm St, Houston, TX',  9894561230),
(2, 'Bob', 'N', 'Williams', 700, '222 Oak St, Dallas, TX', 9894561231),
(3, 'Charlie', 'O', 'Brown', 650, '333 Pine St, Austin, TX', 9894561232),
(4, 'Diana', 'P', 'Davis', 600, '444 Maple St, San Antonio, TX', 9894561233),
(5, 'Eva', 'Q', 'Miller', 720, '555 Cedar St, El Paso, TX', 9894561234),
(6, 'Fred', 'E', 'Adams', 690, '333 Elm St, Houston, TX', 7894561230),
(7, 'Gina', 'F', 'Baker', 680, '444 Oak St, Dallas, TX', 7894561231),
(8, 'Henry', 'G', 'Clark', 660, '555 Pine St, Austin, TX', 7894561232),
(9, 'Irene', 'H', 'Davis', 640, '666 Maple St, San Antonio, TX', 7894561233),
(10, 'Jack', 'I', 'Evans', 710, '777 Cedar St, El Paso, TX', 7894561234),
(11, 'Karen', 'J', 'Fisher', 700, '888 Elm St, Houston, TX', 7894561235),
(12, 'Leo', 'K', 'Garcia', 730, '999 Oak St, Dallas, TX', 7894561236),
(13, 'Mia', 'L', 'Harris', 720, '1010 Pine St, Austin, TX', 7894561237),
(14, 'Nate', 'M', 'Irwin', 680, '1111 Maple St, San Antonio, TX', 7894561238),
(15, 'Olivia', 'N', 'Johnson', 650, '1212 Cedar St, El Paso, TX', 7894561239),
(16, 'Paul', 'O', 'Khan', 690, '1313 Elm St, Houston, TX', 8894561240),
(17, 'Quinn', 'P', 'Lewis', 660, '1414 Oak St, Dallas, TX', 8894561241),
(18, 'Rachel', 'Q', 'Martin', 680, '1515 Pine St, Austin, TX', 8894561242),
(19, 'Sam', 'R', 'Nelson', 710, '1616 Maple St, San Antonio, TX', 8894561243),
(20, 'Tina', 'S', 'Owens', 650, '1717 Cedar St, El Paso, TX', 8894561244),
(21, 'Uma', 'T', 'Perez', 700, '1818 Elm St, Houston, TX', 8894561245),
(22, 'Victor', 'U', 'Quinn', 720, '1919 Oak St, Dallas, TX', 8894561246),
(23, 'Wendy', 'V', 'Reed', 670, '2020 Pine St, Austin, TX', 8894561247),
(24, 'Xander', 'W', 'Smith', 680, '2121 Maple St, San Antonio, TX', 8894561248),
(25, 'Yara', 'X', 'Thomas', 660, '2222 Cedar St, El Paso, TX', 8894561249),
(26, 'Zane', 'Y', 'Upton', 690, '2323 Elm St, Houston, TX', 9894561250),
(27, 'Amy', 'Z', 'Vargas', 650, '2424 Oak St, Dallas, TX', 9894561251),
(28, 'Ben', 'A', 'Wagner', 680, '2525 Pine St, Austin, TX', 9894561252),
(29, 'Cara', 'F', 'Xavier', 700, '2626 Maple St, San Antonio, TX', 9894561253),
(30, 'Dean', 'R', 'Young', 710, '2727 Cedar St, El Paso, TX', 9894561254);


INSERT INTO banking.loan (loan_no, customer_id, amount, collateral, interest, time_months) VALUES
(1, 1, 10000, 'Car', 5.0, 60),
(2, 2, 15000, 'House', 4.5, 120),
(3, 3, 8000, 'Jewelry', 6.0, 36),
(4, 4, 12000, 'Boat', 5.5, 72),
(5, 5, 20000, 'Land', 4.0, 84),
(6, 6, 15000, 'Car', 5.2, 60),
(7, 7, 20000, 'House', 4.8, 120),
(8, 8, 10000, 'Jewelry', 6.5, 36),
(9, 9, 13000, 'Boat', 5.7, 72),
(10, 10, 18000, 'Land', 4.2, 84),
(11, 11, 10000, 'Car', 5.0, 60),
(12, 12, 15000, 'House', 4.5, 120),
(13, 13, 8000, 'Jewelry', 6.0, 36),
(14, 14, 12000, 'Boat', 5.5, 72),
(15, 15, 20000, 'Land', 4.0, 84),
(16, 16, 15000, 'Car', 5.2, 60),
(17, 17, 20000, 'House', 4.8, 120),
(18, 18, 10000, 'Jewelry', 6.5, 36),
(19, 19, 13000, 'Boat', 5.7, 72),
(20, 20, 18000, 'Land', 4.2, 84),
(21, 21, 10000, 'Car', 5.0, 60),
(22, 22, 15000, 'House', 4.5, 120),
(23, 23, 8000, 'Jewelry', 6.0, 36),
(24, 24, 12000, 'Boat', 5.5, 72),
(25, 25, 20000, 'Land', 4.0, 84),
(26, 26, 15000, 'Car', 5.2, 60),
(27, 27, 20000, 'House', 4.8, 120),
(28, 28, 10000, 'Jewelry', 6.5, 36),
(29, 29, 13000, 'Boat', 5.7, 72),
(30, 30, 18000, 'Land', 4.2, 84);


INSERT INTO banking.account (account_no, customer_id, balance, acc_type, interest_rate) VALUES
(1, 1, 5000, 'Savings', 1.5),
(2, 2, 10000, 'Checking', 1.0),
(3, 3, 7500, 'Savings', 1.8),
(4, 4, 3000, 'Checking', 0.8),
(5, 5, 15000, 'Savings', 1.7),
(6, 6, 7500, 'Savings', 1.6),
(7, 7, 10000, 'Checking', 1.1),
(8, 8, 5000, 'Savings', 1.9),
(9, 9, 2000, 'Checking', 0.9),
(10, 10, 12000, 'Savings', 1.8),
(11, 11, 7500, 'Savings', 1.6),
(12, 12, 10000, 'Checking', 1.1),
(13, 13, 5000, 'Savings', 1.9),
(14, 14, 2000, 'Checking', 0.9),
(15, 15, 12000, 'Savings', 1.8),
(16, 16, 7500, 'Savings', 1.6),
(17, 17, 10000, 'Checking', 1.1),
(18, 18, 5000, 'Savings', 1.9),
(19, 19, 2000, 'Checking', 0.9),
(20, 20, 12000, 'Savings', 1.8),
(21, 21, 7500, 'Savings', 1.6),
(22, 22, 10000, 'Checking', 1.1),
(23, 23, 5000, 'Savings', 1.9),
(24, 24, 2000, 'Checking', 0.9),
(25, 25, 12000, 'Savings', 1.8),
(26, 26, 7500, 'Savings', 1.6),
(27, 27, 10000, 'Checking', 1.1),
(28, 28, 5000, 'Savings', 1.9),
(29, 29, 2000, 'Checking', 0.9),
(30, 30, 12000, 'Savings', 1.8);

INSERT INTO banking.card (card_no, customer_id, acc_no, card_type) VALUES
(4001001234567890, 1, 1, 'Credit'),
(5022002345678901, 2, 2, 'Debit'),
(6033003456789012, 3, 3, 'Credit'),
(7044004567890123, 4, 4, 'Debit'),
(8055005678901234, 5, 5, 'Credit'),
(9066006789012345, 6, 6, 'Debit'),
(1077007890123456, 7, 7, 'Credit'),
(2088008901234567, 8, 8, 'Debit'),
(3099009012345678, 9, 9, 'Credit'),
(4100000123456789, 10, 10, 'Debit'),
(5111001234567890, 11, 11, 'Credit'),
(6122002345678901, 12, 12, 'Debit'),
(7133003456789012, 13, 13, 'Credit'),
(8144004567890123, 14, 14, 'Debit'),
(9155005678901234, 15, 15, 'Credit'),
(1016600789012345, 16, 16, 'Debit'),
(1117707890123456, 17, 17, 'Credit'),
(1218800801234567, 18, 18, 'Debit'),
(1319900901345678, 19, 19, 'Credit'),
(1400000123456789, 20, 20, 'Debit'),
(1521100234567890, 21, 21, 'Credit'),
(1622200245678901, 22, 22, 'Debit'),
(1723003456789012, 23, 23, 'Credit'),
(1824400456780123, 24, 24, 'Debit'),
(1925500678901234, 25, 25, 'Credit'),
(2026006789012345, 26, 26, 'Debit'),
(2127700789023456, 27, 27, 'Credit'),
(2228800801234567, 28, 28, 'Debit'),
(2329900901345678, 29, 29, 'Credit'),
(2430000123456789, 30, 30, 'Debit');

INSERT INTO banking.transactions (transaction_no, acc_from, acc_to, transaction_date, amount, trans_type) VALUES
(1, 1, 2, '2024-04-01', 100, 'Transfer'),
(2, 3, 3, '2024-04-02', 200, 'Deposit'),
(3, 5, 5, '2024-04-03', 150, 'Withdrawal'),
(4, 2, 3, '2024-04-04', 50, 'Transfer'),
(5, 4, 4, '2024-04-05', 300, 'Deposit'),
(6, 6, 7, '2024-04-06', 150, 'Transfer'),
(7, 8, 8, '2024-04-07', 200, 'Deposit'),
(8, 10, 10, '2024-04-08', 100, 'Withdrawal'),
(9, 7, 8, '2024-04-09', 50, 'Transfer'),
(10, 9, 9, '2024-04-10', 300, 'Deposit'),
(11, 11, 12, '2024-04-11', 150, 'Transfer'),
(12, 14, 14, '2024-04-12', 200, 'Deposit'),
(13, 23, 23, '2024-04-13', 100, 'Withdrawal'),
(14, 12, 24, '2024-04-14', 50, 'Transfer'),
(15, 14, 14, '2024-04-15', 300, 'Deposit'),
(16, 16, 17, '2024-04-16', 150, 'Transfer'),
(17, 18, 18, '2024-04-17', 200, 'Deposit'),
(18, 7, 7, '2024-04-18', 100, 'Withdrawal'),
(19, 17, 18, '2024-04-19', 50, 'Transfer'),
(20, 6, 6, '2024-04-20', 300, 'Deposit'),
(21, 21, 22, '2024-04-21', 150, 'Transfer'),
(22, 24, 24, '2024-04-22', 200, 'Deposit'),
(23, 2, 2, '2024-04-23', 100, 'Withdrawal'),
(24, 22, 5, '2024-04-24', 50, 'Transfer'),
(25, 4, 4, '2024-04-25', 300, 'Deposit'),
(26, 26, 8, '2024-04-26', 150, 'Transfer'),
(27, 28, 28, '2024-04-27', 200, 'Deposit'),
(28, 7, 7, '2024-04-28', 100, 'Withdrawal'),
(29, 27, 28, '2024-04-29', 50, 'Transfer'),
(30, 30, 30, '2024-04-30', 300, 'Deposit');


--  select * from customer


-- Procedures:


DELIMITER //

CREATE PROCEDURE transaction( 
    IN amount INT,
    IN acc_from INT,
    IN acc_to INT
)
BEGIN
    DECLARE sender_balance INT;
    DECLARE receiver_balance INT;
    
    SELECT balance INTO sender_balance
    FROM account
    WHERE account_no = acc_from;
    
    SELECT balance INTO receiver_balance
    FROM account
    WHERE account_no = acc_to;

    IF amount > sender_balance THEN
        SELECT 'Insufficient Balance' AS Result;
    ELSE
        START TRANSACTION;
        
        UPDATE account
        SET balance = balance - amount 
        WHERE account_no = acc_from;

        UPDATE account
        SET balance = balance + amount 
        WHERE account_no = acc_to;

        COMMIT;

        SELECT 'Transaction Complete' AS Result;
    END IF;
    
END;
//

DELIMITER ;
			
-- Call transaction( 1000,1,2);

-- loan Approval

DELIMITER //

CREATE PROCEDURE new_loan(
    IN customer_id INT,
    IN amount INT,
    IN collateral VARCHAR(30),
    IN interest FLOAT,
    IN time_months INT
)
BEGIN
    DECLARE loan_num INT ;
    Select count(*) loan into loan_num
	from loan;
    SET loan_num = loan_num + 1;
    -- Insert into loan table
    INSERT INTO banking.loan (loan_no, customer_id, amount, collateral, interest, time_months) 
    VALUES (loan_num, customer_id, amount, collateral, interest, time_months);
    
    -- Update loan_num
   
    
END;
//

DELIMITER ;

DELIMITER //

CREATE PROCEDURE loan_approval(
    IN credit_score INT,
    IN customer_id INT,    
    IN amount INT,
    IN collateral VARCHAR(30),
    IN interest FLOAT,
    IN time_months INT
)
BEGIN
    IF credit_score >= 700 THEN
        SELECT 'Approved' AS Result;
        CALL new_loan(customer_id, amount, collateral, interest, time_months);
    ELSE
        SELECT 'Declined' AS Result;
    END IF;
END;
//

DELIMITER 


-- CALL loan_approval( 720, 24, 12000, 'Car', 4.5, 36);
-- CALL loan_approval( 530, 13, 24000, 'House', 3.2, 48);

-- DELIMITER //
-- CREATE TRIGGER after_update_loan_repayment
-- AFTER DELETE ON banking.loan
-- FOR EACH ROW
-- BEGIN
--     IF NEW.status = 'Paid' THEN
--         -- Update credit score only if it does not exceed the maximum of 800
--         UPDATE banking.customer
--         SET credit_score = LEAST(credit_score + 5, 800)
--         WHERE customer_id = NEW.customer_id;
--     END IF;
-- END;
-- //
-- DELIMITER ;

DELIMITER //
CREATE TRIGGER before_insert_loan_check_limit
BEFORE INSERT ON banking.loan
FOR EACH ROW
BEGIN
    DECLARE total_loans INT;
    SELECT SUM(amount) INTO total_loans FROM banking.loan WHERE customer_id = NEW.customer_id;
    IF (total_loans + NEW.amount) > 100000 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Loan limit exceeded for customer';
    END IF;
END;
//
DELIMITER ;

DELIMITER //
CREATE TRIGGER monthly_interest_addition
BEFORE UPDATE ON banking.account
FOR EACH ROW
BEGIN
    DECLARE adjusted_interest_rate FLOAT;
    DECLARE customer_credit_score INT;

    -- Retrieve the customer's credit score
    SELECT credit_score INTO customer_credit_score FROM banking.customer WHERE customer_id = NEW.customer_id;

    -- Adjust the interest rate based on the customer score
    IF customer_credit_score >= 750 THEN
        SET adjusted_interest_rate = NEW.interest_rate + 0.5;  -- Higher interest rate for high credit score
    ELSEIF customer_credit_score BETWEEN 650 AND 749 THEN
        SET adjusted_interest_rate = NEW.interest_rate;        -- Normal interest rate
    ELSE
        SET adjusted_interest_rate = NEW.interest_rate - 0.5;  -- Lower interest rate for lower credit score
    END IF;

    -- Calculate the interest based on the adjusted interest rate
    IF NEW.acc_type = 'Savings' THEN
        SET NEW.balance = NEW.balance + (NEW.balance * (adjusted_interest_rate / 100) / 12);
    END IF;
END;
//
DELIMITER ;


DELIMITER //
CREATE TRIGGER auto_create_account
AFTER INSERT ON banking.customer
FOR EACH ROW
BEGIN
    -- Insert a new account for the newly added customer
    INSERT INTO banking.account (account_no, customer_id, balance, acc_type, interest_rate)
    VALUES (NEW.customer_id, NEW.customer_id, 0, 'Checking', 1.0);
END;
//
DELIMITER ;

DELIMITER //

CREATE TRIGGER update_credit_score AFTER INSERT ON transactions
FOR EACH ROW
BEGIN
    DECLARE transaction_amount INT;
    DECLARE sender_credit_score INT;
    DECLARE receiver_credit_score INT;

    -- Get the transaction amount
    SET transaction_amount = NEW.amount;

    -- Get the sender's credit score
    SELECT credit_score INTO sender_credit_score
    FROM customer
    JOIN account ON customer.customer_id = account.customer_id
    WHERE account.account_no = NEW.acc_from
    LIMIT 1;

    -- Get the receiver's credit score
    SELECT credit_score INTO receiver_credit_score
    FROM customer
    JOIN account ON customer.customer_id = account.customer_id
    WHERE account.account_no = NEW.acc_to
    LIMIT 1;

    -- Update sender's credit score
    UPDATE customer
    SET credit_score = GREATEST(0, sender_credit_score - FLOOR(transaction_amount * 0.001)) -- Deduct 0.1% of the transaction amount
    WHERE customer_id = NEW.acc_from;

    -- Update receiver's credit score
    UPDATE customer
    SET credit_score = GREATEST(0, receiver_credit_score + FLOOR(transaction_amount * 0.001)) -- Add 0.1% of the transaction amount
    WHERE customer_id = NEW.acc_to;
END;
//

DELIMITER //

CREATE TRIGGER loan_approval_trigger 
BEFORE INSERT ON loan 
FOR EACH ROW
BEGIN
    DECLARE credit_score INT;

    /* Get the credit score of the applicant from the customer table */
    SELECT credit_score INTO credit_score FROM customer WHERE customer_id = NEW.customer_id;

    /* Check if the credit score is less than 500 */
    IF credit_score < 500 THEN
        /* Raise a signal to indicate loan denial */
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Loan Denied';
    END IF;
END//

DELIMITER ;

DELIMITER ;


DELIMITER ;


DELIMITER ;


DELIMITER ;


DELIMITER ;


DELIMITER ;


DELIMITER ;


DELIMITER ;


DELIMITER ;


DELIMITER ;


DELIMITER ;




DELIMITER //


CREATE PROCEDURE CalculateTotalOwedAfter(
    IN p_loan_term INT  -- This is the number of months for the loan duration we are interested in.
)
BEGIN
    DECLARE v_total_owed DECIMAL(10,2) DEFAULT 0;

    -- Calculate the sum of all loans that have a duration exactly equal to the specified number of months
    SELECT SUM(amount) INTO v_total_owed
    FROM banking.loan
    WHERE time_months > p_loan_term;

    -- Check if there is no value found (NULL), then set to zero
    IF v_total_owed IS NULL THEN
        SET v_total_owed = 0;
    END IF;

    -- Output the total owed
    SELECT CONCAT('Total amount owed for loans with a term of ', p_loan_term, ' months is $', FORMAT(v_total_owed, 2)) AS total_owed;
END;
//
DELIMITER ;

DELIMITER //

CREATE PROCEDURE total_loans_recieved(
    IN p_loan_term INT  -- This is the number of months for the loan duration we are interested in.
)
BEGIN
    DECLARE v_total_owed DECIMAL(10,2) DEFAULT 0;

    -- Calculate the sum of all loans that have a duration exactly equal to the specified number of months
    SELECT SUM(amount) INTO v_total_owed
    FROM banking.loan
    WHERE time_months <= p_loan_term;

    -- Check if there is no value found (NULL), then set to zero
    IF v_total_owed IS NULL THEN
        SET v_total_owed = 0;
    END IF;

    -- Output the total owed
    SELECT CONCAT('Total amount owed for loans with a term of ', p_loan_term, ' months is $', FORMAT(v_total_owed, 2)) AS total_owed;
END;
//
DELIMITER ;


DELIMITER //

CREATE PROCEDURE ListTransactionsBetweenDates(
    IN p_start_date DATE,
    IN p_end_date DATE
)
BEGIN
    -- Selecting transactions between the specified dates
    SELECT transaction_no, acc_from, acc_to, transaction_date, amount, trans_type
    FROM banking.transactions
    WHERE transaction_date BETWEEN p_start_date AND p_end_date
    ORDER BY transaction_date ASC;
END;
//
DELIMITER ;


DELIMITER //

CREATE TRIGGER CheckBankruptcyAfterLoanApproval
AFTER INSERT ON banking.loan
FOR EACH ROW
BEGIN
    DECLARE v_total_owed DECIMAL(20,2);

    -- Calculate the total outstanding loan amount
    SELECT SUM(amount) INTO v_total_owed FROM banking.loan;

    -- Check if total loans exceed 10 million
    IF v_total_owed > 10000000 THEN
        -- Output a message indicating bankruptcy
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Bankrupt: Total outstanding loans exceed $10 million.';
    END IF;
END;
//
DELIMITER ;

DELIMITER //

CREATE TRIGGER before_transaction_insert
BEFORE INSERT ON transactions
FOR EACH ROW
BEGIN
    DECLARE acc_from_balance INT;
    DECLARE acc_from_type VARCHAR(40);

    -- Get the balance and type of the account from which the money is being transferred
    SELECT balance, acc_type INTO acc_from_balance, acc_from_type
    FROM account
    WHERE account_no = NEW.acc_from;

    -- Check if the account type is not 'Savings' and if the balance is sufficient for the transaction
    IF acc_from_type != 'Savings' AND acc_from_balance >= NEW.amount THEN
        -- Allow the transaction to be inserted
        SET NEW.transaction_date = CURDATE();
    ELSE
        -- Prevent the transaction from being inserted
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Insufficient balance or invalid account type';
    END IF;
END;
//

DELIMITER ;

DROP PROCEDURE IF EXISTS CalculateLoanAmount;

DELIMITER //

CREATE PROCEDURE CalculateLoanAmount(
    IN customer_id_in INT,
    OUT total_amount_out FLOAT
)
BEGIN
    DECLARE total_loan_amount FLOAT DEFAULT 0;

    -- Get loan details for the provided customer ID
    SELECT SUM(amount * POW((1 + (interest / 100)), time_months / 12)) INTO total_loan_amount
    FROM banking.loan
    WHERE customer_id = customer_id_in;

    -- Assign total loan amount to output variable
    SET total_amount_out = total_loan_amount;
END //

DELIMITER ;

DELIMITER //
CREATE PROCEDURE GetLast10Transactions (IN account_no INT)
BEGIN
    SELECT * 
    FROM banking.transactions
    WHERE acc_from = account_no OR acc_to = account_no
    ORDER BY transaction_date DESC
    LIMIT 10;
END//

DELIMITER ;
CALL GetLast10Transactions(1);
select * from customer



