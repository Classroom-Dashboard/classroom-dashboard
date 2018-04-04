$(function (){
    Dropzone.autoDiscover = false;


    $("#my-dropzone").dropzone({
        maxFilesize: 2,
        addRemoveLinks: true, //shows remove links in image thumbnail
        paramName: 'upload[image]',
        success: function(file, response){
            $(file.previewElement).find('.dz-remove').attr('id', response.uploadId);
            $(file.previewElement).addClass('dz-success');
        },

        // removes file from server upon removelink click
        removedfile: function(file){
            var id = $(file.previewTemplate).find('.dz-remove').attr('id');
            $.ajax({
                type: 'DELETE',
                url: "/uploads/" + id,
                success: function(data){
                    console.log(data.message);
                }
              });
            var previewElement;
            return (previewElement = file.previewElement) != null ? (previewElement.parentNode.removeChild(file.previewElement)) : (void 0);
        },
    });
//         init: function() {
//             var me = this;
//
//             $.get("<% Rails.application.routes.url.helpers.list_students_path %>", function(data){
//                 $.each(data.images, function(key, value){
//                     if(data.images != undefined && data.images.length > 0){
//                         me.emit("addedfile", value);
//                         me.emit("thumbnail", value, value.src);
//                         me.emit("complete",value);
//
//                         $(value._removeLink).attr("id", value.id);
//                     }
//                 });
//             });
//         }
//
//     });
 });
