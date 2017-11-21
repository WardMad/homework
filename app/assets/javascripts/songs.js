function toggleDone() {
  var checkbox = this;
  var tableRow = $(this).parent().parent();



function updateCounters() {
  $("#total-count").html($(".song").size());
  $("#created-count").html($(".success").size());
  $("#song-count").html($(".song").size() - $(".success").size());
}

function createSong(name) {
  var newSong = { name: name, created: true};
  var path = window.location.pathname
  var songId = tableRow.data('id');
  var isCreated = !tableRow.hasClass("success");

  $.ajax({
    type: "POST",
    url: path + "songs.json",
    data: JSON.stringify({
    song: { created: isCreated }
    }),
    contentType: "application/json",
    dataType: "json"})

    .done(function(data) {
      console.log(data);

      tableRow.toggleClass("success", data.created);
});
}


  // $.ajax({
  //   type: "POST",
  //   // add something to path
  //   url: "/songs.json",
  //   data: JSON.stringify({
  //     song: newSong
  //   }),
  //   contentType: "application/json",
  //   dataType: "json"
  // })
  // .done(function(data) {
  //   console.log(data);
  //
  //   var checkboxId = data.id;
    //
    // var label = $('<label></label>')
    //
    //   .html(song);
    //
    // var checkbox = $('<input type="checkbox" value="1" />')
    //   .attr('id', checkboxId)
    //   .bind('change', toggleDone);
    //
    // var tableRow = $('<tr class="song"></td>')
    //   .attr('data-id', checkboxId)
    //   .append($('<td>').append(checkbox))
    //   .append($('<td>').append(label));
    //
    // $("#songList").append(tableRow);
    //
    // updateCounters();



  function showError(message) {
    var errorHelpBlock = $('<span class="help-block"></span>')
      .attr('id', 'error_message')
      .text(message);

    $("#formgroup-song")
      .addClass("has-error")
      .append(errorHelpBlock);
  }



function resetErrors() {
  $("#error_message").remove();
  $("#formgroup-song").removeClass("has-error");
}

function submitSong(event) {
  event.preventDefault();
  resetErrors();

  createSong($("#song_song").val());
  $("#song_song").val(null);

}

// function cleanUpDoneSongs(event) {
//   event.preventDefault();
//
//   $.each($(".success"), function(index, tableRow) {
//     songId = $(tableRow).data('id');
//     deleteSong(songId);
//   });
// }

$(document).ready(function() {
  // $("input[type=checkbox]").bind('change', toggleDone);
  $("form").bind('submit', submitSong);
  // $("#clean-up").bind('click', cleanUpDoneSongs);
  // updateCounters();
});


function deleteSong(songId) {
  $.ajax({
    type: "DELETE",
    url: path  + songId + "songs.json",
    contentType: "application/json",
    dataType: "json"
  }),
  .done(function(data) {
    $('tr[data-id="'+songId+'"]').remove();

 });
 }
