<?php


try{
$conn = new PDO("mysql:host=localhost;dbname=id17405903_mpbsgzb", 'id17405903_indiampbs', 'M8734.8734ss');
$conn ->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    } catch (PDOException $exc){

} catch(PDOException $e) {
  echo "Connection failed: " . $e->getMessage();
}
?>