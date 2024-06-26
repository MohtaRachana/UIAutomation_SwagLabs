Feature: Handle JavaScript alert

Scenario: Accept alert if present
    * def isAlertPresent = function() { 
      try {
        var alert = driver.switchTo().alert();
        alert.accept();
        return true;
      } catch (e) {
        return false;
      }
    }
    * eval isAlertPresent()
