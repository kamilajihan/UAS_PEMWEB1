  <footer class="main-footer">
    <strong>Copyright &copy; 2021 <a href="#">PI</a>.</strong>
    All rights reserved. | Repost by <a href='https://stokcoding.com/' title='StokCoding.com' target='_blank'>StokCoding.com</a>
    
    <div class="float-right d-none d-sm-inline-block">
      <b>Tugas</b> PI
    </div>
  </footer>
</div>
<!-- ./wrapper -->

<!-- REQUIRED SCRIPTS -->

<!-- jQuery -->
<script src="../assets/js/be/jquery/jquery.min.js"></script>
<!-- Bootstrap -->
<script src="../assets/js/be/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE -->
<script src="../assets/js/be/adminlte.js"></script>

<script src="../assets/js/be/bs-custom-file-input/bs-custom-file-input.min.js"></script>

<!-- OPTIONAL SCRIPTS -->
<script src="../assets/js/be/chart.js/Chart.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="../assets/js/be/demo.js"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="../assets/js/be/pages/dashboard3.js"></script>
<script>
    $(document).ready(function() {
  $('#summernote').summernote({
    callbacks: {
            onImageUpload: function(files) {
                for(let i=0; i < files.length; i++) {
                    $.upload(files[i]);
                }
            }
        },
    height:200,
    toolbar: [
			["style", ["bold", "italic", "underline", "clear"]],
			["fontname", ["fontname"]],
			["fontsize", ["fontsize"]],
			["color", ["color"]],
			["para", ["ul", "ol", "paragraph"]],
			["height", ["height"]],
			["insert", ["link", "picture", "imageList", "video", "hr"]],
			["help", ["help"]]
		],
		dialogsInBody: true,
		imageList: {
            endpoint: "/template/daftar_gambar.php",
			fullUrlPrefix: "../assets/gambar/",
			thumbUrlPrefix: "../assets/gambar/"
		}
  });

  $.upload = function (file) {
        let out = new FormData();
        out.append('file', file, file.name);

        $.ajax({
            method: 'POST',
            url: '/template/upload_gambar1.php',
            contentType: false,
            cache: false,
            processData: false,
            data: out,
            success: function (img) {
                $('#summernote').summernote('insertImage', img);
            },
            error: function (jqXHR, textStatus, errorThrown) {
                console.error(textStatus + " " + errorThrown);
            }
        });
    };
})
</script>
</body>
</html>