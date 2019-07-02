<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
                        <script>
                        var today = new Date(new Date().getFullYear(), new Date().getMonth(), new Date().getDate());
                        $('#startDate').datepicker({
                            uiLibrary: 'bootstrap4',
                            iconsLibrary: 'fontawesome',
                            format:"dd-mm-yyyy",
                            minDate: today,
                            maxDate: function () {
                                return $('#endDate').val();
                            }
                        });
                        $('#manPrefStartDate').datepicker({
                            uiLibrary: 'bootstrap4',
                            iconsLibrary: 'fontawesome',
                            format:"dd-mm-yyyy",
                            minDate: today,
                            maxDate: function () {
                                return $('#endDate').val();
                            }
                        });
                        $('#endDate').datepicker({
                            uiLibrary: 'bootstrap4',
                            iconsLibrary: 'fontawesome',
                            format:"dd-mm-yyyy",
                            minDate: function () {
                                return $('#startDate').val();
                            }
                        });
                        $('#manPrefEndDate').datepicker({
                            uiLibrary: 'bootstrap4',
                            iconsLibrary: 'fontawesome',
                            format:"dd-mm-yyyy",
                            minDate: function () {
                                return $('#startDate').val();
                            }
                        });
                        </script>
</body>

</html>