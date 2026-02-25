-- teams
INSERT INTO teams (name, description, created_at)
VALUES
  ('Engineering', 'Core development team', NOW()),
  ('Product', 'Product and UX team', NOW());

-- employees
INSERT INTO employees (first_name, last_name, email, is_active, created_at)
VALUES
  ('John', 'Doe', 'john.doe@example.com', true, NOW()),
  ('Jane', 'Smith', 'jane.smith@example.com', true, NOW());

-- employee_team_assignments
INSERT INTO employee_team_assignments (employee_id, team_id, start_date, created_at)
VALUES
  (1, 1, '2023-01-01', NOW()),
  (2, 2, '2023-02-01', NOW());

-- salary_history
INSERT INTO salary_history (employee_id, amount, currency, effective_date, created_at)
VALUES
  (1, 5000.00, 'USD', '2023-01-01', NOW()),
  (2, 4800.00, 'USD', '2023-02-01', NOW());