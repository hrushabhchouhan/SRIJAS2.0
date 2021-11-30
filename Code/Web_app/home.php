<?php
include "config.php";

// Check user login or not
if(!isset($_SESSION['uname'])){
    header('Location: index.php');
}

// logout
if(isset($_POST['but_logout'])){
    session_destroy();
    header('Location: index.php');
}
?>
<!doctype html>
<html>
    <head>
    <div  style="background-image: url('jobs.jpg') ;">
    <p style="font-size:50px">Welcome to Bright Future .</p>
    
        
    </head>
    
    <style>

</style>
    <body>
    
        <h1> Skills matched with the Job Description </h1>
        
        <?php
            $sql_query = "select DISTINCT skill_master.skill_title, skill_master.skill_count FROM skill_master INNER JOIN resume_skills on skill_master.skill_id = resume_skills.skill_id INNER JOIN resume_master on resume_master.resume_id = resume_skills.resume_id INNER JOIN user_resume on user_resume.resume_id = resume_master.resume_id INNER JOIN user_master on user_master.user_id = user_resume.user_id;";
            #$sql_query = "select skill_count from skill_master where skill_count > 150;";
            $result = $conn->query($sql_query);
          
            // var_dump($result)
            $len = $result->num_rows;
            if ($len > 0) {
                while($row = $result->fetch_assoc()) {
                    
                   echo $row["skill_title"]; 
                  
                    echo " : ";
                   echo $row["skill_count"]; 
                    echo "<br>";
                   
                }
                echo "<br>";
            }

            echo "<br>";


        ?>
        <form method='post' action="" >
            <input  type="submit" value="Logout" name="but_logout">
        </form>

        <form method='post' action="">
            <input type="submit" value="Upload New Resume" name="new">
        </form>
    </body>
</html>
