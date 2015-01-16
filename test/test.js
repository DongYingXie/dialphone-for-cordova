 <script >
          document.addEventListener("deviceready", onDeviceReady, false);

        function onDeviceReady() {
          DialphonePlugin.dialphone(
            function(result) {
             // alert("success: " + result);
            },
            function(error) {
              //alert("error: " + error);
            }, "18212341234"
          );
        } </script>
