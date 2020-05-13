<!-- Pricing section -->
    <div class="space-md" id="pricing">
        <div class="container">
           
            <div class="row">
              

<?php
 $i=1;   

function printResultSet(&$rowset, $i)
{  
  $key=0; 
    foreach ($rowset as $row) 
    {   
         $count=1;
        echo "<div class=\"col-md-4\">  
                    <div class=\"card pricing-v3 p-md-5 p-sm-3 text-center\">
                        <div class=\"v3-row\">";

                         //<a href=\"plandetail.php?id=".$key."\">

       foreach ($row as $col) 
       {    
            if($count==1)
            {
                echo "<p class=\"mb-3\">".$col."</p>";
                $count++;
                continue;
            }
            if($count==2)
            {
                echo "<h3 class=\"display-3 font-weight-bold\">Rs. ".$col."</h3></div>"; 
                $count++;
            // echo "<a class=\"btn btn-outline-primary\" href=\"#\">Start Free Trial</a>";
                continue;
            }
            if($count==3)
            {
                if(isset($_SESSION['email']))
                {
                echo "<a class=\"btn btn-outline-primary\" href=\"planinfo.php?id=".$col."\">Sell</a>";
                // echo "<a class=\"btn btn-outline-primary\" href=\"planinfo.php?id=".$col."\">Details</a>";
                }
                if(!isset($_SESSION['email']))
                {
                echo "<a class=\"btn btn-outline-primary\" href=\"login/index.php\">Sell</a>";  
                }
                $count++;
                //$key=$col;
                continue;
            }
            if($count==4)
            {
                echo "<div class=\"mt-4\"><p class=\"\">".$col."</p></div></div></div>";
                continue;
            }
       }
       //echo "</a>";
    
    }
}

try
{
  //  $i=0;
    require("connection.php");
    $sql="SELECT name,cost,id,description from plans where status=1";
    $stmt = $pdo->query($sql); 

    do
    {
        $rowset = $stmt->fetchAll(PDO::FETCH_NUM);
        
        if ($rowset) 
        {
        printResultSet($rowset, $i);
        //echo $i;
        }
        $i++;

    }
    while ($stmt->nextRowset());

}   
catch(Exception $e)
{
    echo $e;
}
?>



            </div>
        </div>
    </div>