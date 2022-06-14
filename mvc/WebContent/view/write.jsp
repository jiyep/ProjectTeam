<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

 <!-- include libraries(jQuery, bootstrap) -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
 
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    
    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>                     


<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>



<!-- ===============head include=============== -->
<jsp:include page="headInclude.jsp" flush="true" />

</head>

<body>

	<!-- ===============header include=============== -->
	<jsp:include page="headerInclude.jsp" flush="true" />
	
	<section class="main">
        <!--글쓰기 영역-->
 
        <main role="main" class="container">
            <form name="form" method="POST" action="/bulletin_wr01">
                <div class="pt-1">
                    <input type="text" name="title" placeholder="제목을 입력하세요" style="border-radius:5px; width:100%; padding:5px;">
                </div>

                <br>
                
                음식종류 <input type="text" list="food">
                    <datalist id="food">
                    	<option value="한식">
                    	<option value="일식">
                    	<option value="중식">
                    	<option value="양식">
                    </datalist>

                <div class="pt-1">
                    <textarea id="summernote" name="contents"></textarea>
                </div>
                  
                <script>
                    $('#summernote').summernote({
                      placeholder: '내용을 입력해주세요',
                      tabsize: 2,
                      height: 300
                    });
                  </script>      
                  
                <br>

                <div class="input-group mb-3">
                    <input type="file" class="form-control" id="inputGroupFile02">
                    <label class="input-group-text" for="inputGroupFile02">Upload</label>
                </div>

                <div class="pt-1 text-right">
                    <button  class="btn btn btn-success" type="button" style="width:10%; padding:5px;" onclick="location.href='myRecipe.html' ">등록하기</button>
                </div>    
            </form>
        </main>        

       
    </section>

	<!--=============== footer ===============-->
	<jsp:include page="footerInclude.jsp" flush="true" />


</body>
</html>