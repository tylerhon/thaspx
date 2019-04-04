<!------------------------------------------------------------------------------
  Modification Log
  Date          Name            Description
  ----------    -------------   -----------------------------------------------
  2-14-2019      THon      Initial Deployment.
  ----------------------------------------------------------------------------->
<?php
     function getEmployees(){
        $db = Database::getDB();
        $query = 'SELECT * FROM employee
                  ORDER BY employeeID';
        $statement = $db->prepare($query);
        $statement->execute();
        $employees = $statement;

        return $employees;
        }
?>
