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
    <marquee style="font-size:65px" behavior="scroll" direction="left">Welcome to a Bright Future!</marquee>
    
    
    <style>
        img {
            opacity : 0.5;
        }
        body {
            background-image : url("jobs.jpg");
            background-repeat : no-repeat;
            -webkit-background-size: cover;
            -moz-background-size: cover;
            -o-background-size: cover;
            background-size: cover;
            font-weight : bold;
            font-size : 30px;
        }
        input[type=text] {
        padding:5px; 
        border:2px solid #ccc; 
        -webkit-border-radius: 5px;
        border-radius: 5px;
        }

        input[type=text]:focus {
            border-color:#333;
        }

        input[type=submit] {
            padding:5px 15px; 
            background:#ccc; 
            border:0 none;
            cursor:pointer;
            -webkit-border-radius: 5px;
            border-radius: 5px; 
        }
    </style>
    </head>
    <body>
    
        <h1> Skills matched with the Job Description </h1>
        
        
        <?php
            $sql_query = "select DISTINCT skill_master.skill_title, skill_master.skill_count FROM skill_master INNER JOIN resume_skills on skill_master.skill_id = resume_skills.skill_id INNER JOIN resume_master on resume_master.resume_id = resume_skills.resume_id INNER JOIN user_resume on user_resume.resume_id = resume_master.resume_id INNER JOIN user_master on user_master.user_id = user_resume.user_id;";          
            $result = $conn->query($sql_query);
          
            // var_dump($result)
            $len = $result->num_rows;
            echo "<table border='1'>
            <tr>
            <th> Skills</th>
            <th> Job Count </th>
            </tr>";

            if ($len > 0) {
                while($row = $result->fetch_assoc()) {
                    
                    echo "<tr>";
                    echo "<td>" .$row["skill_title"]. "</td>";
                    echo "<td>" .$row["skill_count"]. "</td>";
                    echo "</tr>";
                   
                }
            }
                echo "</table>";
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
