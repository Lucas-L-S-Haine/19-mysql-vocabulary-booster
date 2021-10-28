DELIMITER $$
CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(employeeEmail VARCHAR(25))
RETURNS INT READS SQL DATA
BEGIN
    DECLARE jobs INT;
    SELECT
        COUNT(JH.JOB_ID) AS 'total_empregos'
        FROM employees AS E
        JOIN job_history AS JH
        ON E.EMPLOYEE_ID = JH.EMPLOYEE_ID
        WHERE E.EMAIL = employeeEmail
        INTO jobs;
    RETURN jobs;
END $$
DELIMITER ;
